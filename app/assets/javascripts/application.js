//= require rails-ujs
//= require_tree .
import "bootstrap";
import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout! THAT's DONe!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();
