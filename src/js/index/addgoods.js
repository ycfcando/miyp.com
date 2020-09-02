import '../lib/jquery.lazyload.js';
function addgoods(){
  let dpygoods = document.querySelector('#displaygood .goods4 .dpy');
  let xhr = new XMLHttpRequest();
  xhr.open('post','../php/addgoods.php');
  xhr.send();
  xhr.onreadystatechange = function(){
    if(xhr.readyState == 4 && xhr.status == 200){
      let data = xhr.responseText;
      let str;
      data = JSON.parse(data);
      for(let index in data){
        str = `
        <div id="goods">
        <div class="top">
          <img class="lazy" data-original="../images/index/goods/${data[index].img}" alt="">
        </div>
        <p>甜润净爽，新会核心产区，勐海...</p>
        <div class="bottom">
          <div id="domyh"></div>
          <p>${data[index].name}</p>
          <p>${data[index].price}</p>
        </div>
        </div>
              `;
        dpygoods.innerHTML += str;
      }
      $("img.lazy").lazyload({
        placeholder: "../../src/images/index/img/timg.gif", //用图片提前占位
        effect: "fadeIn", // 载入使用何种效果
      });
    }
  }
}
export default addgoods;