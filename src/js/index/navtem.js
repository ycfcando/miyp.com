function navtem(){
  let arr = [
    '../html/templete/navtem.html',
    '../html/templete/navtem2.html',
    '../html/templete/navtem3.html',
    '../html/templete/navtem.html',
    '../html/templete/navtem2.html',
    '../html/templete/navtem3.html',
    '../html/templete/navtem.html',
    '../html/templete/navtem2.html',
    '../html/templete/navtem3.html',
    '../html/templete/navtem.html'
  ]
  let xhr = new XMLHttpRequest();
  let navarr = $('#nav>nav>li');
  navarr.hover(function(){
    xhr.open('get', arr[navarr.index($(this))]);    
    xhr.send();
    xhr.onreadystatechange = function(){
      if(xhr.readyState == 4 && xhr.status == 200){
        $('#distem').html(xhr.responseText);
      }
    }
  }, function(){
    $('#distem').html('');
  });
  
}
export {navtem};