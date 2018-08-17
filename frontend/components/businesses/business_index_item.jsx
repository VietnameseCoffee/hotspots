import React from 'react';
import {withRouter, Link} from 'react-router-dom'
import * as starUtil from '../../util/round_stars_util'

class ReviewIndexItem extends React.Component {


  constructor (props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
    this.clickTag = this.clickTag.bind(this);
  }

  handleClick (e, id) {
    e.preventDefault;
    this.props.requestAction(id).then(() => this.props.history.push(`/businesses/${id}`));
  }

  clicktag (e, tag) {


  }

  render () {
    let biz = this.props.biz;
    let tags = biz.categories
    let price = this.props.biz.price
    let index = this.props.index;
    let price_str = "";
    let anchorTags;
    
    while (price_str.length < price) {price_str = price_str.concat("$")};
    anchorTags = tags.map((tag) => <a href="/">{tag}</a>)
    return (
      <li className="biz-index-item">
        <div className="biz-side" >
          <div className="image-container">
            <div>image lin khur</div>
          </div>
        </div>

        <div className="biz-body" >

          <div className="biz-main-info">

            <div className="biz-details">
              <div className="link-h3"><span>{index}.</span><span onClick={(e) => this.handleClick(e, this.props.biz.id)}>{biz.name}</span> </div>
              <div><span className={`stars-mid-${starUtil.round(biz.stars)}`}></span> </div>
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

export default withRouter(ReviewIndexItem);
