import React from 'react';

class ReviewForm extends React.Component {

  constructor (props) {
    super(props);

    this.state = { text: '', ratings: 0 };
  }

  update (value) {
    return (e) => this.setState({[value]: e.target.value});
  }

  // handleSubmit (e) {
  //   e.preventDefault();
  //   this.props.action(this.state);
  // }


  render () {
    return (
      <div className="">
      <h2>BUSINESS NAME LINK</h2>
      <form >

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
