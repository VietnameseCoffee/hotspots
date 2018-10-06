export const openModal = function(url) {
  const modal = document.querySelector(".modal");
  const modalImage = document.getElementById("modal-image");

  if (modal && modalImage) {
    modal.classList.add("opened")
    modalImage.src=url
  }
}
