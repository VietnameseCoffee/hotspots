import React from 'react';
import classNames from 'classnames';
import ReactDOM from 'react-dom';

class BusinessImages extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount() {
    // ReactDOM.findDOMNode(this).addEventListener('onMouseOut')
  }

  componentWillUnmount() {

  }

  render () {
    const photos = this.props.photoUrls.slice(0, 3).map((url, i) => {
      let classes = classNames({
        [`biz-show-img-${i}`]: true,
        'biz-img-default': i === 1
      });
      return (
        <div key ={url.photoUrl} className={classes}>
          <img src={url.photoUrl}></img>
        </div>
      )}
    );

    return (
      <div className="biz-images-container">
        <div className="biz-images">
          {photos}
        </div>
      </div>
    );
  }
}

export default BusinessImages;
