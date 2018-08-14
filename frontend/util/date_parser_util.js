const formatDate = function (date) {

  var day = date.getDate();
  var monthIndex = date.getMonth();
  var year = date.getFullYear();

  return monthIndex + '/' + day + '/' + year;
};

export default formatDate;

// https://stackoverflow.com/questions/3552461/how-to-format-a-javascript-date
// initial code written here, but significantly modified
