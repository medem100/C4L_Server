<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   String EffectId = request.getParameter("effect");
   if(!(EffectId.equals(null) && EffectId.equals(""))){
	   information.setEffectID(Integer.parseInt(EffectId));
	   out.print("ok");
   }else{
	   out.print("Error: Set Scene");
   }
   
 %>