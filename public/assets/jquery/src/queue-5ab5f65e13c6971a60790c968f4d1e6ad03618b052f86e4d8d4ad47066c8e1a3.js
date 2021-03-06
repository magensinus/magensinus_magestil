define(["./core","./data/var/dataPriv","./deferred","./callbacks"],function(f,a){"use strict";return f.extend({queue:function(e,u,t){var n;if(e)return u=(u||"fx")+"queue",n=a.get(e,u),t&&(!n||Array.isArray(t)?n=a.access(e,u,f.makeArray(t)):n.push(t)),n||[]},dequeue:function(e,u){u=u||"fx";var t=f.queue(e,u),n=t.length,r=t.shift(),i=f._queueHooks(e,u),s=function(){f.dequeue(e,u)};"inprogress"===r&&(r=t.shift(),n--),r&&("fx"===u&&t.unshift("inprogress"),delete i.stop,r.call(e,s,i)),!n&&i&&i.empty.fire()},_queueHooks:function(e,u){var t=u+"queueHooks";return a.get(e,t)||a.access(e,t,{empty:f.Callbacks("once memory").add(function(){a.remove(e,[u+"queue",t])})})}}),f.fn.extend({queue:function(u,t){var e=2;return"string"!=typeof u&&(t=u,u="fx",e--),arguments.length<e?f.queue(this[0],u):t===undefined?this:this.each(function(){var e=f.queue(this,u,t);f._queueHooks(this,u),"fx"===u&&"inprogress"!==e[0]&&f.dequeue(this,u)})},dequeue:function(e){return this.each(function(){f.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,u){var t,n=1,r=f.Deferred(),i=this,s=this.length,o=function(){--n||r.resolveWith(i,[i])};for("string"!=typeof e&&(u=e,e=undefined),e=e||"fx";s--;)(t=a.get(i[s],e+"queueHooks"))&&t.empty&&(n++,t.empty.add(o));return o(),r.promise(u)}}),f});