define(["../core","../deferred"],function(e){"use strict";var o=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;e.Deferred.exceptionHook=function(e,n){window.console&&window.console.warn&&e&&o.test(e.name)&&window.console.warn("jQuery.Deferred exception: "+e.message,e.stack,n)}});