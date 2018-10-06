import React from 'react';


class Modal extends React.Component {

  constructor(props) {
    super(props)
  }

  componentDidMount () {
    const modalShadow = document.querySelector(".modal-shadow");
    const modal = document.querySelector(".modal");
    if (modalShadow && modal) {
      modalShadow.addEventListener("click", () => {
        modal.classList.remove("opened")
      })
    }
  }

  render() {

    return (
      <div className="modal">
        <div className="modal-image-container">
          image
          <img id="modal-image"></img>
        </div>
        <div className="modal-shadow">
        </div>
      </div>

    )
  }

}
export default Modal;
