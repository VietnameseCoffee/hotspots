
export const postBusiness = (business) => {
  return $.ajax({
    type: 'POST',
    url: '/api/businesses',
    data: { business }
  });
};

export const showBusiness = (name) => (
  $.ajax({
    type: 'GET',
    url: `/api/businesses/${name}`,
    data: { business: { name }}
  })
);

export const indexBusinesses = (search) => (
  $.ajax({
    type: 'GET',
    url: `/api/businesses`,
    data: { search }
  })
);
