<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html >
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
	var zTree;
	var setting = {
		view: {
			dblClickExpand: false,
			showLine: true,
			selectedMulti: false,
			checkable : true 
		},
		check : {
		    autoCheckTrigger : false,
		    chkboxType : {"Y": "ps", "N": "ps"},
		    chkStyle : "checkbox",
		    enable : true,
		    nocheckInherit : false,
		    radioType : "level"

		},
		edit : {
		   /*  drag : {
		        autoExpandTrigger : true,
		        isCopy : true,
		        isMove : true,
		        prev : true,
		        next : true,
		        inner : true,
		        borderMax : 10,
		        borderMin : -5,
		        minMoveSize : 5,
		        maxShowNodeNum : 5,
		        autoOpenTime : 500
		    }, */
		   // editNameSelectAll : false,
		    enable : true,
		    removeTitle : "remove",
		    renameTitle : "rename",
		    showRemoveBtn : false,
		    showRenameBtn : false

		},
		data: {
			simpleData: {
				enable:true,
				idKey: "id",
				pIdKey: "pid",
				rootPId: ""
			}
		},
		callback: {
			beforeClick: function(treeId, treeNode) {
				var zTree = $.fn.zTree.getZTreeObj("tree");
				if (treeNode.isParent) {
					zTree.expandNode(treeNode);
					return false;
				} else {
					//demoIframe.attr("src",treeNode.file + ".html");
					return true;
				}
			},
			/* onRightClick:function zTreeOnRightClick(event, treeId, treeNode) {  
		    }, */
		    beforeDrag: beforeDrag,
			beforeDrop: beforeDrop
		}
	};
	function beforeDrag(treeId, treeNodes) {
		for (var i=0,l=treeNodes.length; i<l; i++) {
			if (treeNodes[i].drag === false) {
				return false;
			}
		}
		return true;
	}
	function beforeDrop(treeId, treeNodes, targetNode, moveType) {
		var childId=treeNodes[0].id;
		var parentId = targetNode.id;
		 $(function(){  
		    $.ajax({  
		        async : false,  
		        cache:false, 
		        data:{childId:childId,parentId:parentId},
		        type: 'GET',  
		        dataType : "json",  
		        url: "<%=basePath%>updateTree",
		        error: function () {
		            alert('请求失败');  
		        },  
		        success:function(data){ 
		            treeNodes = data;   
		        }  
		    });  
		});  
		return targetNode ? targetNode.drop !== false : true;
	}
		var zTree;  
		var treeNodes;  
		  
		$(function(){  
		    $.ajax({  
		        async : false,  
		        cache:false,  
		        type: 'GET',  
		        dataType : "json",  
		        url: "<%=basePath%>getTree",
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
<input placeholder="test">
</body>
</html>