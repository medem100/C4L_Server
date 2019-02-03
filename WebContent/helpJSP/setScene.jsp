<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   information info = new information();
   String SceneID = request.getParameter("scene");
   if(!(SceneID.equals(null) && SceneID.equals(""))){
	   info.setScenenID(SceneID);
	   out.print("ok");
   }else{
	   out.print("Error: Set Scene");
   }
   
 %>