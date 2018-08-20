import React from 'react';


class SplashMain extends React.Component {

  constructor (props) {
    super(props)
  }

  componentDidMount () {
    this.props.requestBusinesses();
  }


  render () {

    debugger
    return (
      <div className="splash-main-container">
        <div className="hot-spots-container">
          <h2>Hot Spots to Check out!</h2>


        </div>


      </div>
    );
  }
};

export default SplashMain;
