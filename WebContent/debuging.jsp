<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="css/style1.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"  src="JS/regler.js"></script>
<script type="text/javascript"  src="JS/buttons.js"></script>
</head>
<body>

<!-- Momenatn noch von hand rein geschriebener head-->
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
<!-- header Ende -->

<!-- begin von oberer 8 Regler einheit -->
<div class="ReglerGroup1">
<!-- labels für die ausgabe des statuses von regler 1 - 8 -->
<div class="labelGroup1">
  <div id="labelpar">
  <label for="amountR">R:</label>
  <input type="text" id="amountR" readonly class="labelInput">
  </div>
  <div  id="labelpar">	
  <label for="amountG">G:</label>
  <input type="text" id="amountG" readonly class="labelInput">
  </div>
  <div id="labelpar">
  <label for="amountB">B:</label>
  <input type="text" id="amountB" readonly class="labelInput">
  </div>
  
  <div id="labelpar">
  <label for="amountR">4:</label>
  <input type="text" id="amount4" readonly class="labelInput">
  </div>
  <div  id="labelpar">	
  <label for="amountG">5:</label>
  <input type="text" id="amount5" readonly class="labelInput">
  </div>
  <div id="labelpar">
  <label for="amountB">6:</label>
  <input type="text" id="amount6" readonly class="labelInput">
  </div>
  
  <div id="labelpar">
  <label for="amountR">7:</label>
  <input type="text" id="amount7" readonly class="labelInput">
  </div>
  <div  id="labelpar">	
  <label for="amountG">8:</label>
  <input type="text" id="amount8" readonly class="labelInput">
  </div>
  

</div>
<!-- div container von regler 1 - 8 -->
<div class="ReglerEinzel"><div  id="slider-R" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="slider-G" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="slider-B" style="height:200px;"></div></div>

<div class="ReglerEinzel"><div  id="slider-4" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="slider-5" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="slider-6" style="height:200px;"></div></div>

<div class="ReglerEinzel"><div  id="slider-7" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="slider-8" style="height:200px;"></div></div>
</div>
  
<!-- Labels für speed uns size -->
<div class="ReglerGroup2">
<div class="labelGroup2">
<label for="amountSice">sice:</label>
<input class="labelInput2" type="text" id="amoundSpeed" readonly>
<label for="amoundSpeed">speed:</label>
<input class="labelInput2" type="text" id="amountSice" readonly>
</div>
<!-- div kontainer für size and speed -->
<div class="ReglerEinzel" ><div  id="speed" style="height:200px;"></div></div>
<div class="ReglerEinzel"><div  id="size" style="height:200px;"></div></div>
</div>

<div class="buttonGroub1">

<button id="effect1">Effect 1</button>
<button id="effect2">Effect 2</button>
<button id="effect3">Effect 3</button>
<button id="effect4">Effect 4</button>
<button id="effect5">Effect 5</button>
<br>
<button id="effect6">Effect 5</button>
<button id="effect7">Effect 7</button>
<button id="effect8">Effect 8</button>
<button id="effect9">Effect 9</button>
<button id="effect10">Effect 10</button>
</div>

<div class="buttonGroub2">
<button id="g1">gerät 1</button>
<button id="g2">gerät 2</button>
<button id="g3">gerät 3</button>
<button id="g4">gerät 4</button>
<button id="g5">gerät 5</button>
<br>
<button id="g6">gerät 5</button>
<button id="g7">gerät 7</button>
<button id="g8">gerät 8</button>
<button id="g9">gerät 9</button>
<button id="g10">gerät 10</button>
</div>

</body>
</html>