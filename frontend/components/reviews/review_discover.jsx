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
      <div className="splash-main-container">
        <div className="splash-parts-container">
          <h2>Been to These Businesses? <br></br> Your Next Review Awaits!</h2>
          <div className="hot-spots-grid">
            {businesses}
          </div>
        </div>


      </div>
    );
  }
};

export default ReviewDiscover;
