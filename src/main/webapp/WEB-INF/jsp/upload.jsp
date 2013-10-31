<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="js/jquery.uploadify.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
<title>Insert title here</title>
</head>
<body>
<h1>Uploadify Demo</h1>
	<form enctype="multipart/form-data">
		<div id="queue" ></div>
		<input id="upload" name="upload" type="file">
	</form>
	<img id="view"/>
	<script type="text/javascript">
		$(function() {
			$('#upload').uploadify({
				'formData'     : {
					'itemId' : 1
				},
				'fileSizeLimit':'50kb',
				'swf'      : 'swf/uploadify.swf',
				'uploader' : 'uploadify',
				'onSelect' : function(file) {
		            alert('The file ' + file.name + ' was added to the queue.');
		            alert(file.size);
		            alert(file);
		        },
				'onUploadSuccess': function (file, data, response) {
			            $("#view").attr("src", "<%=basePath%>uploadDir/" + data).show();
			        }
			});
		});
	</script>
</body>
</html>