<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="c4l.server.main.*" %>
 <%   
   boolean effect = Boolean.valueOf(request.getParameter("effect"));
   if(effect){
	   out.println(Values.getEffectID());
   }else{
	   out.print("Error 002");
   }
   
 %>