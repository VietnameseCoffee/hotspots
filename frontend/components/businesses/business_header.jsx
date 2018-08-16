import React from 'react';
import { Link, Route } from 'react-router-dom';

const BusinessHeader = ({name, price, tags, id}) => {
  let price_str = "";
  let anchorTags;

  while (price_str.length < price) {price_str = price_str.concat("$")};
  anchorTags = tags.map((tag) => <Link key={tag}to={`/`}>{tag}</Link>)

  return (
    <div className="biz-header-container">
      <div className="biz-header-left">
        <h1>{name}</h1>

        <div className="stars">
          <div className="stars-big-4"></div><span>Num Ratings</span>
        </div>

        <div className="tags-price">
          <span>{price_str}</span>
          <span>{anchorTags}</span>
        </div>

      </div>

      <div className="biz-header-right">

        <div className="biz-header-actions">
          <Link className="write-a-review" to={`/writeareview/${id}`}><i class="fa fa-star"></i>Write a Review</Link>
          <Link className="biz-action" to="/">Add Photo</Link>
          <Link className="biz-action" to="/">Share</Link>
          <Link className="biz-action" to="/">Save</Link>

        </div>


      </div>
    </div>
  );


};

export default BusinessHeader;
