// Сховати та показати додаткові опції калькулятора
$('#panelContent').hide();
$('.detailed_params_trans').hide();
let detailed_params_trans = false;  //детальний прорахунок  транспортера якщо false то ре детальний

// Toggle the panel visibility when the button is clicked
$('#toggleButton').click(function() {
  $('#panelContent').toggle();
});

// buton_1 length_trans
$('#Button_params_trans').click(function() {
  $('.symple_params_trans').toggle();
  $('.detailed_params_trans').toggle();
  detailed_params_trans = !detailed_params_trans; //детальний прорахунок  транспортера вкл/викл
});
