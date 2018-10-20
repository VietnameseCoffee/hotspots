import React from 'react';
import {withRouter, Link} from 'react-router-dom'
import * as starUtil from '../../util/round_stars_util'

class BusinessIndexItem extends React.Component {


  constructor (props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.clickTag = this.clickTag.bind(this);
  }

  handleClick (e, id) {
    e.preventDefault;
    this.props.history.push(`/businesses/${id}`)
  }

  clickTag (e, tag) {
    e.preventDefault;
    this.props.requestSearch({name: tag});
  }

  render () {
    let biz = this.props.biz;
    let photo = this.props.photo;
    let tags = biz.categories;
    let price = this.props.biz.price;
    let index = this.props.index;
    let numReviews = this.props.biz.numReviews;
    let price_str = "";
    let anchorTags;
    while (price_str.length < price) {price_str = price_str.concat("$")};
    anchorTags = tags.map((tag, i) => <a key ={i} onClick={(e) => this.clickTag(e, tag)}>{tag}</a>)

    let photoUrl = photo ? photo.photoUrl : "https://s3-us-west-1.amazonaws.com/hot-spots-dev/default_biz.jpg";
    return (
      <li className="biz-index-item">
        <div className="biz-side" >
          <div className="image-container">
            <img onClick={(e) => this.handleClick(e, this.props.biz.id)} src={photoUrl}></img>
          </div>
        </div>

        <div className="biz-body" >

          <div className="biz-main-info">

            <div className="biz-details">
              <div className="link-h3"><span>{index}.</span><span onClick={(e) => this.handleClick(e, this.props.biz.id)}>{biz.name}</span> </div>
              <div><span className={`stars-mid-${starUtil.round(biz.stars)}`}></span>&nbsp;{numReviews} reviews</div>
              <div><span>{price_str}</span><span>{anchorTags}</span></div>
            </div>

            <div className="biz-address">
              <div>{biz.phoneNumber}</div>
              <div>{biz.address}</div>
              <div><span>{biz.city},</span><span>{biz.state}</span></div>
            </div>

          </div>
        </div>
      </li>
    );
  }
};

export default withRouter(BusinessIndexItem);
