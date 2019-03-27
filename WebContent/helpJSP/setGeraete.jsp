<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.main.*" %>
 <%   
   Values info = new Values();
   String geraet = request.getParameter("geraet");
   if(!(geraet.equals(null) && geraet.equals(""))){
	   Values.setDevice(Integer.parseInt(geraet));
	   out.print("ok");
   }else{
	   out.print("Error: Set gerate");
   }
   
 %>