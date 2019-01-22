<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.box {
	 float: left;
     padding: 20px;
     background: red;
}

.box2 {
	 position:relative;
	 float: left;
     padding:20px;
     background: red;
}

.box3 {
	 position:absolute;
     top:100px;
     padding: 1px;
     background: green;
}



</style>

</head>
<body>


<div class="box">Blablablub</div>
<div class="box">Blublubla</div>
<div class="box">Blablubla</div>

<div class="box3">
<div class="box2">2Blablablub</div>
<div class="box2">2Blublubla</div>
<div class="box2">2Blablubla</div>
</div>
</body>
</html>