// document.write('<script src="pdv.js"></script>');
const pd = require('./pdv.js'); //conection for node

function calk_sp_sh(d_out, d_inner, p, s, price_metal = 55, koof = [5, 6]) {
  const pi = Math.PI;

  let h_shrtrips = (d_out - d_inner) / 2;
  let length_in_line_sp_on_m = Math.sqrt(
    (pi * d_inner) * (pi * d_inner) + p * p
  );

  let leangth_shtrips_on_m = length_in_line_sp_on_m * (1000 / p) * 1.3;

  let weight_one_m_spital = (s * h_shrtrips * leangth_shtrips_on_m * 0.00786) / 1000;

  return [
    pd.pdv(weight_one_m_spital * price_metal * 1.1 * koof[0]),
    pd.pdv(weight_one_m_spital * price_metal * 1.1 * koof[1]) 
  ];
}

const result = calk_sp_sh(75, 27, 75, 3);
console.log(result); // This will print the result to the console
  
