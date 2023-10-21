document.write('<script src="buton.js"></script>');

// ініціалізація змінних
let l_trans 
let params_trans
let engine_params 

let working_angle
let weight_product
let pi = 3.1415926535





let price_sh_transporter
let production_sh_transporter

let chek_chose_radio 


let equal_engene_redukt_for_params = [
  [102,1,1.1],
  [102,2,1.1],
  [102,3,1.5],
  [102,4,1.5],
  [102,5,1.5],
  [102,6,1.5],
  [102,7,2.2],
  [102,8,2.2],
  [102,9,2.2],
  [102,10," Невідомо "],
  [102,11," Невідомо "],
  [102,12," Невідомо "],
  [102,13," Невідомо "],
  [102,14," Невідомо "],
  [102,15," Невідомо "],
  [102,16," Невідомо "],
  [102,17," Невідомо "],
  [102,18," Невідомо "],
  [102,19," Невідомо "],
  [102,20," Невідомо "],

  [127,1,1.5],
  [127,2,1.5],
  [127,3,1.5],
  [127,4,1.5],
  [127,5,2.2],
  [127,6,2.2],
  [127,7,2.2],
  [127,8,2.2],
  [127,9,3],
  [127,10,3],
  [127,11," Невідомо "],
  [127,12," Невідомо "],
  [127,13," Невідомо "],
  [127,14," Невідомо "],
  [127,15," Невідомо "],
  [127,16," Невідомо "],
  [127,17," Невідомо "],
  [127,18," Невідомо "],
  [127,19," Невідомо "],
  [127,20," Невідомо "],
  
  [159,1,2.2],
  [159,2,2.2],
  [159,3,2.2],
  [159,4,2.2],
  [159,5,3],
  [159,6,3],
  [159,7,3],
  [159,8,3],
  [159,9,4],
  [159,10,4],
  [159,11,4],
  [159,12,4],
  [159,13," Невідомо "],
  [159,14," Невідомо "],
  [159,15," Невідомо "],
  [159,16," Невідомо "],
  [159,17," Невідомо "],
  [159,18," Невідомо "],
  [159,19," Невідомо "],
  [159,20," Невідомо "],
  
  [219,1,3],
  [219,2,3],
  [219,3,3],
  [219,4,3],
  [219,5,4],
  [219,6,4],
  [219,7,4],
  [219,8,4],
  [219,9,4],
  [219,10,4],
  [219,11,5.5],
  [219,12,5.5],
  [219,13," Невідомо "],
  [219,14," Невідомо "],
  [219,15," Невідомо "],
  [219,16," Невідомо "],
  [219,17," Невідомо "],
  [219,18," Невідомо "],
  [219,19," Невідомо "],
  [219,20," Невідомо "],
  
  
  [250,1,2.2],
  [250,2,2.2],
  [250,3,2.2],
  [250,4,2.2],
  [250,5,3],
  [250,6,3],
  [250,7,4],
  [250,8,4],
  [250,11,4],
  [250,10,4],
  [250,11,5.5],
  [250,12,5.5],
  [250,13," Невідомо "],
  [250,14," Невідомо "],
  [250,15," Невідомо "],
  [250,16," Невідомо "],
  [250,17," Невідомо "],
  [250,18," Невідомо "],
  [250,19," Невідомо "],
  [250,20," Невідомо "],
  
  [300,1,3],
  [300,2,3],
  [300,3,4],
  [300,4,4],
  [300,5,4],
  [300,6,4],
  [300,7,5.5],
  [300,8,5.5],
  [300,9,5.5],
  [300,10,5.5],
  [300,11,7.5],
  [300,12,7.5],
  [300,13," Невідомо "],
  [300,14," Невідомо "],
  [300,15," Невідомо "],
  [300,16," Невідомо "],
  [300,17," Невідомо "],
  [300,18," Невідомо "],
  [300,19," Невідомо "],
  [300,20," Невідомо "],
]

init_varible_value()




// let stala_price = [false, 0,"Ціна за метр ("+params_trans[3]+") * на дорж транс ("+l_trans+") та + 10% = "+(params_trans[3]*l_trans*1.1)]
// let price_navisn  = [false, 0,"Ціна навісного = "+  params_trans[1]]
// let price_enge = [false, 0,"Ціна за метр "+ engine_params[2]]
// let price_shkiv_pidsh = [false, 4500,"Ціна шкіків та підшипніків = "+ price_shkiv_pidsh[1] ]
// let price_pidstavka = [false,4000,"Ціна підcтавки = "+ price_pidstavka[1]]
// let price_bunker = [false,2000,"Ціна бункера = "+ price_pidstavka[1]]
// let price_krot = [false,(params_trans[3]*0.5),"Ціна крот = "+ price_bunker[1]]
// let price_zholob = [false,,"Ціна жолоба = "+ price_sh_transporter*0.1] 



chose_kvt()

// перша перевірка радіобатона на вибір двигуна
chek_chose_radio = $("#exampleRadios2").prop("checked");

// клік евент 
$( "#calck_price" ).click(function() {
    init_varible_value() 
    prace_vue();
    chose_kvt();
  });


$( "#calck_production" ).click(function() {
  init_varible_value() 
  // calck_production()
});






// при зміні вибору мотор редуктора
$( ".form-check-input_engyne" ).change(function() {
  chek_chose_radio = $("#exampleRadios2").prop("checked");
  build_select_engin();
  clean_prace();
});




// надання значень змінним
function init_varible_value() {
  l_trans = $('#length_trans option:selected').val()
  params_trans = $('#params_trans option:selected').val().split(',');
  engine_params = $('#engine_params option:selected').val().split(',');

  working_angle = $('#working_angle').val().split(',')*1;
  weight_product = $('#weight_product').val().split(',')*1;

}  


function chose_kvt(){
  
  equal_engene_redukt_for_params.forEach(element => {
    if(params_trans [0]==element[0] && l_trans==element[1]){
      
      $(".need_engyne").html( "" + element[2]+ " кВт.");
     
    }
  
  });

  if($(".need_engyne").text().includes("Невідомо")){
    $(".need_engyne").html( '');
  }


  
}



// заміна селекта з двигунами
function build_select_engin() {
  if(chek_chose_radio == false){
    $("#engine_params").html(
      '<option selected value="0,0,0">Без двигуна</option>'+
      '<option value="1500,1.1,4208">Мотор 1.1 кВт. 1500 об./хв.</option>'+
      '<option value="1500,1.5,4656">Мотор 1.5 кВт. 1500 об./хв.</option>'+
      '<option value="1500,2.2,7082">Мотор 2.2 кВт. 1500 об./хв.</option>'+
      '<option value="1500,3.0,6306">Мотор 3.0 кВт. 1500 об./хв.</option>'+
      '<option value="1500,4.0,8197">Мотор 4.0 кВт. 1500 об./хв.</option>'+
      '<option value="1500,5.5,11411">Мотор 5.5 кВт. 1500 об./хв.</option>'+
      '<option value="1500,7.5,14847">Мотор 7.5 кВт. 1500 об./хв.</option>'+
      '<option value="1500,11.0,18388">Мотор 11.0 кВт. 1500 об./хв.</option>'+
      '<option value="1000,1.1,4871">Мотор 1.1 кВт. 1000 об./хв.</option>'+
      '<option value="1000,1.5,6649">Мотор 1.5 кВт. 1000 об./хв.</option>'+
      '<option value="1000,2.2,7858">Мотор 2.2 кВт. 1000 об./хв.</option>'+
      '<option value="1000,3.0,10857">Мотор 3.0 кВт. 1000 об./хв.</option>'+
      '<option value="1000,4.0,11629">Мотор 4.0 кВт. 1000 об./хв.</option>'+
      '<option value="1000,5.5,15619">Мотор 5.5 кВт. 1000 об./хв.</option>'+
      '<option value="1000,7.5,18049">Мотор 7.5 кВт. 1000 об./хв.</option>'+
      '<option value="1000,11.0,26176">Мотор 11.0 кВт. 1000 об./хв.</option>'+
      '<option value="750,1.1,7082">Мотор 1.1 кВт. 750 об./хв.</option>'+
      '<option value="750,1.5,8307">Мотор 1.5 кВт. 750 об./хв.</option>'+
      '<option value="750,2.2,11072">Мотор 2.2 кВт. 750 об./хв.</option>'+
      '<option value="750,3.0,12187">Мотор 3.0 кВт. 750 об./хв.</option>'+
      '<option value="750,4.0,15837">Мотор 4.0 кВт. 750 об./хв.</option>'+
      '<option value="750,5.5,17830">Мотор 5.5 кВт. 750 об./хв.</option>'+
      '<option value="750,7.5,24772">Мотор 7.5 кВт. 750 об./хв.</option>'+
      '<option value="750,11.0,30381">Мотор 11.0 кВт. 750 об./хв.</option>'      
    );
    }else{
      $("#engine_params").html(
        '<option selected value="0,0,0">Без мотор-редуктора</option>'+
        '<option value="0,1.1,11848">Мотор редуктор 1.1 кВт. WMI 63</option>'+
        '<option value="0,1.1,13483">Мотор редуктор 1.1 кВт. WMI 75</option>'+
        '<option value="0,1.5,12669">Мотор редуктор 1.5 кВт. WMI 63</option>'+
        '<option value="0,1.5,14334">Мотор редуктор 1.5 кВт. WMI 75</option>'+
        '<option value="0,2.2,16869">Мотор редуктор 2.2 кВт. WMI 75</option>'+
        '<option value="0,2.2,18948">Мотор редуктор 2.2 кВт. WMI 90</option>'+
        '<option value="0,3,21098">Мотор редуктор 3 кВт. WMI 90</option>'+
        '<option value="0,3,27090">Мотор редуктор 3 кВт. WMI 110</option>'+
        '<option value="0,4,23051">Мотор редуктор 4 кВт. WMI 90</option>'+
        '<option value="0,4,29043">Мотор редуктор 4 кВт. WMI 110</option>'+
        '<option value="0,5.5,33169">Мотор редуктор 5.5 кВт. WMI 110</option>'+
        '<option value="0,5.5,36666">Мотор редуктор 5.5 кВт. WMI 130</option>'+
        '<option value="0,7.5,39359">Мотор редуктор 7.5 кВт. WMI 110</option>'+
        '<option value="0,7.5,42855">Мотор редуктор 7.5 кВт. WMI 130</option>'+
        '<option value="0,7.5,53987">Мотор редуктор 7.5 кВт. WMI 150</option>'+
        '<option value="0,9.2,47478">Мотор редуктор 9.2 кВт. WMI 130</option>'+
        '<option value="0,9.2,58610">Мотор редуктор 9.2 кВт. WMI 150</option>'+
        '<option value="0,11,61201">Мотор редуктор 11 кВт. WMI 150</option>'+
        '<option value="0,15,76006">Мотор редуктор 15 кВт. WMI 150</option>'
      );  
    }
}




// обрахунок та вивід прайса
function prace_vue() {
  // перевірка та обрахунок на моторі та мотор-редукторі
  if(chek_chose_radio == false){
      price_sh_transporter = ((params_trans[2]*1)+(params_trans[1]*1)+(params_trans[3]*l_trans*1.1)*1.2)+(engine_params[2]*1);
    }else{
      price_sh_transporter = (3000 + (params_trans[1]*1)+(params_trans[3]*l_trans*1.1)*1.2)+(engine_params[2]*1);
    }

    


  // перевірка на наявність бункерка та підставки
  if($(".radio_boonker").prop("checked")){
    if(params_trans[0]<160){
      price_sh_transporter += 2000
    }else{
      price_sh_transporter += 3000
    }
  }

  if($(".radio_pidstavka").prop("checked")){
    if(params_trans[0]<160){
      price_sh_transporter += 4000
    }else{
      price_sh_transporter += 5000
    }
  }

  if($(".radio_krot").prop("checked")){
    price_sh_transporter += (params_trans[3]*0.5)
  }


  if($(".radio_zholob").prop("checked")){
    price_sh_transporter = price_sh_transporter*1.1
  }

  if(l_trans >= 10){
    
    price_sh_transporter = price_sh_transporter*1.1
    
  }
  

  price_sh_transporter = parseInt(price_sh_transporter*1.15)

  $(".price").html( " ₴ " + price_sh_transporter+ ".00 з пдв");

                        

}










// обрахунок та вивід продуктивності

function calck_production(){

  let volume_smale_pipe
  let diam_smale_pipe

  let s_out_pipe = 3.5

  let scrw_p = (params_trans[0] - 11) * 0.0001

  let pered_zdatnist_shkiv = 0.25

  $( ".form-check-input_engyne" ).change(function() {
    chek_chose_radio = $("#exampleRadios2").prop("checked");
    add_write_select_engine_params()
  });



  function add_write_select_engine_params(){
    $("#engine_params_block").empty()
    if( chek_chose_radio == true){
      $("#engine_params_block").append(
        '<div class="form-group">'+ 
          '<label for="ob_motor_redukt">Обороти мотор-редуктора</label>'+
          '<select class="form-control" id="ob_motor_redukt">'+
            '<option value="30">30 об/хв</option>'+
            '<option value="42">42 об/хв</option>'+
            '<option value="70">70 об/хв</option>'+
            '<option value="93" selected>93 об/хв</option>'+
            '<option value="112">112 об/хв</option>'+
            '<option value="140">140 об/хв</option>'+
          '</select>'+
        '</div>'
      )
    }
    else if (chek_chose_radio == false){
      $("#engine_params_block").append('<div class="form-group">'+ 
          '<label for="shkiv_shnek">Шків шнека</label>'+
          '<select class="form-control" id="shkiv_shnek">'+
            '<option value="300" selected>300 мм</option>'+
            '<option value="410">410 мм</option>'+
          '</select>'+
          '<label for="shkin_engine">Шків двигуна</label>'+
          '<select class="form-control" id="shkin_engine">'+
            '<option value="80">80 мм.</option>'+
            '<option value="90" selected>90 мм.</option>'+    
            '<option value="135">135 мм.</option>'+
          '</select>'+
        '</div>'
      )
    }
    else{}
  }







  function add_content_params_select (){
    if ($("#diam_out_pipe").length){
      
    }
    
    else{
      $("#content_weight_product").show()

      $("#pipe_group").append(
        '<div class="form-group">'+
          '<input value="" type="text" class="form-control" id="diam_out_pipe" placeholder="Умоаний прохід зовн. труби">'+
        '</div>'+
      
        '<div class="form-group">'+
          '<input value="" type="text" class="form-control" id="screw_p" placeholder="Крок спіралі">'+
        '</div>'+

        '<div class="form-group">'+
          '<input value="" type="text" class="form-control" id="diam_smale_pipe" placeholder="Діам. трубовалу">'+
        '</div>'  
      )
    }
  }
  
  add_content_params_select ()
  add_write_select_engine_params()



 // обєм внутрінньої труби
  if(params_trans[0]==102||params_trans[0]==127){
    diam_smale_pipe = 34    
    
  }
  else {
    diam_smale_pipe = 42
  } 
  

  volume_smale_pipe = count_value_circle(diam_smale_pipe)
  

  // обєм зовнішньої труби
  let params_volume_pipe = count_value_circle(params_trans[0] - (s_out_pipe*2) )
  
  
  
  





  
  
  
  // швидкість шнека на двигуні та мотор-редукторі
  let engine_speed
  let engine_reduktor_speed

  // швидкіть обертів шнека на редукторі
  if ($("#ob_motor_redukt").length && chek_chose_radio == true){
      engine_reduktor_speed = $('#ob_motor_redukt option:selected').val().split(',');
    }
    else{
      engine_reduktor_speed = 93
    }

    // ініціалізація параметра обортів шнека для вирахунку продуктивності
  if(chek_chose_radio == false){
   engine_speed = engine_params[0]*pered_zdatnist_shkiv
  }else{    
    engine_speed = engine_reduktor_speed    
  }












  let cooficient_angle_working

  if (working_angle==0){
    cooficient_angle_working = 0.85
  }else if(working_angle==15){
    cooficient_angle_working = 0.75
  }else if(working_angle==30){
    cooficient_angle_working = 0.7
  }else if(working_angle==45){
    cooficient_angle_working = 0.6
  }else if(working_angle==60){
    cooficient_angle_working = 0.5
  }else if(working_angle==90){
    cooficient_angle_working = 0.5
  }







  production_sh_transporter =
    ((params_volume_pipe *  scrw_p) -
    (volume_smale_pipe * scrw_p)) *
    cooficient_angle_working *
    engine_speed *     
    weight_product *
    60  
//     alert("params_volume =" + (params_volume_pipe *  scrw_p - volume_smale_pipe * scrw_p))
// // 
//     alert("cooficient_angle_working * = " + cooficient_angle_working)
//     alert("engine_speed * =" + engine_speed)
//     alert("weight_product * =" +  weight_product)
//     alert("60  =" +  60 )



    // alert()
    // alert()
    // alert()
  

  $(".production_sh").html( " " + production_sh_transporter.toFixed(2)+ " тон на годину");

  console.log(params_inner_volume_pipe)
}

























// зачиска ціни при зміні параметрів
$( "#params_trans" ).change(function() {
  clean_prace()
  clean_producthion()
  init_varible_value() 
  chose_kvt()
  prace_vue()
  // calck_production()
  
});

$( "#length_trans" ).change(function() {
  clean_prace()
  clean_producthion()
  init_varible_value() 
  chose_kvt()
  prace_vue()
});
  
  

$( "#engine_params" ).change(function() {
  clean_prace()
  clean_producthion()
  init_varible_value() 
  // calck_production()
  prace_vue()
});




$( ".radio_boonker" ).change(function() {
  clean_prace()
  init_varible_value() 
  
  prace_vue()
});




$( ".radio_pidstavka" ).change(function() {
  clean_prace()

  init_varible_value() 
  prace_vue()
});

$( ".radio_krot" ).change(function() {
  clean_prace()
  init_varible_value() 
  prace_vue()
});

$( ".radio_zholob" ).change(function() {
  clean_prace()
  init_varible_value() 

  prace_vue()
});



// зачиска ціни при зміні параметрів продуктивності
$( "#weight_product" ).change(function() {
  clean_producthion()
  // calck_production()
});

$( "#working_angle" ).change(function() {
  clean_producthion()
  // calck_production()
});




function clean_prace() {
  $(".price").html( "" );
}

function clean_producthion() {
  $(".production_sh").html( "" );
}


// обрахунок площі кола
function count_value_circle(diametr){
  return  (( diametr / 2 )* ( diametr / 2 )  * pi ) *0.00001
 
}




































// ****************** попрбувати реалізувати на хеш

// var obj2 = { bro: "bro", note_bro: "note_bro" };
// if (obj2.hasOwnProperty("bro")) {
//   alert(obj2{:bro})
// }
// else{
//   alert("dont work")
// }
