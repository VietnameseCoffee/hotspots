import React from 'react';
import ReactDOM from 'react-dom'
import { Link } from 'react-router-dom';

class Map extends React.Component {

  constructor (props) {
    super(props);

    this.state = {};
  }

  componentDidMount () {
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 }, // this is SF
      zoom: 15
    };
    const map = ReactDOM.findDOMNode(this.refs.map);
    this.map = new google.maps.Map(map, mapOptions);
  }

  render () {
    return (
      <div
        id="review-map-container"
        ref="map">
      </div>
    );
  }
}

export default Map;
