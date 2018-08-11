
export const postBusiness = (business) => {
  return $.ajax({
    type: 'POST',
    url: '/api/businesses',
    data: { business }
  });
};

export const showBusiness = (name) => (
  $.ajax({
    type: 'POST',
    url: `/api/business/${name}`,
    data: { business: name }
  })
);
