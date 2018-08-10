import React from 'react';

class SearchBar extends React.Component {

  constructor (props) {
    super(props);
    this.state = {
      business: "",
      location: "",
    };
  }

  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.props.action(this.state);
  }

  render ()  {

    return (
    <div className="search_bar">Search Bar
      <form onSubmit={() => console.log("searchin..")}>
        <span className="search-business">
          <label id="business">Find</label>
          <input for="business"></input>
        </span>
        <span className="search-location">
          <label id="location">Near</label>
          <input for="location"></input>
        </span>
        <button><i class="fa fa-search"></i></button>
      </form>
    </div>
    );
  }
}

export default SearchBar;
