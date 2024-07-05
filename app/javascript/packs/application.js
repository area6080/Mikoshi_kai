
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";
import '../stylesheets/mikoshi.scss'


import "./map"
import "./script"
//import "./jpostal"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

