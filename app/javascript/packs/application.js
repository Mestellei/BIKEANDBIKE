import "bootstrap";
import { bikePrice } from "../bike-price";
// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import "../plugins/flatpickr"


import "../plugins/flatpickr";

initMapbox();
bikePrice();
initAutocomplete();

