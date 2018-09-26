import React from 'react';
import { Link } from 'react-router-dom';

const Footer = (props) => {

  return (
    <div className="footer">

      <div className="footer-column">
        <h3> About the Developer </h3>
        <div><i class="fa fa-linkedin"></i><a href="https://www.linkedin.com/in/ou-kevin/">LinkedIn</a></div>
          <div><i class="fa fa-github"></i><a href="https://github.com/VietnameseCoffee">GitHub</a></div>
          <div><i class="fa fa-github"></i><a href="https://github.com/VietnameseCoffee/hotspots">Project Link</a></div>
      </div>

      <div className="footer-column">
        <h3> Other Projects </h3>
          <div><a href="https://vietnamesecoffee.github.io/copters/">Copters</a></div>
          <div><a href="https://roamy.herokuapp.com/#/">Roamy</a></div>
      </div>

    </div>
  )
}

export default Footer;
