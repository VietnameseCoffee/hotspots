import React from 'react';
import classNames from 'classnames';
import ReactDOM from 'react-dom';

class BusinessImages extends React.Component {

  constructor(props) {
    super(props)

    this.growImage = this.growImage.bind(this);
    this.shrinkImage = this.shrinkImage.bind(this);
  }

  growImage() {
    middle.classList.add('biz-img-default')
  }

  shrinkImage() {
    middle.classList.remove('biz-img-default')
  }

  componentDidMount() {
    const imageContainer = document.querySelector('.biz-images')
    const middle = document.querySelector('.biz-show-img-1')

    if (middle) {
      imageContainer.addEventListener('mouseleave', () => {
        middle.classList.add('biz-img-default')
      })
      imageContainer.addEventListener('mouseenter', () => {
        middle.classList.remove('biz-img-default')
      })
    }
  }

  componentWillUnmount() {
    const imageContainer = document.querySelector('.biz-images')
    const middle = document.querySelector('.biz-show-img-1')

    if (middle) {
      imageContainer.removeEventListener('mouseleave', () => {
        middle.classList.add('biz-img-default')
      })
      imageContainer.removeEventListener('mouseenter', () => {
        middle.classList.remove('biz-img-default')
      })
    }
  }

  render () {
    const photos = this.props.photos.slice(0, 3).map((pic, i) => {
      let classes = classNames({
        [`biz-show-img-${i}`]: true,
        'biz-img-default': i === 1
      });
      return (
        <div key ={pic.photoUrl} className={classes}>
          <img src={pic.photoUrl}></img>
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
