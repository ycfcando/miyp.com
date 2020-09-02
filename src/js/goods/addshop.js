import { cookie } from '../lib/cookie.js';
function addshop(){
  let rerbtn = $('#rerbtn');
  let addbtn = $('#addbtn');
  let goodsnum = $('#goodsnum');
  let shopbtn = $('#shopbtn');

  let id = location.search.split('?')[1];

  let value;

  $.ajax({
    type: "get",
    url: "../php/getdetail.php",
    data: id,
    dataType: "json",
    success: function(msg){
      let max = msg['storage'];

      if(max == 0){
        goodsnum.val(0);
      }
      addbtn.on('click', function(){
        value = parseInt(goodsnum.val());
        if(value < max){
          goodsnum.val(value + 1);
        }
      });

      rerbtn.on('click', function(){
        value = parseInt(goodsnum.val());
        if(value > 1){
          goodsnum.val(value - 1);
        }
      });

      shopbtn.on('click', function(){
        value = parseInt(goodsnum.val());
        addItem(msg['id'], msg['price'], value);
      });
    }
  });
}

function addItem(id, price, num) {
  let shop = cookie.get('shop'); // 从cookie中获取shop数据

  let product = {
      id: id,
      price: price,
      num: num
  };

  if (shop) { // 判断是否存有购物车数据
      shop = JSON.parse(shop);
      // 购物车中是否已经存在当前这件商品
      if (shop.some(elm => elm.id == id)) {
          // 修改数量
          shop.forEach(elm => {
              elm.id === id ? elm.num = num : null;
          });
      } else {
          // 添加商品
          shop.push(product);
      }

  } else {
      shop = [];
      shop.push(product);
  }

  cookie.set('shop', JSON.stringify(shop), 1);
}

export default addshop;