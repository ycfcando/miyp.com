import $ from '../lib/jquery.min.js';
import {cookie} from '../lib/cookie.js';

$(function(){
  $('#loginBtn').on('click', function(){
    let username = $('#username').val();
    let password = $('#password').val();

    if(username !== '' && password !== ''){
      $.ajax({
        type: 'post',
        url: '../php/login.php',
        data: `username=${username}&password=${$.md5(password)}`,
        success: function(res){
          console.log(res);
          if(res){
            let obj = JSON.parse(res);
            cookie.set('phone', obj.phone);
            location.href='http://localhost/miyp.com/src/html/index.html';
          }
        }
      });
    }else{
      alert('内容不能为空');
    }
  });
})