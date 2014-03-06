/**
 * Appsee.js
 *
 * Cordova Appsee plugin for version >= 3.0.0
 *
 * Copyright(c) Reallyenglish 2014
 */

var exec = require('cordova/exec'),
    Appsee = function(){};

Appsee.prototype.init = function(key, successCallback, errorCallback){
  return exec(successCallback, errorCallback, "Appsee", "init", [key]);
};

module.exports = new Appsee();
