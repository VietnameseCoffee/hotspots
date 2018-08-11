
export const postBusiness = (business) => {
  return $.ajax({
    type: 'POST',
    url: '/api/businesses',
    data: { business }
  });
};

export const showBusiness = (id) => (
  $.ajax({
    type: 'GET',
    url: `/api/businesses/${id}`,
    data: { business: { id }}
  })
);

export const indexBusinesses = (search) => (
  $.ajax({
    type: 'GET',
    url: `/api/businesses`,
    data: { search }
  })
);
