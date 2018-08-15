import React from 'react';
import { Link } from 'react-router-dom';

class ReviewForm extends React.Component {

  constructor (props) {
    super(props);

    this.state = {
      text: '',
      stars: 0,
      user_id: props.userId,
      business_id: props.businessId,
      post_date: this.props.getDate() //boo cant work on handlesubmit
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  handleSubmit (e) {
    e.preventDefault();

    this.props.action(this.state);
  }


  render () {
    let business = this.props.business;
    if (!business) {
      this.props.requestBusiness(this.props.businessId);
      return <div className="loading">Loading review Page :)</div>;
    }

    return (
      <div className="">
        <h2><Link to={`/businesses/${business.id}`}>{business.name}</Link></h2>
        <form onSubmit={this.handleSubmit}>

          <div className="stars">
            <input
              className="input-field"
              placeholder="stars"
              type='text'
              onChange={this.update('stars')}
              value={this.state.stars}></input>
          </div>

          <div>
            <textarea
              placeholder="Write your review inside here!"
              type='text'
              onChange={this.update('text')}
              value={this.state.text}></textarea>
          </div>

          <div>
            <button className='button'>Post Review</button>
          </div>

        </form>
      </div>
    );
  }
}


export default ReviewForm;
