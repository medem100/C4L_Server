<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   String speed = request.getParameter("speed");
   if(!(speed.equals(null) && speed.equals(""))){
	  information.setSpeed(Integer.parseInt(speed));
	   out.print("ok");
   }else{
	   out.print("Error: set speed Value");
   }
   
 %>