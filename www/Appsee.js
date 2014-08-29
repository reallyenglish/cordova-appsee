/**
 * Appsee.js
 *
 * Cordova Appsee plugin for version >= 3.0.0
 *
 * Copyright(c) Reallyenglish 2014
 */

'use strict';

var exec = require('cordova/exec');

var Appsee = function(){};

Appsee.init = function(key, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'init', [key]);
};

Appsee.startScreen = function(screenName, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'startScreen', [screenName]);
};

Appsee.stop = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'stop', []);
};

Appsee.pause = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'pause', []);
};

Appsee.resume = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'resume', []);
};

Appsee.stopAndUpload = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'stopAndUpload', []);
};

Appsee.addEvent = function(name, properties, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'addEvent', [name, properties]);
};

Appsee.setUserId = function(userId, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'setUserId', [userId]);
};

Appsee.setLocation = function(latitude, longitude, horizontalAccuracy, verticalAccuracy, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'setLocation', [latitude, longitude, horizontalAccuracy, verticalAccuracy]);
};

Appsee.setLocationDescription = function(description, successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'setLocationDescription', [description]);
};

Appsee.markViewAsSensitive = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'markViewAsSensitive', []);
};

Appsee.unmarkViewAsSensitive = function(successCallback, errorCallback){
  return exec(successCallback, errorCallback, 'Appsee', 'unmarkViewAsSensitive', []);
};

module.exports = Appsee;
