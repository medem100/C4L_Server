<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   String scenenID = request.getParameter("scene");
   if(!(scenenID.equals(null) && scenenID.equals(""))){
	   information.addScenenID(Integer.parseInt(scenenID));
	   out.print("ok");
   }else{
	   out.print("Error: Set Scene");
   }
   
 %>