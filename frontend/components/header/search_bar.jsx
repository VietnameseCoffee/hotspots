import React from 'react';

class SearchBar extends React.Component {

  constructor (props) {
    super(props);
    this.state = {
      name: "",
      place: "",
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.props.search(this.state).then(() => this.props.history.push('/'));
  }

  render ()  {

    return (
    <div className="search_bar">
      <form onSubmit={this.handleSubmit}>

        <div className="search-business">
          <label id="business">Find</label>
          <input
            placeholder="burgers, bars, burritos..."
            htmlFor="business"
            value={this.state.name}
            onChange={this.update('name')}></input>
        </div>

        <div className="search-location">
          <label id="location">Near</label>
          <input
            placeholder="San Francisco"
            htmlFor="location"
            value={this.state.location}
            onChange={this.update('location')}></input>
        </div>

        <button><i className="fa fa-search"></i></button>
      </form>
    </div>
    );
  }
}

export default SearchBar;
