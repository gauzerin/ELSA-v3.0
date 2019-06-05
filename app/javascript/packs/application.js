import "bootstrap";
import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { price } from '../plugins/price';

const url = window.location;

const navbarTransparent = (() => {
  $('.navbar').addClass('transparent fixed-top');
})

$(document).ready(() => {
  initMapbox();
  if (url.pathname === '/') { navbarTransparent(); }
  if (/hostels\/[1-9]*/.test(url.pathname)) { price(); }
})
