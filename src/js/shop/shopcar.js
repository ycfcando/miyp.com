import $ from '../lib/jquery.min.js';
import { cookie } from '../lib/cookie.js';
(function(){
  if(!cookie.get('phone')){
    location.href = 'http://localhost/miyp.com/src/html/index.html';
    $('#headList>li:first').html('<a href="http://localhost/miyp.com/src/html/loginpc.html">登录</a>&nbsp;&nbsp;<a href="">注册</a>');
  }else{
    $('#headList>li:first').html('<a>已登录</a>');
  }
})();
(function() {
  let shop = cookie.get('shop');

  if (shop) {
    shop = JSON.parse(shop); //  有cookie数据 才转JSON
    
    let idList = shop.map(elm => elm.id).join(); // 获取所有id

    $.ajax({
      type: "get",
      url: "../php/shop.php",
      data: {
          idList: idList
      },
      dataType: "json",
      success: function(res) {
        var template = '';

        //获取数据功能
        res.forEach((elm, i) => {
          let picture = JSON.parse(elm.img);

            // 让ajax获得的数据结果的id 与 cookie中id  一一对应
            // 索引值不同

            // 从cookie中去筛选数据
            let arr = shop.filter(val => val.id == elm.id);

            template += `
            <li>
              <div>
                <a num=${elm.id}></a>
              </div>
              <div>
                <img src="../images/goods/good${elm.id}/small/${picture['small']}">
              </div>
              <p>${elm.name}</p>
              <p>${elm.price}</p>
              <div>
                <div class="wrap">
                  <span class="rerbtn" num=${elm.id}></span>
                  <input type="text" value="${arr[0].num}" class="goodsnum" max=${elm.storage}>
                  <span class="addbtn" num=${elm.id}></span>
                </div>
              </div>
              <p>${arr[0].num * elm.price}</p>
              <span>
                <a del=${elm.id} class="del"></a>
              </span>
            </li>`;
          });

          $('#shops').append(template);

          //删除功能
          $('#shops .del').on('click', function(){
            let th = $(this);
            let index = $('#shops .del').index(th);
            let num = shop.forEach(val => {
              if(val.id == th.attr('del')){
                return shop.indexOf(val);
              }
            })
            shop.splice(num, 1);
            let str= JSON.stringify(shop);
            console.log(str);
            cookie.set('shop', str, 1);
            $('#shops>li').eq(index).remove();
          });

          //添加功能

          $('.addbtn').on('click', function(){
            let index = $('.addbtn').index(this);
            // console.log(index);
            let arr = [];
            shop.forEach(val=>{
              if(val.id == $(this).attr('num')){
                val.num++;
                $('.goodsnum').eq(index).val(val.num);
                $('#shops p:nth-of-type(3)').eq(index).html(val.num * val.price);
              }      
              arr.push(val);
            });
            cookie.set('shop',JSON.stringify(arr));
          });
    
          $('.rerbtn').on('click', function(){
            let index = $('.rerbtn').index(this);
            // console.log(index);
            let arr = [];
            shop.forEach(val=>{
              if(val.id == $(this).attr('num')){
                val.num--;
                $('.goodsnum').eq(index).val(val.num);
                $('#shops p:nth-of-type(3)').eq(index).html(val.num * val.price);
              }      
              arr.push(val);
            });
            cookie.set('shop',JSON.stringify(arr));
          });

          //----------------------选择-----------------------
          $('#shops>li>div>a').on('click', function(){
            //选择效果
            console.log($(this).hasClass('sch'));
            if($(this).hasClass('sch')){
              $(this).removeClass('sch');
            }else{
              $(this).addClass('sch');
            }
            
            if(!$('#shops>li>div>a').hasClass('sch')){
              $('#shopdis>nav>a').removeClass('sch');
              $('#pay').removeClass('pay');
            }else{
              $('#pay').addClass('pay');
            }

            //计算总价
            let sum = $('#shopdis .bottom>p>span:last');
            let pri =  $('#shops>li>div>.sch');
            let arr = [];
            let s = 0;
            pri.map(val=>{
              arr.push($('#shops>li>div>a').index(pri.eq(val)));
            });
            arr.forEach(val=>{
              // console.log($('#shops p:nth-of-type(3)').eq(val).html());
              let num = parseInt($('#shops p:nth-of-type(3)').eq(val).html());
              s += num;
            });  
            sum.html(s);
            
          });
          
          //-------------------全选-------------------------
          $('#shopdis>nav>a').on('click', function(){
            if($('#shopdis>nav>a').hasClass('sch')){
              $('#shops>li>div>a').removeClass('sch');
              $('#shopdis>nav>a').removeClass('sch');
            }else{
              $('#shops>li>div>a').addClass('sch');
              $('#shopdis>nav>a').addClass('sch');
            }

            if($('#shops>li>div>a').hasClass('sch')){
              $('#pay').addClass('pay');
            }else{
              $('#pay').removeClass('pay');
            }

            //计算总价
            let sum = $('#shopdis .bottom>p>span:last');
            let pri =  $('#shops>li>div>.sch');
            let arr = [];
            let s = 0;
            pri.map(val=>{
              arr.push($('#shops>li>div>a').index(pri.eq(val)));
            });
            arr.forEach(val=>{
              // console.log($('#shops p:nth-of-type(3)').eq(val).html());
              let num = parseInt($('#shops p:nth-of-type(3)').eq(val).html());
              s += num;
            });  
            sum.html(s);
          });
        }
      });

      //------------结算-------------------
      $('#pay').on('click', function(){
        let pri =  $('#shops>li>div>.sch');
        let arr = []; //储存id

        pri.map(val=>{
          arr.push(pri.eq(val).attr('num'));
        });
        let str = []; //提取选中的cookie
        shop.forEach(val=>{
          for(let i = 0; i < arr.length; i++){
            if(arr[i] == val.id){
              str.push(val);
            }
          }
        });

        str = JSON.stringify(str);  //以json字符串储存
        console.log(str);

        //传送数据给后端
        $.ajax({
          type: 'post',
          url: '../php/series.php',
          contentType: 'application/json', 
          data: str, 
          success: function(res){
            alert(res);
            //清除缓存
            
            for(let i = 0; i < arr.length; i++){
              shop.forEach(val=>{
                if(val.id==arr[i]){
                  let index = shop.indexOf(val);
                  shop.splice(index, 1);
                }
              });
            }

            let str= JSON.stringify(shop);
            console.log(str);
            cookie.set('shop', str, 1);
            location.href = 'http://localhost/miyp.com/src/html/shop.html';
          }
        });
      });
    }
})();