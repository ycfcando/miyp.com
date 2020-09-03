import $ from '../lib/jquery.min.js';



$(function(){
  //----------------手机号可用验证----------------
  function phone(val){
    let reg = /^1[3-9]\d{9}$/;

    $.ajax({
      type: 'get',
      url: '../php/register.php',
      data: `phone=${val}`,
      success: function(res){
        if(!reg.test(val) || res){
          $('#disreg').html('格式不对或手机号已存在');
          $('#disreg').removeClass('true');
        }else{
          $('#disreg').html('可以使用');
          $('#disreg').addClass('true');
        }
      }
    });
  }
  //验证码创建工具
  function createCode(){
    let str = '';
    for(let i = 0; i < 6; i++){
      str += parseInt(Math.random() * 10);
    }
    return str;
  }


  //验证手机号
  $('#username').on('input', function(){
    let phonenumber = $('#username').val();
    phone(phonenumber);
  });

  //密码验证
  $('#password').on('input', function(){
    let reg = /^.{6,16}$/;

    if(reg.test($('#password').val())){
      $('#psd').html('密码可用');
      $('#psd').addClass('true');
    }else{
      $('#psd').html('密码不可用');
      $('#psd').removeClass('true');
    }
  })

  //获取验证码
  let str;
  $('#login>.wrap:nth-of-type(3)>span:first').on('click', function(){
    str = createCode();
    $('#rancode').html(str);
  });

  //判断注册成功
  $('#regBtn').on('click', function(){
    if($('#verCode').val()==str && $('#disreg').hasClass('true') && $('#psd').hasClass('true')){
      let password = $.md5($('#password').val());
      $.ajax({
        type: 'get',
        url: '../php/adduser.php',
        data: `phone=${$('#username').val()}&password=${password}`,
        success: function(res){
          alert(res);
        }
      });
    }
  });

});