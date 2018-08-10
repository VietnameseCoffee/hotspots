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
    <div className="search_bar">
      <form onSubmit={() => console.log("searchin..")}>

        <div className="search-business">
          <label id="business">Find</label>
          <input
            placeholder="burgers, bars, burritos..."
            htmlFor="business"></input>
        </div>

        <div className="search-location">
          <label id="location">Near</label>
          <input
            placeholder="San Francisco"
            htmlFor="location"></input>
        </div>

        <button><i className="fa fa-search"></i></button>
      </form>
    </div>
    );
  }
}

export default SearchBar;
