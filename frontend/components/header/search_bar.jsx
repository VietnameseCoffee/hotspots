import React from 'react';
import { withRouter } from 'react-router';

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

    let search = this.state.name ? this.state.name : "no+results"

    debugger
    this.props.search(this.state).then(() => this.props.history.push(`/searches/${search}`));
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
            placeholder="Location search soon!"
            htmlFor="location"
            value={this.state.place}
            onChange={this.update('location')}></input>
        </div>

        <button><i className="fa fa-search"></i></button>
      </form>
    </div>
    );
  }
}

export default withRouter(SearchBar);
