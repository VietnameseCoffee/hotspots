import React from 'react';
import {withRouter} from 'react-router-dom'

class ReviewIndexItem extends React.Component {


  constructor (props) {
    super(props);

    this.handleClick = this.handleClick.bind(this);
  }

  handleClick (e, id) {
    e.preventDefault;

    this.props.requestAction(id).then(() => this.props.history.push(`/businesses/${id}`));
  }

  render () {
    let biz = this.props.biz;
    let index = this.props.index;

    return (
      <li className="biz-index-item">
        <div className="biz-side-bar" >
          <div className="image-container">
            <div>image lin khur</div>
          </div>
        </div>

        <div className="biz-body" >
          <div className="biz-main-info">
            <div className="biz-info">
              <div><span>{index}.</span><span onClick={(e) => this.handleClick(e, this.props.biz.id)}>{biz.name}</span> </div>
              <div><span className={`stars-mid-${biz.stars}`}></span> </div>
              <div><span>{biz.price}</span><span>tags</span></div>
            </div>

            <div className="biz-extras">
              <div>{biz.phoneNumber}</div>
              <div>{biz.address}</div>
            </div>
          </div>
        </div>
      </li>
    );
  }
};

export default withRouter(ReviewIndexItem);
