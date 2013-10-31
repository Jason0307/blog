<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/zTreeStyle/zTreeStyle.css" type="text/css">  
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/ztree/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="js/ztree/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript" src="js/ztree/jquery.ztree.exedit-3.5.js"></script>
<title>Ztree</title>
<script type="text/javascript">
$(function() {  
	var setting = {
			view: {
				addHoverDom: addHoverDom,
				removeHoverDom: removeHoverDom,
				selectedMulti: false
			},
			edit: {
				enable: true,
				editNameSelectAll: true,
				showRemoveBtn: showRemoveBtn,
				showRenameBtn: showRenameBtn
			},
			data: {
				simpleData: {
					enable: true,
					idKey: "id",
					pIdKey: "pid",
					rootPId: ""
				}
			},
			callback: {
				beforeDrag: beforeDrag,
				beforeEditName: beforeEditName,
				beforeRemove: beforeRemove,
				beforeRename: beforeRename,
				onRemove: onRemove,
				onRename: onRename
			}
		};

		var log, className = "dark";
		function beforeDrag(treeId, treeNodes) {
			return false;
		}
		function beforeEditName(treeId, treeNode) {
			className = (className === "dark" ? "":"dark");
			showLog("[ "+getTime()+" beforeEditName ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
			var zTree = $.fn.zTree.getZTreeObj("tree");
			zTree.selectNode(treeNode);
			return confirm("进入节点 -- " + treeNode.name + " 的编辑状态吗？");
		}
		function beforeRemove(treeId, treeNode) {
			className = (className === "dark" ? "":"dark");
			showLog("[ "+getTime()+" beforeRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
			var zTree = $.fn.zTree.getZTreeObj("tree");
			zTree.selectNode(treeNode);
			return confirm("确认删除 节点 -- " + treeNode.name + " 吗？");
		}
		function onRemove(e, treeId, treeNode) {
			showLog("[ "+getTime()+" onRemove ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name);
		}
		function beforeRename(treeId, treeNode, newName, isCancel) {
			className = (className === "dark" ? "":"dark");
			showLog((isCancel ? "<span style='color:red'>":"") + "[ "+getTime()+" beforeRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>":""));
			if (newName.length == 0) {
				alert("节点名称不能为空.");
				var zTree = $.fn.zTree.getZTreeObj("tree");
				setTimeout(function(){zTree.editName(treeNode)}, 10);
				return false;
			}
			return true;
		}
		function onRename(e, treeId, treeNode, isCancel) {
			showLog((isCancel ? "<span style='color:red'>":"") + "[ "+getTime()+" onRename ]&nbsp;&nbsp;&nbsp;&nbsp; " + treeNode.name + (isCancel ? "</span>":""));
		}
		function showRemoveBtn(treeId, treeNode) {
			return !treeNode.isFirstNode;
		}
		function showRenameBtn(treeId, treeNode) {
			return !treeNode.isLastNode;
		}
		function showLog(str) {
			if (!log) log = $("#log");
			log.append("<li class='"+className+"'>"+str+"</li>");
			if(log.children("li").length > 8) {
				log.get(0).removeChild(log.children("li")[0]);
			}
		}
		function getTime() {
			var now= new Date(),
			h=now.getHours(),
			m=now.getMinutes(),
			s=now.getSeconds(),
			ms=now.getMilliseconds();
			return (h+":"+m+":"+s+ " " +ms);
		}

		var newCount = 1;
		function addHoverDom(treeId, treeNode) {
			var sObj = $("#" + treeNode.tId + "_span");
			if (treeNode.editNameFlag || $("#addBtn_"+treeNode.tId).length>0) return;
			var addStr = "<span class='button add' id='addBtn_" + treeNode.tId
				+ "' title='add node' onfocus='this.blur();'></span>";
			sObj.after(addStr);
			var btn = $("#addBtn_"+treeNode.tId);
			if (btn) btn.bind("click", function(){
				var zTree = $.fn.zTree.getZTreeObj("tree");
				zTree.addNodes(treeNode, {id:(100 + newCount), pId:treeNode.id, name:"new node" + (newCount++)});
				return false;
			});
		};
		function removeHoverDom(treeId, treeNode) {
			$("#addBtn_"+treeNode.tId).unbind().remove();
		};
		
		var treeNodes;  
		  
		$(function(){  
		    $.ajax({  
		        async : false,  
		        cache:false,  
		        type: 'GET',  
		        dataType : "json",  
		        url: "<%=basePath%>getCrudTree",
		        error: function () {
		            alert('请求失败');  
		        },  
		        success:function(data){   
		            treeNodes = data;
		        }  
		    });  
		  
		    $.fn.zTree.init($("#tree"), setting, treeNodes); 
		});  
		
 }); 
 
</script>
</head>
<body>
<div id="tree" class="ztree"></div>
</body>
</html>