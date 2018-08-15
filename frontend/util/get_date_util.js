const getDate = function () {
  let date = new Date(Date.now());
  var day = date.getDate();
  var monthIndex = date.getMonth();
  var year = date.getFullYear();

  return monthIndex + '/' + day + '/' + year;
};

export default getDate;

// https://stackoverflow.com/questions/3552461/how-to-format-a-javascript-date
// code inspired from here, significantly modified
