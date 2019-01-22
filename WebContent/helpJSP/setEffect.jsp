<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="database.information" %>
 <%   
   information info = new information();
   String EffectId = request.getParameter("effect");
   if(!(EffectId.equals(null) && EffectId.equals(""))){
	   info.setEffectID(EffectId);
	   out.print("ok");
   }else{
	   out.print("Error: Set Scene");
   }
   
 %>