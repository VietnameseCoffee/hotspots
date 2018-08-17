import React from 'react';

import BusinessIndexItem from '../businesses/business_index_item';

const SearchResultList = ({businesses}) => {
  debugger
  return (
    <div className="search-list">
      <ul>
        <div>hi</div>
        {businesses.map ((biz, i) => {
          return (
          <BusinessIndexItem
            key={biz.id}
            biz={biz}
          />)
        })}
      </ul>
    </div>
  );
};

export default SearchResultList;
