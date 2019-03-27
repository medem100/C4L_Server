<%@page import="c4l.server.main.Values"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
 <%   
   String scenenID = request.getParameter("scene");
   if(!(scenenID.equals(null) && scenenID.equals(""))){
	   Values.addScenenID(Integer.parseInt(scenenID));
	   out.print("ok");
   }else{
	   out.print("Error: Set Scene");
   }
   
 %>