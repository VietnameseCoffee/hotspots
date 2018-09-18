import React from 'react';
import ReactDOM from 'react-dom';

class Map extends React.Component {

  constructor (props) {
    super(props);

    this.state = {};
  }

  componentDidMount () {
    const lat = this.props.lat;
    const lng = this.props.lng;
    const pos = new google.maps.LatLng(lat, lng);
    const map = ReactDOM.findDOMNode(this.refs.map);
    const mapOptions = {
      center: { lat, lng },
      zoom: 15,
      disableDefaultUI: true
    };
    this.map = new google.maps.Map(map, mapOptions);


    const marker = new google.maps.Marker({
      position: pos,
      map: this.map,
      }
    );
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
