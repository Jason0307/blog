<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>jQuery UI Bootstrap</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A preview of the jQuery UI Bootstrap theme">
<meta name="author" content="Addy Osmani">


<link href="css/bootstrap.min.css" rel="stylesheet">
<link type="text/css"
	href="css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
<link type="text/css" href="css/font-awesome.min.css" rel="stylesheet" />
<link href="css/docs.css" rel="stylesheet">
<link href="css/google-code-prettify/prettify.css" rel="stylesheet">
<link href="css/wijmo/jquery.wijmo-open.1.5.0.css" rel="stylesheet"
	type="text/css" />
<link href="css/jQuery-UI-FileInput/css/enhanced.css" rel="Stylesheet">
<link rel="stylesheet" href="css/jqGrid/ui.jqgrid.css" />
<link rel="stylesheet" href="css/jqGrid/jqGrid.overrides.css">

<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="ico/favicon.png">

</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar"
	data-twttr-rendered="true">

<!-- Navbar
================================================== -->
<div class="navbar navbar-inverse navbar-fixed-top">
<div class="navbar-inner">
<div class="container">
<button type="button" class="btn btn-navbar" data-toggle="collapse"
	data-target=".nav-collapse"><span class="icon-bar"></span> <span
	class="icon-bar"></span> <span class="icon-bar"></span></button>
<a class="brand" href="http://github.com/addyosmani/jquery-ui-bootstrap">jQuery
UI Bootstrap</a>
<div class="nav-collapse collapse">
<ul class="nav">
	<li><a href="./index.html">Home</a></li>
	<li class="active"><a href="./extra.html">Extra</a></li>
	<li><a
		href="http://github.com/addyosmani/jquery-ui-bootstrap/issues">Feedback/Issues</a>
	</li>
	<li><a href="http://twitter.com/addyosmani">Contact</a></li>
</ul>
<div id="twitter-share" class="pull-right"><a
	href="https://twitter.com/share" class="twitter-share-button"
	data-url="http://addyosmani.github.com/jquery-ui-bootstrap/"
	data-text="A new jQuery UI Bootstrap theme" data-via="addyosmani"
	data-size="large">Tweet</a> <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>
</div>
</div>
</div>
</div>


<!-- Subhead
================================================== -->
<header class="jumbotron subhead" id="overview">
<div class="container">
<h1>jQuery UI Bootstrap</h1>
<p class="lead">A Bootstrap-themed kickstart for jQuery UI widgets
(v0.5).</p>
</div>
</header>


<div class="container"><!-- Docs nav ================================================== -->
<div class="row">
<div class="span3 bs-docs-sidebar">
<ul class="nav nav-list bs-docs-sidenav">
	<li><a href="#wijmo"><i class="icon-chevron-right"></i> Wijmo</a></li>
	<li><a href="#jqGrid"><i class="icon-chevron-right"></i>
	JQGrid</a></li>
	<li><a href="#file-input"><i class="icon-chevron-right"></i>
	File input</a></li>
	<li><a href="#date-range"><i class="icon-chevron-right"></i>
	Date Range</a></li>
</ul>
</div>
<div class="span9"><!-- Wijmo ================================================== -->
<section id="wijmo">
<div class="page-header">
<h1>Wijmo</h1>
</div>
<p>This is an example of how to retheme one of the Wijmo jQuery UI
components to match the Twitter Bootstrap theme. Whilst a menu component
will be arriving to jQueryUI soon, you can find the menu in <a
	href="http://wijmo.com/widgets/wijmo-open/">Wijmo Open</a>.</p>
<div id="wijmo-container" class="container-fluid">
<ul id="menu1">
	<li>
	<h3><a href="">Project Name</a></h3>
	</li>
	<li><a href="#">Home</a></li>
	<li><a href="#">Link</a></li>
	<li><a href="#">Link</a></li>
	<li><a href="#">Dropdown</a>
	<ul>
		<li><a href="#">Secondary link</a></li>
		<li><a href="#">Something else here</a></li>
		<li></li>
		<li><a href="#">Another link</a></li>
	</ul>
	</li>
	<li><input type="text" placeholder="Search"></li>
</ul>
<!-- End demo markup --></div>
<div class="clearfix"></div>
<pre class="prettyprint linenums">
$("#menu1").wijmenu({
    trigger: ".wijmo-wijmenu-item",
    triggerEvent: "click"
});
</pre> </section> <section id="jqGrid">
<div class="page-header">
<h1>JQ Table</h1>
</div>
<div class="span9">
<table id="jqGrid01"></table>
<div id="jqGridPager01"></div>
</div>
 </section> <section id="file-input">
<div class="page-header">
<h1>File Input</h1>
</div>
<div class="container-fluid">
<form><input type="file" class="span3" name="file" id="file">
</form>
</div>
<pre class="prettyprint linenums">
$('#file').customFileInput({
    button_position : 'right'
});
</pre> </section> <!-- end file input --> <!-- File input --> <section id="date-range">
<div class="page-header">
<h1>Select a Date Range with datepicker</h1>
</div>
<p><input type="text" value="01/01/2013" id="rangeBa" /> <input
	type="text" value="02/06/2013" id="rangeBb" /></p>
<pre class="prettyprint linenums">
// Select a Date Range with datepicker
$( "#rangeBa" ).datepicker({
    defaultDate: "+1w",
    changeMonth: true,
    numberOfMonths: 3,
    onClose: function( selectedDate ) {
        $( "#rangeBb" ).datepicker( "option", "minDate", selectedDate );
    }
});
$( "#rangeBb" ).datepicker({
    defaultDate: "+1w",
    changeMonth: true,
    numberOfMonths: 3,
    onClose: function( selectedDate ) {
        $( "#rangeBa" ).datepicker( "option", "maxDate", selectedDate );
    }
});
</pre> </section> <!-- end file input --></div>
</div>
</div>

<!-- Footer
================================================== -->
<footer class="footer">
<div class="container">
<p>jQuery UI Bootstrap &copy; Addy Osmani 2012 - 2013.</p>
<p>Twitter Bootstrap &copy; Twitter 2012 - 2013</p>
<ul class="footer-links">
	<li><a href="http://addyosmani.com/blog/">Blog</a></li>
	<li class="muted">&middot;</li>
	<li><a
		href="https://github.com/addyosmani/jquery-ui-bootstrap/issues?state=open">Issues</a></li>
</ul>
</div>
</footer>
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery-1.9.0.min.js" type="text/javascript"></script>
<script src="js/jquery-migrate-1.0.0.js"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery-ui-1.10.0.custom.min.js" type="text/javascript"></script>
<script src="js/google-code-prettify/prettify.js" type="text/javascript"></script>
<script src="js/docs.js" type="text/javascript"></script>
<!-- FileInput -->
<script src="js/jQuery-UI-FileInput/js/enhance.min.js"
	type="text/javascript"></script>
<script src="js/jQuery-UI-FileInput/js/fileinput.jquery.js"
	type="text/javascript"></script>
<!-- End FileInput -->
<!--wijmo-->
<script src="js/wijmo/jquery.mousewheel.min.js" type="text/javascript"></script>
<script src="js/wijmo/jquery.wijmo-open.1.5.0.min.js"
	type="text/javascript"></script>
<!--End wijmo-->
<script src="js/jqGrid/grid.locale-en.js"></script>
<script src="js/jqGrid/jquery.jqGrid.min.js"></script>
<script src="js/demo.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function () {
	$.ajax({
		url: "<%=request.getContextPath()%>/items",
		datatype: "json",
		success:function(data){
			if ($.fn.jqGrid){
				var mydata = [
				              {id:"1",invdate:"2010-05-24",name:"test",note:"note",tax:"10.00",total:"2111.00"} ,
				              {id:"2",invdate:"2010-05-25",name:"test2",note:"note2",tax:"20.00",total:"320.00"},
				              {id:"3",invdate:"2007-09-01",name:"test3",note:"note3",tax:"30.00",total:"430.00"},
				              {id:"4",invdate:"2007-10-04",name:"test",note:"note",tax:"10.00",total:"210.00"},
				              {id:"5",invdate:"2007-10-05",name:"test2",note:"note2",tax:"20.00",total:"320.00"},
				              {id:"6",invdate:"2007-09-06",name:"test3",note:"note3",tax:"30.00",total:"430.00"},
				              {id:"7",invdate:"2007-10-04",name:"test",note:"note",tax:"10.00",total:"210.00"},
				              {id:"8",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"21.00",total:"320.00"},
				              {id:"9",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"11",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"12",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"13",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"14",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"15",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"16",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"17",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"18",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"19",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"21",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"22",invdate:"2007-10-02",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"23",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"24",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"25",invdate:"2007-10-05",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"26",invdate:"2007-09-06",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"},
				              {id:"27",invdate:"2007-10-04",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"},
				              {id:"28",invdate:"2007-10-03",name:"test2",note:"note2",amount:"300.00",tax:"20.00",total:"320.00"},
				              {id:"29",invdate:"2007-09-01",name:"test3",note:"note3",amount:"400.00",tax:"30.00",total:"430.00"}
				          ];
		$("#jqGrid01").jqGrid({
			data: JSON.parse(data),
			datatype: "local",
			height: "auto",
			width:900,
			rowNum: 10,
			rowList: [10,20,30],
           /*
			colNames:['Inv No','Date', 'Client', 'Amount','Tax','Total','Notes'],
			colModel:[
			{name:'id',index:'id', width:60, sorttype:"int",search:true,editable:true,edittype:"text",editoptions:{size:10,maxlength:15},
                editrules:{required:true}},
			{name:'invdate',index:'invdate', width:100, sorttype:"date", formatter:"date",editable:true},
			{name:'name',index:'name', width:100},
			{name:'amount',index:'amount', width:100, align:"right",sorttype:"float", formatter:"number",editable:true},
			{name:'tax',index:'tax', width:100, align:"right",sorttype:"float",editable:true},
			{name:'total',index:'total', width:100,align:"right",sorttype:"float",editable:true},
			{name:'note',index:'note', width:100, sortable:false,editable:true}
			],*/
			colNames:['Item No','Name', 'Category', 'Type','UnLockLevel','Description','Trait'],
            colModel:[
            {name:'itemId',index:'itemId', width:60,align:"center", sorttype:"int",search:true,editable:true,edittype:"text",editoptions:{size:10,maxlength:15},
                editrules:{required:true}},
            {name:'name',index:'name', width:100,align:"center",editable:true},
            {name:'itemCategory',index:'itemCategory',align:"center", width:100,editable:true},
            {name:'type',index:'type', width:100, align:"center",sorttype:"int",editable:true},
            {name:'unlockLevel',index:'unlockLevel', width:100, align:"center",sorttype:"int",editable:true},
            {name:'description',index:'description', width:200,align:"center",editable:true},
            {name:'trait',index:'trait', width:100, align:"center",sortable:false,editable:true}
            ],
			pager: "#jqGridPager01",
			viewrecords: true,
			caption: "Simple Record Data",
			hidegrid:false,
			altRows: true,
			cellsubmit:"clientArray",
			altclass: "altclass",
			editurl:"<%=request.getContextPath()%>/edit",
			edit:{
		        addCaption: "Add Record",
		        editCaption: "Edit Record",
		        bSubmit: "Submit",
		        bCancel: "Cancel",
		        bClose: "Close",
		        saveData: "Data has been changed! Save changes?",
		        bYes : "Yes",
		        bNo : "No",
		        bExit : "Cancel",
		        url:"<%=request.getContextPath()%>/login"
		    },
		    closeAfterAdd: true,
		    reloadAfterSubmit: true
			});
          $("#jqGrid01").jqGrid('navGrid','#jqGridPager01',{});
		/*$("#jqGrid01")
			.jqGrid('filterToolbar',{defaultSearch:false,stringResult:false})
			.jqGrid('setSelection', '3');*/
			
			}
		}
		});
});
var exportJson = function(){
	var options = {
           root:"records"
			}
	$("#jqGrid01").jqGrid('jqGridExport', options);
	
}
var echoSelRow = function() {  
    var id = $("#jqGrid01").jqGrid("getGridParam", "selrow");  
      
    alert("当前选中行ID：" + id);  
};  
var getContact = function() {  
    var selectedId = $("#jqGrid01").jqGrid("getGridParam", "selrow");  
      
    var rowData = $("#jqGrid01").jqGrid("getRowData", selectedId);  
      
    alert("First Name: " + rowData.name);  
};  
var addContact = function() {  
   /* var selectedId = $("#jqGrid01").jqGrid("getGridParam", "selrow");  
      
    var dataRow = {   
        id : 99,  
        name : "zhu",  
        invdate : "2013-04-10",
        tax:"50",
        total:"100",
        amount:"500",
        note:"note" 
    };  
      
    if (selectedId) {  
        $("#jqGrid01").jqGrid("addRowData", 99, dataRow, "before", selectedId);  
          
    } else {  
        $("#jqGrid01").jqGrid("addRowData", 99, dataRow, "first");  
          
    }  */
    var properties = {
            addCaption: "Add Record",
            editCaption: "Edit Record",
            bSubmit: "Submit",
            bCancel: "Cancel",
            bClose: "Close",
            saveData: "Data has been changed! Save changes?",
            bYes : "Yes",
            bNo : "No",
            bExit : "Cancel"
        };
	$("#jqGrid01").jqGrid('editGridRow', "new", properties );
};  
var updateContact = function() {  
    var selectedId = $("#jqGrid01").jqGrid("getGridParam", "selrow");  
      
    var dataRow = {  
        name : "bao",  
        invdate : "2013-04-10",
        tax:"50",
        total:"100",
        amount:"500",
        note:"bao" 
    };  
      
    var cssprop = {  
        color : "#FF0000"  
    };  
      
    $("#jqGrid01").jqGrid('setRowData', selectedId, dataRow, cssprop);  
};  
var deleteContact = function() {  
    var selectedId = $("#jqGrid01").jqGrid("getGridParam", "selrow");  
      
    $("#jqGrid01").jqGrid('delRowData', selectedId);  
};  
var changeGridOptions = function() {  
    $("#jqGrid01").jqGrid("setGridParam", {  
        rowNum: 50,  
        page: 16  
    }).trigger('reloadGrid');  
      
    $("#jqGrid01").jqGrid("setCaption", "Contact List").trigger('reloadGrid');  
      
    alert($("#jqGrid01").jqGrid("getGridParam", "caption"));  
    alert($("#jqGrid01").jqGrid("getGridParam", "rowNum"));  
};  
var resetWidth = function() {  
    $("#jqGrid01").jqGrid("setGridWidth", 300, false);  
};  

</script>
</body>
</html>