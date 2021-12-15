// PART 1: CALLBACKS

Array.prototype.myEach = (callback) => {
  for (let i = 0; i < this.length ; i++) {
    callback(this[i]);
  }
};

Array.prototype.myMap = function (callback) {
  let mappedArr = []

  this.myEach((ele) => mappedArr.push(callback(ele)));

  return mappedArr
}

function titleize(arr, callback) {
  let newArr = arr.map((ele) => `Mx ${ele} Jingleheimer Schmidt`);
  callback(newArr);
};

// titleize(['Charlie', 'Amy', 'Dan'], (names) => {
//   names.forEach(name => console.log(name));
// });


// PART 2

function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = () => {
  console.log(`${this.name} goes 'phrRRRRRRRRRRR!!!!!!!'`);
}

Elephant.prototype.grow = () => {
  this.height += 12;
}

Elephant.prototype.addTrick = (trick) => {
  this.tricks.push(trick);
}

Elephant.prototype.play = function () {
  const trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}`);
}

const newElephant = new Elephant('Charlie', 45, ['Playing tenis', 'Digging a hole', 'Doing a hand stand']);

newElephant.play();