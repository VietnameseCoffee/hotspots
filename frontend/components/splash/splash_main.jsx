import React from 'react';

import SplashSpotItem from './splash_spot_item';

class SplashMain extends React.Component {

  componentDidMount () {
    this.props.requestBusinesses();
  }


  render () {

    let businesses = this.props.businesses.map(
      (biz) => <SplashSpotItem
        key={biz.id}
        biz={biz}
        requestBusiness={this.props.requestBusiness}/>);

    return (
      <div className="splash-main-container">
        <div className="splash-parts-container">
          <h2>Hot Spots to Check out!</h2>
          <div className="hot-spots-grid">
            {businesses}
          </div>
        </div>


      </div>
    );
  }
};

export default SplashMain;
