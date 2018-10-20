import React from 'react';
import { Link, Route, withRouter } from 'react-router-dom';

import * as starUtil from '../../util/round_stars_util'

const BusinessHeader = ({name, price, tags, id, stars, requestSearch, history, numReviews}) => {
  let price_str = "";
  let anchorTags;

  const clickTag = (e, tag) =>{
    history.push(`/searches/${tag}`)
  };

  while (price_str.length < price) {price_str = price_str.concat("$")};
  anchorTags = tags.map((tag) => <a key={tag}onClick={(e) => clickTag(e, tag)}>{tag}</a>);

  return (
    <div className="biz-header-container">
      <div className="biz-header-left">
        <h1>{name}</h1>

        <div className="stars">
          <div className={`stars-big-${starUtil.round(stars)}`}></div><span>{numReviews} reviews</span>
        </div>

        <div className="tags-price">
          <span>{price_str}</span>
          <span>{anchorTags}</span>
        </div>

      </div>

      <div className="biz-header-right">

        <div className="biz-header-actions">
          <Link className="write-a-review" to={`/writeareview/${id}`}><i className="fa fa-star"></i>Write a Review</Link>
          <Link className="biz-action" to="#">Add Photo</Link>
          <Link className="biz-action" to="#">Share</Link>
          <Link className="biz-action" to="#">Save</Link>

        </div>


      </div>
    </div>
  );
};

const clickTag1 = (e, tag) =>{
  e.preventDefault;
  this.props.requestSearch({name: tag});
};

// const rounded = (stars) => {
//   return (Math.round(stars * 2) / 2 ).toString().split(".").join("-");
// }
// super simple algorithm blew mah mind
// https://stackoverflow.com/questions/19390644/round-number-to-nearest-5-decimal


export default withRouter(BusinessHeader);
