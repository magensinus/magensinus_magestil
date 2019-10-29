define(["./core","./core/access","./core/camelCase","./var/rcssNum","./css/var/rnumnonpx","./css/var/cssExpand","./css/var/getStyles","./css/var/swap","./css/curCSS","./css/adjustCSS","./css/addGetHookIf","./css/support","./css/finalPropName","./core/init","./core/ready","./selector"],function(u,n,l,f,a,d,g,s,p,b,e,x,h){"use strict";function m(e,t,n){var s=f.exec(t);return s?Math.max(0,s[2]-(n||0))+(s[3]||"px"):t}function y(e,t,n,s,r,i){var o="width"===t?1:0,c=0,a=0;if(n===(s?"border":"content"))return 0;for(;o<4;o+=2)"margin"===n&&(a+=u.css(e,n+d[o],!0,r)),s?("content"===n&&(a-=u.css(e,"padding"+d[o],!0,r)),"margin"!==n&&(a-=u.css(e,"border"+d[o]+"Width",!0,r))):(a+=u.css(e,"padding"+d[o],!0,r),"padding"!==n?a+=u.css(e,"border"+d[o]+"Width",!0,r):c+=u.css(e,"border"+d[o]+"Width",!0,r));return!s&&0<=i&&(a+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-i-a-c-.5))||0),a}function r(e,t,n){var s=g(e),r=(!x.boxSizingReliable()||n)&&"border-box"===u.css(e,"boxSizing",!1,s),i=r,o=p(e,t,s),c="offset"+t[0].toUpperCase()+t.slice(1);if(a.test(o)){if(!n)return o;o="auto"}return(!x.boxSizingReliable()&&r||"auto"===o||!parseFloat(o)&&"inline"===u.css(e,"display",!1,s))&&e.getClientRects().length&&(r="border-box"===u.css(e,"boxSizing",!1,s),(i=c in e)&&(o=e[c])),(o=parseFloat(o)||0)+y(e,t,n||(r?"border":"content"),i,s,o)+"px"}var i=/^(none|table(?!-c[ea]).+)/,C=/^--/,o={position:"absolute",visibility:"hidden",display:"block"},v={letterSpacing:"0",fontWeight:"400"};return u.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=p(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,gridArea:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnStart:!0,gridRow:!0,gridRowEnd:!0,gridRowStart:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,s){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var r,i,o,c=l(t),a=C.test(t),d=e.style;if(a||(t=h(c)),o=u.cssHooks[t]||u.cssHooks[c],n===undefined)return o&&"get"in o&&(r=o.get(e,!1,s))!==undefined?r:d[t];"string"===(i=typeof n)&&(r=f.exec(n))&&r[1]&&(n=b(e,t,r),i="number"),null!=n&&n==n&&("number"!==i||a||(n+=r&&r[3]||(u.cssNumber[c]?"":"px")),x.clearCloneStyle||""!==n||0!==t.indexOf("background")||(d[t]="inherit"),o&&"set"in o&&(n=o.set(e,n,s))===undefined||(a?d.setProperty(t,n):d[t]=n))}},css:function(e,t,n,s){var r,i,o,c=l(t);return C.test(t)||(t=h(c)),(o=u.cssHooks[t]||u.cssHooks[c])&&"get"in o&&(r=o.get(e,!0,n)),r===undefined&&(r=p(e,t,s)),"normal"===r&&t in v&&(r=v[t]),""===n||n?(i=parseFloat(r),!0===n||isFinite(i)?i||0:r):r}}),u.each(["height","width"],function(e,a){u.cssHooks[a]={get:function(e,t,n){if(t)return!i.test(u.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?r(e,a,n):s(e,o,function(){return r(e,a,n)})},set:function(e,t,n){var s,r=g(e),i=!x.scrollboxSize()&&"absolute"===r.position,o=(i||n)&&"border-box"===u.css(e,"boxSizing",!1,r),c=n?y(e,a,n,o,r):0;return o&&i&&(c-=Math.ceil(e["offset"+a[0].toUpperCase()+a.slice(1)]-parseFloat(r[a])-y(e,a,"border",!1,r)-.5)),c&&(s=f.exec(t))&&"px"!==(s[3]||"px")&&(e.style[a]=t,t=u.css(e,a)),m(e,t,c)}}}),u.cssHooks.marginLeft=e(x.reliableMarginLeft,function(e,t){if(t)return(parseFloat(p(e,"marginLeft"))||e.getBoundingClientRect().left-s(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),u.each({margin:"",padding:"",border:"Width"},function(r,i){u.cssHooks[r+i]={expand:function(e){for(var t=0,n={},s="string"==typeof e?e.split(" "):[e];t<4;t++)n[r+d[t]+i]=s[t]||s[t-2]||s[0];return n}},"margin"!==r&&(u.cssHooks[r+i].set=m)}),u.fn.extend({css:function(e,t){return n(this,function(e,t,n){var s,r,i={},o=0;if(Array.isArray(t)){for(s=g(e),r=t.length;o<r;o++)i[t[o]]=u.css(e,t[o],!1,s);return i}return n!==undefined?u.style(e,t,n):u.css(e,t)},e,t,1<arguments.length)}}),u});