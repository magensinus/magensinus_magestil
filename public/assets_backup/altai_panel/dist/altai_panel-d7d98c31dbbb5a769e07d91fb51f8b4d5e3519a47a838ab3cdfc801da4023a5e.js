var jQuery;!function(c,d){c.fn.extend({altaiPanel:function(n){var e,t,i,o,u=c(this);if(i={trim:0,debug:!1},i=c.extend(i,n),t=function(n){return i.debug?("undefined"===console&&console,console.log(n)):undefined},e=function(){o=c(d).outerHeight()-i.trim,u.css({"float":"left","min-height":o+"px",width:"100%"}),t("Panel Activated")},0<u.length)return this.each(function(){e()})}})}(jQuery,window,document);