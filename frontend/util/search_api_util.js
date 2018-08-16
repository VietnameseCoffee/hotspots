export const showSearch = (search) => (
  $.ajax({
    type: 'GET',
    url: `/api/search/`,
    data: { search }
  })
);
