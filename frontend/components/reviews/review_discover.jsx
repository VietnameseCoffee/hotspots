import React from 'react';

import SplashSpotItem from '../splash/splash_spot_item';

class ReviewDiscover extends React.Component {

  componentDidMount () {
    this.props.requestBusinesses();
  }


  render () {

    let businesses = this.props.businesses.map(
      (biz) => <SplashSpotItem
        key={biz.id}
        biz={biz}
        photo={this.props.photos[biz.photoIds[0]]}
        requestBusiness={this.props.requestBusiness}/>);

    return (
      <div className="review-discover-main-container">
        <div className="gray">
          <div className="gray-content">

            <h2>Your Next Review Awaits</h2>
            <p>Discover all the cool places you want to try out and write a review!</p>
          </div>
        </div>
        <div className="review-discover-parts-container">

          <h2>Been to These Businesses?</h2>
          <div className="hot-spots-grid">
            {businesses}
          </div>
        </div>


      </div>
    );
  }
};

export default ReviewDiscover;
