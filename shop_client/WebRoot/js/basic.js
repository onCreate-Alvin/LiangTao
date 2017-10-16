﻿function showMsg(txt){
	 layer.alert(txt);
}
function showPage(title,url,width,height,closeCallBack,maxmin){
	if(!maxmin)maxmin=true;
	else{
		maxmin=false;
	}
	var a = 0;
	layer.ready(function(){ 
		  layer.open({
		    type: 2,
		    title: title,
		    maxmin: true,
		    area: [width+'px', height+'px'],
		    content:url,
		    end: function(){
		    	if(a == 0){
		    		closeCallBack();
		    	}
		    	
		    },
		    cancel: function(){
		    	a = 1;
			  closePage();
		  }
		  });
		});
}
function showTip(txt,selector){
	layer.tips(txt, selector, {tips: 1})
}
function closePage(){
	var index = parent.layer.getFrameIndex(window.name);
	parent.layer.close(index);
}
function sendData(action,data,txt){
	$.ajax({type:"POST",url:action,dataType:"json",data:data,success:function(json){
		if(json.status>0){
			closePage();
		}else{
			showMsg(txt);
		}
	}});
}
function sendForm(form){
	var data = form.serializeArray();
	var action = form.attr("action");
	senData(action,data);
	
}
function showConfirm(txt,fun1,fun2,button1,button2){
	var bt1 = "确定";
	var bt2 = "取消";
	if(button1)bt1=button1;if(button2)bt2=button2;
	layer.confirm(txt, {
		  btn: [bt1,bt2] //按钮
		}, function(){
		  fun1();
		}, function(){
			
		});
}
function showConfirmMsg(txt,fun1,button1){
	var bt1 = "确定";
	if(button1)bt1=button1;
	layer.confirm(txt, {
		  btn: [bt1] //按钮
		}, function(){
		  fun1();
		});
}