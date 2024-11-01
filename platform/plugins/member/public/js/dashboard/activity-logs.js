(()=>{"use strict";var e={2647:(e,t,n)=>{n.d(t,{A:()=>r});var i=n(6798),o=n.n(i)()((function(e){return e[1]}));o.push([e.id,'.half-circle-spinner,.half-circle-spinner *{box-sizing:border-box}.half-circle-spinner{border-radius:100%;height:60px;position:relative;width:60px}.half-circle-spinner .circle{border:6px solid transparent;border-radius:100%;content:"";height:100%;position:absolute;width:100%}.half-circle-spinner .circle.circle-1{animation:half-circle-spinner-animation 1s infinite;border-top-color:#ff1d5e}.half-circle-spinner .circle.circle-2{animation:half-circle-spinner-animation 1s infinite alternate;border-bottom-color:#ff1d5e}@keyframes half-circle-spinner-animation{0%{transform:rotate(0)}to{transform:rotate(1turn)}}',""]);const r=o},6798:e=>{e.exports=function(e){var t=[];return t.toString=function(){return this.map((function(t){var n=e(t);return t[2]?"@media ".concat(t[2]," {").concat(n,"}"):n})).join("")},t.i=function(e,n,i){"string"==typeof e&&(e=[[null,e,""]]);var o={};if(i)for(var r=0;r<this.length;r++){var a=this[r][0];null!=a&&(o[a]=!0)}for(var c=0;c<e.length;c++){var l=[].concat(e[c]);i&&o[l[0]]||(n&&(l[2]?l[2]="".concat(n," and ").concat(l[2]):l[2]=n),t.push(l))}},t}},5072:(e,t,n)=>{var i,o=function(){return void 0===i&&(i=Boolean(window&&document&&document.all&&!window.atob)),i},r=function(){var e={};return function(t){if(void 0===e[t]){var n=document.querySelector(t);if(window.HTMLIFrameElement&&n instanceof window.HTMLIFrameElement)try{n=n.contentDocument.head}catch(e){n=null}e[t]=n}return e[t]}}(),a=[];function c(e){for(var t=-1,n=0;n<a.length;n++)if(a[n].identifier===e){t=n;break}return t}function l(e,t){for(var n={},i=[],o=0;o<e.length;o++){var r=e[o],l=t.base?r[0]+t.base:r[0],s=n[l]||0,d="".concat(l," ").concat(s);n[l]=s+1;var u=c(d),p={css:r[1],media:r[2],sourceMap:r[3]};-1!==u?(a[u].references++,a[u].updater(p)):a.push({identifier:d,updater:h(p,t),references:1}),i.push(d)}return i}function s(e){var t=document.createElement("style"),i=e.attributes||{};if(void 0===i.nonce){var o=n.nc;o&&(i.nonce=o)}if(Object.keys(i).forEach((function(e){t.setAttribute(e,i[e])})),"function"==typeof e.insert)e.insert(t);else{var a=r(e.insert||"head");if(!a)throw new Error("Couldn't find a style target. This probably means that the value for the 'insert' parameter is invalid.");a.appendChild(t)}return t}var d,u=(d=[],function(e,t){return d[e]=t,d.filter(Boolean).join("\n")});function p(e,t,n,i){var o=n?"":i.media?"@media ".concat(i.media," {").concat(i.css,"}"):i.css;if(e.styleSheet)e.styleSheet.cssText=u(t,o);else{var r=document.createTextNode(o),a=e.childNodes;a[t]&&e.removeChild(a[t]),a.length?e.insertBefore(r,a[t]):e.appendChild(r)}}function f(e,t,n){var i=n.css,o=n.media,r=n.sourceMap;if(o?e.setAttribute("media",o):e.removeAttribute("media"),r&&"undefined"!=typeof btoa&&(i+="\n/*# sourceMappingURL=data:application/json;base64,".concat(btoa(unescape(encodeURIComponent(JSON.stringify(r))))," */")),e.styleSheet)e.styleSheet.cssText=i;else{for(;e.firstChild;)e.removeChild(e.firstChild);e.appendChild(document.createTextNode(i))}}var m=null,v=0;function h(e,t){var n,i,o;if(t.singleton){var r=v++;n=m||(m=s(t)),i=p.bind(null,n,r,!1),o=p.bind(null,n,r,!0)}else n=s(t),i=f.bind(null,n,t),o=function(){!function(e){if(null===e.parentNode)return!1;e.parentNode.removeChild(e)}(n)};return i(e),function(t){if(t){if(t.css===e.css&&t.media===e.media&&t.sourceMap===e.sourceMap)return;i(e=t)}else o()}}e.exports=function(e,t){(t=t||{}).singleton||"boolean"==typeof t.singleton||(t.singleton=o());var n=l(e=e||[],t);return function(e){if(e=e||[],"[object Array]"===Object.prototype.toString.call(e)){for(var i=0;i<n.length;i++){var o=c(n[i]);a[o].references--}for(var r=l(e,t),s=0;s<n.length;s++){var d=c(n[s]);0===a[d].references&&(a[d].updater(),a.splice(d,1))}n=r}}}},6262:(e,t)=>{t.A=(e,t)=>{const n=e.__vccOpts||e;for(const[e,i]of t)n[e]=i;return n}}},t={};function n(i){var o=t[i];if(void 0!==o)return o.exports;var r=t[i]={id:i,exports:{}};return e[i](r,r.exports,n),r.exports}n.n=e=>{var t=e&&e.__esModule?()=>e.default:()=>e;return n.d(t,{a:t}),t},n.d=(e,t)=>{for(var i in t)n.o(t,i)&&!n.o(e,i)&&Object.defineProperty(e,i,{enumerable:!0,get:t[i]})},n.o=(e,t)=>Object.prototype.hasOwnProperty.call(e,t),n.nc=void 0;const i=Vue;var o={class:"card"},r={class:"card-header"},a={class:"card-title"},c={key:0,class:"card-body",style:{"min-height":"15rem"}},l=[(0,i.createElementVNode)("div",{class:"loading-spinner"},null,-1)],s={key:0,class:"empty"},d=(0,i.createStaticVNode)('<div class="empty-icon"><svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 12m-9 0a9 9 0 1 0 18 0a9 9 0 1 0 -18 0"></path><path d="M12 9v4"></path><path d="M12 16v.01"></path></svg></div>',1),u={class:"empty-title"},p={class:"empty-subtitle text-muted"},f={key:1,class:"list-group list-group-flush"},m={class:"row align-items-center"},v=(0,i.createElementVNode)("div",{class:"col-auto"},[(0,i.createElementVNode)("i",{class:"icon ti ti-clock"})],-1),h={class:"col text-truncate"},g={class:"text-reset d-block"},y=["title","innerHTML"],b=["href","title"],k={key:2,class:"card-footer"},E={key:1,href:"javascript:void(0)"};var S=n(5072),N=n.n(S),x=n(2647),B={insert:"head",singleton:!1};N()(x.A,B);x.A.locals;const _={components:{HalfCircleSpinner:((e,t)=>{const n=e.__vccOpts||e;for(const[e,i]of t)n[e]=i;return n})({name:"HalfCircleSpinner",props:{animationDuration:{type:Number,default:1e3},size:{type:Number,default:60},color:{type:String,default:"#fff"}},computed:{spinnerStyle(){return{height:`${this.size}px`,width:`${this.size}px`}},circleStyle(){return{borderWidth:this.size/10+"px",animationDuration:`${this.animationDuration}ms`}},circle1Style(){return Object.assign({borderTopColor:this.color},this.circleStyle)},circle2Style(){return Object.assign({borderBottomColor:this.color},this.circleStyle)}}},[["render",function(e,t,n,o,r,a){return(0,i.openBlock)(),(0,i.createElementBlock)("div",{class:"half-circle-spinner",style:(0,i.normalizeStyle)(a.spinnerStyle)},[(0,i.createElementVNode)("div",{class:"circle circle-1",style:(0,i.normalizeStyle)(a.circle1Style)},null,4),(0,i.createElementVNode)("div",{class:"circle circle-2",style:(0,i.normalizeStyle)(a.circle2Style)},null,4)],4)}]])},data:function(){return{loading:!1,activityLogs:[]}},mounted:function(){this.getActivityLogs()},methods:{getActivityLogs:function(){var e=this,t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null;this.loading=!0,axios.get(t||"/ajax/members/activity-logs").then((function(t){var n=[];e.activityLogs.data&&(n=e.activityLogs.data),e.activityLogs=t.data,e.activityLogs.length&&(e.activityLogs.data=n.concat(e.activityLogs.data)),e.loading=!1}))}}};const w=(0,n(6262).A)(_,[["render",function(e,t,n,S,N,x){var B,_,w,L;return(0,i.openBlock)(),(0,i.createElementBlock)("div",o,[(0,i.createElementVNode)("div",r,[(0,i.createElementVNode)("h4",a,(0,i.toDisplayString)(e.__("activity_logs")),1)]),N.loading?((0,i.openBlock)(),(0,i.createElementBlock)("div",c,l)):((0,i.openBlock)(),(0,i.createElementBlock)(i.Fragment,{key:1},[null!==(B=N.activityLogs)&&void 0!==B&&B.meta&&0!==(null===(_=N.activityLogs)||void 0===_||null===(_=_.meta)||void 0===_?void 0:_.total)?(0,i.createCommentVNode)("",!0):((0,i.openBlock)(),(0,i.createElementBlock)("div",s,[d,(0,i.createElementVNode)("p",u,(0,i.toDisplayString)(e.__("oops")),1),(0,i.createElementVNode)("p",p,(0,i.toDisplayString)(e.__("no_activity_logs")),1)])),0!==(null===(w=N.activityLogs)||void 0===w||null===(w=w.meta)||void 0===w?void 0:w.total)?((0,i.openBlock)(),(0,i.createElementBlock)("div",f,[((0,i.openBlock)(!0),(0,i.createElementBlock)(i.Fragment,null,(0,i.renderList)(N.activityLogs.data,(function(t){return(0,i.openBlock)(),(0,i.createElementBlock)("div",{key:t.id,class:"list-group-item"},[(0,i.createElementVNode)("div",m,[v,(0,i.createElementVNode)("div",h,[(0,i.createElementVNode)("div",g,[(0,i.createElementVNode)("span",{title:e.$sanitize(t.description,{allowedTags:[]}),innerHTML:e.$sanitize(t.description)},null,8,y),(0,i.createElementVNode)("a",{href:"https://whatismyipaddress.com/ip/"+t.ip_address,target:"_blank",title:t.ip_address}," ("+(0,i.toDisplayString)(t.ip_address)+") ",9,b)])])])])})),128))])):(0,i.createCommentVNode)("",!0),null!==(L=N.activityLogs)&&void 0!==L&&null!==(L=L.links)&&void 0!==L&&L.next?((0,i.openBlock)(),(0,i.createElementBlock)("div",k,[N.loading?(0,i.createCommentVNode)("",!0):((0,i.openBlock)(),(0,i.createElementBlock)("a",{key:0,href:"javascript:void(0)",onClick:t[0]||(t[0]=function(e){return x.getActivityLogs(N.activityLogs.links.next)})},(0,i.toDisplayString)(e.__("load_more")),1)),N.loading?((0,i.openBlock)(),(0,i.createElementBlock)("a",E,(0,i.toDisplayString)(e.__("loading_more")),1)):(0,i.createCommentVNode)("",!0)])):(0,i.createCommentVNode)("",!0)],64))])}]]);"undefined"!=typeof vueApp&&vueApp.booting((function(e){e.component("activity-log-component",w)}))})();