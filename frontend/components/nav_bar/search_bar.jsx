import React from 'react';

class SearchBar extends React.Component {

  constructor (props) {
    super(props);
    this.state = props.formUser;

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  // refactor for better efficiency
  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  handleSubmit () {
    // console.log('hello')
    return (e) => {
      e.preventDefault();
    };
  }

  render () {
    return (
      <div className='login-wrapper'>
        <form className='login-form' onSubmit={this.handleSubmit}>
          <input placeholder="Email" type='text' onChange={this.update('email')} value={this.state.email}></input>
          <input placeholder="Password"type='password' onChange={this.update('password')} value={this.state.password}></input>
          <button>Search</button>
        </form>
      </div>
    );
  }
}

export default SearchBar;
