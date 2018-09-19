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
    this.props.requestBusiness(id).then(
      () => {this.props.history.push(`/businesses/${id}`)
      document.body.scrollTop = document.documentElement.scrollTop = 0;});
  }
  // scrollTop help from stackoverflow

  render () {
    let biz = this.props.biz;
    let price_str = "";
    let anchorTags;
    let photo = this.props.photo;
    let photoUrl = photo ? photo.photoUrl : "https://s3-us-west-1.amazonaws.com/hot-spots-dev/default_biz.jpg";
    while (price_str.length < biz.price) {price_str = price_str.concat("$")};
    
    return (
      <div className="splash-biz-item">
        <div className="splash-biz-top" >
          <div className="image-container">
            <img src={photoUrl}></img>
          </div>
        </div>

        <div className="splash-biz-body" >

          <div className="splash-biz-main-info">
            <div className="link-h3"><span onClick={(e) => this.handleClick(e, this.props.biz.id)}>{biz.name}</span></div>
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



export default withRouter(SplashSpotItem);
