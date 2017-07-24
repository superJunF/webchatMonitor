<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="jquery/jquery-1.8.3.js"></script>
<!-- easyui -->
<script type="text/javascript" src="${pageContext.request.contextPath}/easyUI/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyUI/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyUI/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyUI/themes/default/easyui.css">
<!-- ztree树形菜单 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/easyUI/ztree/jquery.ztree.all.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyUI/ztree/zTreeStyle.css">

<script type="text/javascript">
	$(function(){
		var setting = {};
		
		var zNodes = [
		              {name:'节点1'},
		              {name:'节点2'},
		              {name:'节点3',children:[
                          {name:'11'},
                          {name:'12'}
                      ]}
        ];
		
		$.fn.zTree.init($("#standarMenu"),setting,zNodes);
		
		var setting2 = {
				data : {
					simpleData:{
						enable : true
					}
				},
				callback : {
					onClick : function(event,treeId,treeNode,clickFlag){
						if($("#tabs").tabs('exists',treeNode.name)){
							//存在，切换
							$("#tabs").tabs('select',treeNode.name)
						}else{
							//不存在添加新的选项卡
							$("#tabs").tabs('add',{
								title:treeNode.name,
								content:'<div style="width:100%;height:100%;overflow:hidden;">'
										+'<iframe src="'
										+treeNode.page
										+'" scrolling="auto" style="width:100%;height:100%;border:0;"></iframe></div>',
								closable:true
							});
						}
					}
				}
		};
		
		var zNodes2 =[
		  	{name:'百度',id:1,pId:0,page:'http://www.baidu.com'},
		  	{name:'二级',id:2,pId:1},
		  	{name:'一级',id:3,pId:0}
        ];
		
		$.fn.zTree.init($("#simpleMenu"),setting2,zNodes2);
	});

</script>

<title>在线客服监控</title>
</head>
<body class="easyui-layout">
<div data-options="region:'north',title:'在线客服监控系统'" style="height:100px">
	<a href="${pageContext.request.contextPath}/hello.action">访问struts2</a>
</div>
<div data-options="region:'west',title:'基础菜单'" style="width:150px">
	<div class="easyui-accordion" data-options="fit:true">
		<div data-options="title:'面板一',iconCls:'icon-reload'">
			<ul id="standarMenu" class="ztree"></ul>
		</div>
		<div data-options="title:'面板二'">
			<ul id="simpleMenu" class="ztree"></ul>
		</div>
	</div>
</div>
<div data-options="region:'center'">
	<div id="tabs" class="easyui-tabs" data-options="fit:true">
		<div data-options="title:'面板一',closable:true">一</div>
		<div data-options="title:'面板一'">二</div>
		<div data-options="title:'面板一'">三</div>
	</div>
</div>
<div data-options="region:'south'" style="width:50px">南</div>
</body>
</html>