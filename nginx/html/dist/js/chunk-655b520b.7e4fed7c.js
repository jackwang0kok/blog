(window.webpackJsonp=window.webpackJsonp||[]).push([["chunk-655b520b"],{"0518":function(t,s,a){"use strict";var e=a("2259");a.n(e).a},2259:function(t,s,a){},"77b8":function(t,s,a){"use strict";a.r(s);var e=a("3786"),o={name:"index",data:function(){return{sys:{arch:"--",num_cpu:0,os:"--",version:"--"},collect:{post:0,page:0,cate:0,tag:0}}},methods:{init:function(){var t=this;Object(e.c)().then((function(s){200==s.code?t.sys=s.data:t.$Message.warning("未查询到系统信息,请重试！")})),Object(e.b)().then((function(s){200==s.code?t.collect=s.data:t.$Message.warning("未查询到统计信息,请重试！")}))}},mounted:function(){this.init()}},n=(a("0518"),a("2877")),r=Object(n.a)(o,(function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{staticClass:"home"},[a("Row",[a("Col",{attrs:{md:{span:10}}},[a("Row",[a("Col",{staticClass:"collect",attrs:{span:"12"}},[a("Card",{attrs:{"dis-hover":""}},[a("Row",[a("Col",{attrs:{span:"10"}},[a("Icon",{attrs:{type:"ios-megaphone"}})],1),a("Col",{attrs:{span:"14"}},[a("p",{staticClass:"title"},[t._v("文章")]),a("h3",[t._v(t._s(t.collect.post))])])],1)],1)],1),a("Col",{staticClass:"collect",attrs:{span:"12"}},[a("Card",{attrs:{"dis-hover":""}},[a("Row",[a("Col",{attrs:{span:"10"}},[a("Icon",{attrs:{type:"ios-map"}})],1),a("Col",{attrs:{span:"14"}},[a("p",{staticClass:"title"},[t._v("页面")]),a("h3",[t._v(t._s(t.collect.page))])])],1)],1)],1),a("Col",{staticClass:"collect",attrs:{span:"12"}},[a("Card",{attrs:{"dis-hover":""}},[a("Row",[a("Col",{attrs:{span:"10"}},[a("Icon",{attrs:{type:"ios-school"}})],1),a("Col",{attrs:{span:"14"}},[a("p",{staticClass:"title"},[t._v("分类")]),a("h3",[t._v(t._s(t.collect.cate))])])],1)],1)],1),a("Col",{staticClass:"collect",attrs:{span:"12"}},[a("Card",{attrs:{"dis-hover":""}},[a("Row",[a("Col",{attrs:{span:"10"}},[a("Icon",{attrs:{type:"ios-pricetags"}})],1),a("Col",{attrs:{span:"14"}},[a("p",{staticClass:"title"},[t._v("标签")]),a("h3",[t._v(t._s(t.collect.tag))])])],1)],1)],1)],1)],1),a("Col",{attrs:{md:{span:14}}},[a("Card",{staticStyle:{height:"158px"},attrs:{"dis-hover":""}},[a("p",{attrs:{slot:"title"},slot:"title"},[t._v(" 系统信息 ")]),a("Steps",{attrs:{status:"finish",current:4}},[a("Step",{attrs:{icon:"ios-flash",title:"系统架构",content:t.sys.arch}}),a("Step",{attrs:{icon:"logo-snapchat",title:"操作系统",content:t.sys.os}}),a("Step",{attrs:{icon:"ios-thunderstorm",title:"运行环境",content:t.sys.version}}),a("Step",{attrs:{icon:"ios-flower",title:"逻辑处理器",content:t.sys.num_cpu+""}})],1)],1)],1)],1),a("Row",[a("Col",{attrs:{md:{span:8}}},[a("Card",{staticStyle:{height:"320px"},attrs:{"dis-hover":""}},[a("p",{attrs:{slot:"title"},slot:"title"},[t._v(" 暂时未统计，正在进行 ")]),a("a",{attrs:{slot:"extra",href:"#"},on:{click:function(s){return s.preventDefault(),t.refresh(s)}},slot:"extra"},[a("Icon",{attrs:{type:"ios-loop-strong"}})],1),a("Steps",{attrs:{current:2,direction:"vertical",size:"small"}},[a("Step",{attrs:{title:"已完成",content:"这里是该步骤的描述信息"}}),a("Step",{attrs:{title:"已完成",content:"这里是该步骤的描述信息"}}),a("Step",{attrs:{title:"进行中",content:"这里是该步骤的描述信息"}}),a("Step",{attrs:{title:"待进行",content:"这里是该步骤的描述信息"}})],1)],1)],1)],1)],1)}),[],!1,null,"d8f97f58",null);s.default=r.exports}}]);