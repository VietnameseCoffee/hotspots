import React from 'react';
import {withRouter, Link} from 'react-router-dom'

import * as starUtil from '../../util/round_stars_util'


class SplashSpotItem extends React.Component {

  constructor (props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick (e, id) {
    e.preventDefault;
    this.props.requestBusiness(id).then(() => this.props.history.push(`/businesses/${id}`));
  }

  render () {
    let biz = this.props.biz;
    let price_str = "";
    let anchorTags;

    while (price_str.length < biz.price) {price_str = price_str.concat("$")};

    return (
      <div className="splash-biz-item">
        <div className="splash-biz-top" >
          <div className="image-container">
            <div></div>
          </div>
        </div>

        <div className="splash-biz-body" >

          <div className="splash-biz-main-info">
            <div className="link-h3"><span onClick={(e) => this.handleClick(e, this.props.biz.id)}>{biz.name}</span> </div>
            <div>
              <span className={`stars-mid-${starUtil.round(biz.stars)}`}></span>
              <span>{biz.numReviews} reviews</span>
            </div>
            <div><span>{price_str}</span><span>{anchorTags}</span></div>
            <div><span>{biz.city},</span><span>{biz.state}</span></div>
          </div>
        </div>
      </div>
    )
  }
}



export default SplashSpotItem;
