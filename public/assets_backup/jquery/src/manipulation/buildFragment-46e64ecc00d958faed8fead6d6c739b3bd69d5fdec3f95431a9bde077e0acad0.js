define(["../core","../core/toType","../core/isAttached","./var/rtagName","./var/rscriptType","./wrapMap","./getAll","./setGlobalEval"],function(m,C,g,v,y,T,x,w){"use strict";function e(e,t,r,i,a){for(var n,o,l,s,c,f,p=t.createDocumentFragment(),d=[],h=0,u=e.length;h<u;h++)if((n=e[h])||0===n)if("object"===C(n))m.merge(d,n.nodeType?[n]:n);else if(A.test(n)){for(o=o||p.appendChild(t.createElement("div")),l=(v.exec(n)||["",""])[1].toLowerCase(),s=T[l]||T._default,o.innerHTML=s[1]+m.htmlPrefilter(n)+s[2],f=s[0];f--;)o=o.lastChild;m.merge(d,o.childNodes),(o=p.firstChild).textContent=""}else d.push(t.createTextNode(n));for(p.textContent="",h=0;n=d[h++];)if(i&&-1<m.inArray(n,i))a&&a.push(n);else if(c=g(n),o=x(p.appendChild(n),"script"),c&&w(o),r)for(f=0;n=o[f++];)y.test(n.type||"")&&r.push(n);return p}var A=/<|&#?\w+;/;return e});