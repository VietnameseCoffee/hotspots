
export const postUser = (user) => {
  console.log('hu');
  return $.ajax({
    type: 'POST',
    url: '/api/users',
    data: { user }
  });
};

export const postSession = (user) => (
  $.ajax({
    type: 'POST',
    url: '/api/session',
    data: { user }
  })
);

export const deleteSession = () => (
  $.ajax({
    type: 'DELETE',
    url: '/api/session',
  })
);
