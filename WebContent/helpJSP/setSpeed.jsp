<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="database.information" %>
 <%   
   information info = new information();
   String speed = request.getParameter("speed");
   if(!(speed.equals(null) && speed.equals(""))){
	   info.setSpeed(speed);
	   out.print("ok");
   }else{
	   out.print("Error: set speed Value");
   }
   
 %>