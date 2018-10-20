import React from 'react';

import BusinessIndexItem from '../businesses/business_index_item';

class SearchResultList extends React.Component {

  constructor (props) {
    super(props)

    this.state = { loading: false }
  }

  componentDidMount () {
    // debugger
    // if (this.props.history.location.pathname.split("/")[2] !== this.props.match.params.query) {
    // }
    this.props.requestSearch({name: this.props.match.params.query});
  }


  render () {
    let businesses = this.props.businesses;
    let photos = this.props.photos;
    let requestBusiness = this.props.requestBusiness;
    let requestSearch = this.props.requestSearch;
    let searchContent;


    if (this.state.loading) {

    } else if (businesses.length === 0) {
      searchContent = (
        <div className="no-results">
          <div>
            No Results Were Found :(
          </div>
          <div>
            Please check for typos and use at least 3 characters
          </div>
        </div>
      )
    } else if {
      searchContent = businesses.map ((biz, i) => {
        return (
          <BusinessIndexItem
          key={biz.id}
          biz={biz}
          index={i + 1}
          requestSearch={requestSearch}
          photo={photos[biz.photoIds[0]]}
          />)
        })

    }


    return (
      <div className="search-main">
        <h2>Search Results</h2>

        <div className="search-list">
          <ul>
          {searchContent}
          </ul>
        </div>

        <div className="search-aside">
          <div className="search-maps">

          </div>
        </div>

      </div>
    );
  }
};

export default SearchResultList;
