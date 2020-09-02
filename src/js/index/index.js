import addgoods from './addgoods.js';
import {adddomdpy1, lbtbtn} from './lbt.js';
import {navtem} from './navtem.js';
window.onload=function(){
  let domdpy1 = document.getElementById('domdpy1');
  let domdpy2 = document.getElementById('domdpy2');
  let bannergoods = document.getElementById('bannergoods')
  let dpy1 = document.querySelector('#displaygood>.goods2 .dpy');
  let dpy2 = document.querySelector('#displaygood>.goods3 .dpy');
  let banner = document.getElementById('banner');
  navtem();
  adddomdpy1(bannergoods);

  adddomdpy1(domdpy1, 1);
  lbtbtn(dpy1,domdpy1,1);

  adddomdpy1(domdpy2, 2);
  lbtbtn(dpy2,domdpy2,1);

  addgoods();
}
