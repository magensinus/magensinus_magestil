define(["../var/document","../core"],function(e,n){"use strict";function t(e){for(var r=e[0].toUpperCase()+e.slice(1),n=i.length;n--;)if((e=i[n]+r)in c)return e}function r(e){var r=n.cssProps[e]||o[e];return r||(e in c?e:o[e]=t(e)||e)}var i=["Webkit","Moz","ms"],c=e.createElement("div").style,o={};return r});