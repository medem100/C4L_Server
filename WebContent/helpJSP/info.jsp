<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@page import="c4l.server.database.database" %>
 <%   
   boolean info = Boolean.valueOf(request.getParameter("info"));
   if(info){
	   out.println(information.getinfoJSON());
   }else{
	   out.print("Error 001");
   }
   
 %>