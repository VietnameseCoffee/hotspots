export const round = (stars) => {
  return (Math.round(stars * 2) / 2 ).toString().split(".").join("-");
}
