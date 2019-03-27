<%@page import="c4l.server.main.Values"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
 <%   
   String sice = request.getParameter("sice");
   if(!(sice.equals(null) && sice.equals(""))){
	  Values.setSice(Integer.parseInt(sice));
	   out.print("ok");
   }else{
	   out.print("Error: set sice Value");
   }
   
 %>