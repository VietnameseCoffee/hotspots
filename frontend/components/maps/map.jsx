import React from 'react';
import ReactDOM from 'react-dom';
import { Link } from 'react-router-dom';

class Map extends React.Component {

  constructor (props) {
    super(props);

    this.state = {};
  }

  componentDidMount () {
    const mapOptions = {
      center: { lat: this.props.lat, lng: this.props.lng }, // this is SF
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
