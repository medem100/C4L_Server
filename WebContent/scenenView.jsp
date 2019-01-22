<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function() {
	
	
	function addButton(datajson) {  
		  var element = document.createElement("BUTTON");
		  var t = document.createTextNode(datajson["scenenName"]);  
		  element.appendChild(t);
		  element.onclick = function() { // Note this is a function
		    alert(datajson["scenenID"]);
		    $.ajax({
	            type : "POST",
	            url : "helpJSP/setScene.jsp",
	            data : "scene=" + datajson["scenenID"],
	            success : function(data) {
	            	alert(datajson["scenenID"]);
	           }
	        });		  
		  
		  };
		  
		  var respnsField = document.getElementById("response")
		  respnsField.appendChild(element);
	}
	
	
    $("#add").click(function() {
        searchScenenName = $("#searchScene").val();
        $.ajax({
            type : "POST",
            url : "helpJSP/getScene.jsp",
            data : "scene=" + searchScenenName,
            success : function(data) {
            	var datajson = JSON.parse(data);
            	addButton(datajson);
              //  $("#response").html(datajson["scenenName"]);
            }
        });
    });  
    
    
    
}); 
</script>

</head>
<body>

<div id="head">
<table id="headerTable">
<tr>
<td>
<a href="scenenView.jsp"> <button> Scenen</button></a>
<td><a href="permutation.jsp"> <button >Permutattion</button></a></td>
<td><a href="debuging.jsp"> <button >Debugging</button></a></td>
</tr>
</table>
</div>

    Scene :<input type="text" id="searchScene" name="age">
    <br /><br />
    <button id="add">add</button>
    <div id="response"></div>

</body>
</html>