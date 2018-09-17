import React from 'react';

import BusinessIndexItem from '../businesses/business_index_item';

class SearchResultList extends React.Component {

  constructor (props) {
    super(props)
  }

  componentDidMount () {
    this.props.requestSearch({name: this.props.match.params.query});
  }


  render () {
    let businesses = this.props.businesses;
    let requestBusiness = this.props.requestBusiness;
    let requestSearch = this.props.requestSearch;

    if (businesses) {
      // return (
      //   <div>Search result turned up nothing please try again</div>
      // )
    }

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
              requestBusiness={requestBusiness}
              requestSearch={requestSearch}
              />)
            })}
            </ul>
        </div>
      </div>
    );
  }
};

export default SearchResultList;
