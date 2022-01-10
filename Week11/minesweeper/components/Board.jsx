import React from 'react';
import Tile from './Tile';

class Board extends React.Component {
  constructor(props) {
    super(props);
    this.addRows = this.addRows.bind(this);
    this.addTiles = this.addTiles.bind(this);
  }

  addRows() {
    const board = this.props.board;
    return board.grid.map((row, i) => {
      return (
        <div key={i} className="row">

        </div>
      );
    })
  }

  addTiles() {
    
  }
}

export default Board;
