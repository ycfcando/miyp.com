import $ from '../lib/jquery.min.js';

function getdata(){
  let id = location.search.split('=')[1];
  let disimg = $('#disimg>img');
  let lbtimg = $('#lbtimg img');
  let gtemby = $('#gtemby>img');
  let li = $('#lbtimg li');

  let up = $('#lbtimg>.up');
  let down = $('#lbtimg>.down');
  let slider = $('#lbtimg>div');

  let name = $('#goodshead>.text>h2');
  let gdel = $('#goodshead>.text>p:first');
  let price = $('#goodshead>.text>.series span:eq(1)');

  function lbt(){
    let index = 0;
    let ytop;
    up.on('click', function(){
      ytop = parseInt(slider.css('top'));
      console.log(ytop);
      index--;
      if(index < 0){
        index = 0;
      }
      disimg.attr('src', `../images/goods/good${id}/display/${picsrc['display'][index]}`);
      //index > 0 && index < 3
      console.log(ytop);
      if(ytop < -95 && index == 1 || ytop < -191 && index == 2){
        slider.animate({'top': ytop + 96});
      }
      li.css('border-color', '');
      li.eq(index).css('border-color', 'red');
    });
    down.on('click', function(){
      ytop = parseInt(slider.css('top'));
      index++;
      if(index > 5){
        index = 5;
      }
      disimg.attr('src', `../images/goods/good${id}/display/${picsrc['display'][index]}`);
      if(index > 2 && index < 5){
        slider.animate({'top': ytop - 96});
      }
      li.css('border-color', '');
      li.eq(index).css('border-color', 'red');
    });
  }

  $.ajax({
    type: "get",
    url: "../php/getdetail.php",
    data: "id=" + id,
    dataType: "json",
    success: function(msg){
      window.picsrc = JSON.parse(msg['img']);

      name.html(msg['name']);
      gdel.html(msg['detail']);
      price.html('￥' + msg['price']);

      for(let i = 0; i < lbtimg.length; i++){
        lbtimg.eq(i).attr('src', `../images/goods/good${id}/display/${picsrc['display'][i]}`);
      }  

      for(let i = 0; i < gtemby.length; i++){
        gtemby.eq(i).attr('src', `../images/goods/good${id}/detail/${picsrc['detail'][i]}`);
      }
      
      disimg.attr('src', `../images/goods/good${id}/display/${picsrc['display'][0]}`);
      li.eq(0).css('border-color', 'red');

      lbt();
    }
  });
}

export default getdata;