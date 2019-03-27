<%@page import="c4l.server.main.Values"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
 <%   
   String speed = request.getParameter("speed");
   if(!(speed.equals(null) && speed.equals(""))){
	  Values.setSpeed(Integer.parseInt(speed));
	   out.print("ok");
   }else{
	   out.print("Error: set speed Value");
   }
   
 %>