function pdv(num, kop = 0) {

  let resault;

  if (kop == 0) {
    resault = Math.round(num / 3) * 3;
    
  } else {
    resault = Math.round(num * Math.pow(10, kop) / 3) / Math.pow(10, kop) * 3;
  }

  return resault

};

module.exports = {
  pdv,
};

