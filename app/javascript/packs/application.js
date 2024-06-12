
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "jquery";
import "popper.js";
import "bootstrap";
import "../stylesheets/application";
import '../stylesheets/mikoshi.scss'

import "./jpostal"
import "./map"  

Rails.start()
Turbolinks.start()
ActiveStorage.start()
