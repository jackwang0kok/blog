(window.webpackJsonp=window.webpackJsonp||[]).push([["chunk-91fa6208"],{"2d1d":function(t,a,e){"use strict";e.d(a,"d",(function(){return r})),e.d(a,"a",(function(){return o})),e.d(a,"c",(function(){return i})),e.d(a,"b",(function(){return d}));var n=e("e1d2"),r=function(){return n.a.get("/api/cate/all")},o=function(t){return n.a.post("/adm/cate/add",t)},i=function(t){return n.a.post("/adm/cate/edit",t)},d=function(t){return n.a.get("/adm/cate/drop/".concat(t))}},f932:function(t,a,e){"use strict";e.r(a);var n=e("2d1d"),r={data:function(){return{dataForm:{name:"",intro:""},dataRules:{name:[{required:!0,message:"请填写分类名",trigger:"blur",max:64}],intro:[{required:!0,message:"请填写分类介绍",trigger:"blur",max:64}]},saveLoading:!1}},methods:{cmtSave:function(){var t=this;this.$refs.dataForm.validate((function(a){a&&(t.saveLoading=!0,Object(n.a)(t.dataForm).then((function(a){t.saveLoading=!1,200==a.code?t.$Message.success({content:"分类信息添加成功",onClose:function(){t.$router.push({name:"cate-list"})}}):t.$Message.error({content:"分类信息添加失败,请重试",duration:3})})))}))}}},o=e("2877"),i=Object(o.a)(r,(function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("Card",{attrs:{bordered:!1,"dis-hover":""}},[e("p",{attrs:{slot:"title"},slot:"title"},[e("Icon",{attrs:{type:"ios-add-circle-outline"}}),t._v(" 添加分类 ")],1),e("div",{staticStyle:{"max-width":"520px"}},[e("Form",{ref:"dataForm",attrs:{model:t.dataForm,rules:t.dataRules,"label-position":"top"}},[e("FormItem",{attrs:{label:"分类名称",prop:"name"}},[e("Input",{attrs:{placeholder:"请填写分类名"},model:{value:t.dataForm.name,callback:function(a){t.$set(t.dataForm,"name",a)},expression:"dataForm.name"}})],1),e("FormItem",{attrs:{label:"分类介绍",prop:"intro"}},[e("Input",{attrs:{placeholder:"请填写分类介绍"},model:{value:t.dataForm.intro,callback:function(a){t.$set(t.dataForm,"intro",a)},expression:"dataForm.intro"}})],1),e("div",[e("Button",{attrs:{type:"warning",loading:t.saveLoading},on:{click:t.cmtSave}},[t._v("保 存")])],1)],1)],1)])}),[],!1,null,null,null);a.default=i.exports}}]);