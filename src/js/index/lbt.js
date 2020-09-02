import '../lib/jquery.lazyload.js';
(function($) {
  $.fn.extend({
      slider: function(obj) {
          let main = null, // 主函数
              init = null, // 初始化
              start = null, // 开始动画
              stop = null, // 停止动画
              prev = null, // 上一张
              next = null, // 下一张
              timer = null, // 计时器
              elms = {}, // 命名空间
              defaults = {
                  speed: 500, // 动画速度
                  delay: 3000 // 间隔时间
              }; //默认参数

          $.extend(defaults, obj);

          init = function() {
              elms.sliderdiv = $(document.getElementById('bannergoods'));
              elms.sliderspan = $(this).children('span');
              elms.btnspan = $(this).children('div').children('span');
              elms.btnspan.eq(0).addClass('banspan');
              elms.index = 1;
              elms.sliderdiv.append(elms.sliderdiv.children('li').first().clone());

              this.hover(() => {
                  stop();
              }, () => {
                  timer = setInterval(prev, defaults.delay + defaults.speed);
              });

              elms.sliderspan.on('click', function() {
                  if (elms.sliderspan.index(this)) {
                      next();
                  } else {
                      prev();
                  }
              });

              elms.btnspan.on('click', function() {
                  let index = elms.btnspan.index(this);
                  let x = index * elms.sliderdiv.children('li').width();
                  elms.index = index + 1;
                  elms.sliderdiv.css('left', -x);
                  elms.btnspan.removeClass('banspan');
                  elms.btnspan.eq(elms.index - 1).addClass('banspan');
              });
          }.bind(this);

          start = function(dec) {
              let left = '-=859';
              if (!dec) {
                  left = '+=859';
                  if (elms.index === 1) {
                      elms.index = 7;
                      let sliderleft = $(this).offset().left;
                      let lastimg = elms.sliderdiv.children('li').last().offset().left;
                      elms.sliderdiv.css('left', -(lastimg - sliderleft));
                  }
              }
              elms.sliderdiv.animate({ left: left }, defaults.speed, () => {
                  if (dec) {
                      elms.index++;
                  } else {
                      elms.index--;
                  }
                  if (elms.index === 7) {
                      elms.index = 1;
                      elms.sliderdiv.css('left', 0);
                  }
                  elms.btnspan.removeClass('banspan');
                  elms.btnspan.eq(elms.index - 1).addClass('banspan');
              });


          }.bind(this);

          next = function() {
              start(1);
          }

          prev = function() {
              start(0);
          }

          stop = function() {
              clearInterval(timer);
              elms.sliderdiv.stop(true, true);
          }

          main = function() {
              init();
              timer = setInterval(prev, defaults.delay + defaults.speed);
          };
          main();
      }
  });
})(jQuery);

function adddomdpy1(dom,type){
  let xhr = new XMLHttpRequest();
  xhr.open('post','../php/domdpy1.php');
  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
  xhr.send('goodstype='+type);
  xhr.onreadystatechange = function(){
    if(xhr.readyState == 4 && xhr.status == 200){
      let data = JSON.parse(xhr.responseText);
      if(type == 1){
        let count = 1;
        for(let index in data){
          let picsrc = JSON.parse(data[index]['img']);
          dom.innerHTML +=`
          <a href="../html/goods.html?id=${data[index]['id']}">
            <div class="dpyInner">
              <img class="lazy" data-original="../images/goods/good${count}/small/${picsrc['small']}" alt="">
            </div>
            <div class="text">
              <p>${data[index].name}</p>
              <p>
                <span>￥${data[index].price}</span>
                <span>￥123</span>
              </p>
            </div>
          </a>
                    `;
          count++;
        }     
        $("img.lazy").lazyload({
          placeholder: "../../src/images/index/img/timg.gif", //用图片提前占位
          effect: "fadeIn", // 载入使用何种效果
        });   
      }
      else if(type == 2){
        for(let index in data){
          dom.innerHTML +=`
          <a href="../html/goods.html">
            <div class="dpyInner">
              <img class="lazy" data-original="../images/index/dayimg/${data[index].img}" alt="">
            </div>
            <div class="text">
              <p>${data[index].name}</p>
              <p>${data[index].description}</p>
              <p>
                <span>￥${data[index].price}</span>
              </p>
            </div>
          </a>
                    `;
        }
        $("img.lazy").lazyload({
          placeholder: "../../src/images/index/img/timg.gif", //用图片提前占位
          effect: "fadeIn", // 载入使用何种效果
        });
      }
      else{
        for(let index in data){
          dom.innerHTML +=`<li style="background-image: url(../images/index/banner/${data[index].img});"></li>`;
        }
        $(banner).slider({
          speed: 600,
          delay: 1000
        });
      }
    }
  }
}
function lbtbtn(dom,dom2){
  let length = $(dom2).children().length;
  let span = $(dom).children('span');
  let xvalue =271;

  span.eq(0).on('click', function(){
    let x = parseInt($(dom2).css('left'));
    if(x < 0){
      $(dom2).animate({'left': `${x + xvalue}`},'slow');
    }
  });

  span.eq(1).on('click', function(){
    let x = parseInt($(dom2).css('left'));
    if(x > xvalue*(length - 5) && x <= 0){
      $(dom2).animate({'left': `${x - xvalue}`},'slow');
    }
  });
}

// function lbtbanner(bannergoods, banner){
//   let span = $(banner).children('span');
//   function lbt(lang){
//     let x = parseInt($(bannergoods).css('left'));
//     let length = $(bannergoods).children().length;
//     let xlang = lang || -859;
//     console.log(xlang);
//     $(bannergoods).animate({'left': x + xlang}, 'show', function(){
//       if(x <= (length - 2) * xlang){
//         $(bannergoods).css('left', '0');
//       }else if(x <= 0){
//         $(bannergoods).css('left', '-5154');
//       }
//       if(!timer){
//         timer = setInterval(lbt, 2000);
//       }
//     }); 
//   }
//   let timer = setInterval(lbt, 2000);
//   span.eq(0).on('click', function(){
//     lbt(859);
//     clearInterval(timer);
//     timer = null;
//   });

//   span.eq(1).on('click', function(){
//     lbt();
//     clearInterval(timer);
//     timer = null;
//   });
// }

export {adddomdpy1, lbtbtn};
