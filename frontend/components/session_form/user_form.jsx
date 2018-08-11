import React from 'react';
import Dropdown from 'react-dropdown';

class UserForm extends React.Component {

  constructor (props) {
    super(props);
    this.state = props.formUser;

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentWillMount () {
    this.props.removeSessionErrors();
  }

  // refactor for better efficiency
  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  handleSubmit (e) {
    e.preventDefault();
    this.props.action(this.state).then(() => this.props.history.push('/'));
  }

  render () {
    let namesInput, zipInput, birthdayInput, errors;
    let header2 = 'Log In to Hot Spots';
    if (this.props.formType === 'Sign Up') {
      namesInput = this.namesRender();
      zipInput = this.zipRender();
      birthdayInput = this.birthdayRender();
      header2 = 'Sign Up for Hot Spots';
    }
    if (this.props.errors.length > 0) { errors = "Invalid entry, please try again";}

    return (
      <div className='super-container'>
        <div className='main-session-container'>

          <div className='form-wrapper'>
            <div className='form-header'>
              <h2>{header2}</h2>
            </div>
            <form className='user-form' onSubmit={this.handleSubmit}>
              {namesInput}
              <div>
                <input className="input-field" placeholder="Email" type='text' onChange={this.update('email')} value={this.state.email}></input>
              </div>
              <div>
                <input className="input-field" placeholder="Password" type='password' onChange={this.update('password')} value={this.state.password}></input>
              </div>
              <div>
                {zipInput}
                {birthdayInput}
                <button className='button'>{this.props.formType}</button>
              </div>
              <div className="errors">
                {errors}
              </div>
            </form>
          </div>
        </div>

        <div className="main-side-container">
          <div className="session_image"></div>
        </div>
      </div>
    );
  }






  // helper methods

  namesRender() {
    return (
    <div className="input-names">
      <input className="input-field" placeholder="First Name" type='text' onChange={this.update('first_name')}></input>
      <input className="input-field" placeholder="Last Name" type='text' onChange={this.update('last_name')}></input>
    </div>
    );
  }

  zipRender() {
    return (
      <div>
        <input className="input-field" placeholder="ZIP Code" type='text' onChange={this.update('zip')}></input>
      </div>
    );
  }

  birthdayRender() {
    // debugger
    const days = this.daysOptions();
    const years = this.yearOptions();
    const months = this.monthOptions();
    return (
      <div className='user-form-dropdown'>
        <div>
          <select>
            {months}
          </select>
        </div>
        <div>
          <select>
            {days}
          </select>
        </div>
        <div>
          <select>
            {years}
          </select>
        </div>
      </div>
    );
  }

  monthOptions() {
    const months = ["Month", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep",
     "Oct", "Nov", "Dec"];
    return months.map( (month) => this.createOptions(month));
  }

  daysOptions() {
    const result = [this.createOptions('Day')] ;
    for (let i = 1; i < 32; i++) {
      result.push(this.createOptions(i));
    }
    return result;
  }

  yearOptions() {
    const result = [this.createOptions('Year')];
    for (let i = 2018; i > 1900; i--) {
      result.push(this.createOptions(i));
    }
    return result;
  }

  createOptions(i) {
    return (<option key={i} value="{i}">{i}</option>);
  }
}

export default UserForm;
