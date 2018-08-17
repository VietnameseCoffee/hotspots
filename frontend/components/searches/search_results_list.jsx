import React from 'react';

import BusinessIndexItem from '../businesses/business_index_item';

class SearchResultList extends React.Component {

  constructor (props) {
    super(props)
  }


  render () {
    let businesses = this.props.businesses;
    let requestBusiness = this.props.requestBusiness;
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
  }
};

export default SearchResultList;
