import "bootstrap";
import { bikePrice } from "../bike-price";
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
bikePrice();

