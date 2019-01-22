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
	
	 $("#add").click(function() {
	        permutation = $("#permutation").val();
	        gerät = $("#geraet").val();
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
<a href="scenenView.jsp"> <button class="btn"> Scenen</button></a>
<td><a href="permutation.jsp"> <button class="btn">Permutattion</button></a></td>
<td><a href="debuging.jsp"> <button class="btn">Debugging</button></a></td>
</tr>
</table>
</div>

<p>Gerät:  <input type="text" id="geraet"></input></p>
<p>Permutation:  <input type="text" size="100" id="permutation"></input></p>


</body>
</html>