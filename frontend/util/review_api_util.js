
export const postReview = (review) => {
  return $.ajax({
    type: 'POST',
    url: '/api/reviews',
    data: { review }
  });
};

export const patchReview = (review) => (
  $.ajax({
    type: 'PATCH',
    url: `/api/reviews/${id}`,
    data: { review: { review }}
  })
);

export const deleteReview = (id) => (
  $.ajax({
    type: 'DELETE',
    url: `/api/reviews/${id}`,
    data: { id }
  })
);

// let a = {business_id: 1,
// user_id: 2,
// stars: 4,
// text: "The salads here are really good, nice selection right down Sansome.",
// post_date: "08/10/2018"}
