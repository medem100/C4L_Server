<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="database.information" %>
 <%   
   information info = new information();
   String sice = request.getParameter("sice");
   if(!(sice.equals(null) && sice.equals(""))){
	   info.setSice(sice);
	   out.print("ok");
   }else{
	   out.print("Error: set sice Value");
   }
   
 %>