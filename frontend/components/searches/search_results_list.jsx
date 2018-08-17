import React from 'react';

import BusinessIndexItem from '../businesses/business_index_item';

const SearchResultList = ({businesses, requestBusiness}) => {
  return (
    <div className="search-main">
      <h2>Search Results</h2>
      <div className="search-list">
        <ul>
        {businesses.map ((biz, i) => {
          return (
            <BusinessIndexItem
            key={biz.id}
            biz={biz}
            index={i + 1}
            requestAction={requestBusiness}
            />)
          })}
          </ul>
      </div>
    </div>
  );
};

export default SearchResultList;
