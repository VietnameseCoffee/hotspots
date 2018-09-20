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

    if (this.state.user_id) {
      this.props.action(this.state)
        .then(() => this.props.history.push(`/businesses/${this.state.business_id}`));
      } else {
        this.props.history.push(`/signup`);
      }

  }


  render () {
    let textareaPlaceholder = "Type your review in here! Help other people find the hottest spots around!";
    let starText = ["", "No bueno!", "Could have more heat", "Meets my needs", "This place is great!", "🔥 Hot! 🔥"];
    let business = this.props.business;
    if (!business) {
      this.props.requestBusiness(this.props.businessId);
      return <div className="loading">Loading review Page :)</div>;
    }

    return (
      <div className="review-form-container">
        <h2><Link to={`/businesses/${business.id}`}>{business.name}</Link></h2>
        <form onSubmit={this.handleSubmit}>
          <div className="review-inputs">
            <div className="stars">
              <ul className={`stars-big-${this.state.stars}`}>
                <input value={1} onClick={this.update('stars')}></input>
                <input value={2} onClick={this.update('stars')}></input>
                <input value={3} onClick={this.update('stars')}></input>
                <input value={4} onClick={this.update('stars')}></input>
                <input value={5} onClick={this.update('stars')}></input>
              </ul>
              <span>{starText[this.state.stars]}</span>
            </div>

            <div>
              <textarea
                placeholder={textareaPlaceholder}
                type='text'
                onChange={this.update('text')}
                value={this.state.text}></textarea>
            </div>
          </div>

          <div>
            <button className='button'>Post Review</button>
          </div>

        </form>
        <div className="errors">
          {this.props.errors.join(", ")}
        </div>
      </div>
    );
  }
}


export default ReviewForm;
