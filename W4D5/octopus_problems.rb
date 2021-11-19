fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1
    mid = self.length / 2

    left = self.take(mid).merge_sort(&prc)
    right = self.drop(mid).merge_sort(&prc)

    Array.merge(left, right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left).concat(right)
  end
end

def dominate_octopus(fishes)
  prc = Proc.new { |x, y| x.length <=> y.length }

  fishes.merge_sort(&prc).last
end

def clever_octopus(fishes)
  longest = fishes[0]

  fishes.each do |fish|
    longest = fish if fish.length > longest.length
  end

  longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up" ]

def slow_dance(direction, array)
  array.each_with_index do |ele, i|
    return i if ele == direction
  end
end

new_tiles = {
  "up" => 0,
  "right-up" => 1,
  "right" => 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}

def constant_dance(direction, tile_hash)
  tile_hash[direction]
end


