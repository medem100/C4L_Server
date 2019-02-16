<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   String sice = request.getParameter("sice");
   if(!(sice.equals(null) && sice.equals(""))){
	  information.setSice(Integer.parseInt(sice));
	   out.print("ok");
   }else{
	   out.print("Error: set sice Value");
   }
   
 %>