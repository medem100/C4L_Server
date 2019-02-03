<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.database.information" %>
 <%   
   information info = new information();
   String geraet = request.getParameter("geraet");
   if(!(geraet.equals(null) && geraet.equals(""))){
	   info.setScenenID(geraet);
	   out.print("ok");
   }else{
	   out.print("Error: Set gerate");
   }
   
 %>