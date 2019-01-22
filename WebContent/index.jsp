<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Selectable - Display as grid</title>
  <link rel="stylesheet" href="jquery-ui.css">
  <link rel="stylesheet" href="styleSheet.css">
  <!-- <link rel="stylesheet" href="/resources/demos/style.css">  -->
  <!--  <link rel="stylesheet" type="text/css" href="stylesheet.css">  -->
<title>C4l - Index</title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">

$( function() {
    $( "#selectable" ).selectable();
  } );


</script>
</head>
<body>

<div id="head">
<table id="headerTable">
<tr>
<td>
<a href="scenenView.jsp"> <button > Scenen</button></a>
<td><a href="permutation.jsp"> <button >Permutattion</button></a></td>
<td><a href="debuging.jsp"> <button >Debugging</button></a></td>
</tr>
</table>
</div>

<ol id="selectable">
  <li class="ui-state-default">1</li>
  <li class="ui-state-default">2</li>
  <li class="ui-state-default">3</li>
  <li class="ui-state-default">4</li>
  <li class="ui-state-default">5</li>
  <li class="ui-state-default">6</li>
  <li class="ui-state-default">7</li>
  <li class="ui-state-default">8</li>
  <li class="ui-state-default">9</li>
  <li class="ui-state-default">10</li>
  <li class="ui-state-default">11</li>
  <li class="ui-state-default">12</li>
</ol>

</body>
</html>