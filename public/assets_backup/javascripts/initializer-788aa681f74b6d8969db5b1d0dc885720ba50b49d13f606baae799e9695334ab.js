bindEvents=function(){if($.set_we_love_cookies(),$(".overlay").hide(),$(".altai-off").altaiOff(),$(".altai-center").altaiCenter(),$(".altai-panel").altaiPanel({trim:112}),$(".altai-toggle").altaiToggle({effect:"fade",wrapper:!1,close:!1}),0<$(".universal.main").length){var e=$(".universal.main").innerHeight();$(".responsive-navigation").css("min-height",e+"px")}if(0<$(".universal.hero").length){e=$(".universal.hero").innerHeight();$(".responsive-navigation").css("min-height",e+"px"),$(".responsive-panel").css("min-height",e+"px")}0<$("a.gallery").length&&$("a.gallery").featherlightGallery({previousIcon:"\xab",nextIcon:"\xbb",galleryFadeIn:300,openSpeed:300})},bindWrappers=function(){var e=$("div.articles div.articles-box div.articles-item"),i=$(".articles").width();if(i<=360)for(var a=0;a<e.length;a+=2)e.slice(a,a+2).wrapAll("<div class='left wide'></div>");else if(i<=480)for(a=0;a<e.length;a+=2)e.slice(a,a+2).wrapAll("<div class='left wide'></div>");else if(i<=720)for(a=0;a<e.length;a+=3)e.slice(a,a+3).wrapAll("<div class='left wide'></div>");else if(i<=960)for(a=0;a<e.length;a+=4)e.slice(a,a+4).wrapAll("<div class='left wide'></div>")},$(document).on("turbolinks:load",function(){bindWrappers(),bindEvents(),Turbolinks.clearCache()}),$(window).resize(function(){bindWrappers(),$(".altai-panel").altaiPanel({trim:112});var e=$(".universal.main").innerHeight();$(".responsive-navigation").css("min-height",e+"px"),Turbolinks.clearCache()}),$(window).trigger("resize");