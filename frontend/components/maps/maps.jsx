import React from 'react';
import { Link } from 'react-router-dom';

class Map extends React.Component {

  constructor (props) {
    super(props);

    this.state = {};
  }

  render () {
    return (
      <div id="review-map-container" ref="map">

      </div>
    );
  }
}
