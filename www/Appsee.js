/**
 * Appsee.js
 *
 * Cordova Appsee plugin for version >= 3.0.0
 *
 * Copyright(c) Reallyenglish 2014
 */

var exec = require('cordova/exec');

var Appsee = function(){};

Appsee.init = function(key, successCallback, errorCallback){
  return exec(successCallback, errorCallback, "CDVAppsee", "init", [key]);
};

module.exports = Appsee;
