<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.main.*" %>
 <%   
   String fader = request.getParameter("fader");
   String value = request.getParameter("value");
   if(!(fader.equals(null) && value.equals(""))){
	   Values.setFader(Integer.parseInt(fader),Integer.parseInt(value));
	   out.print("ok");
   }else{
	   out.print("Error: set Adrress Value");
   }
   
 %>