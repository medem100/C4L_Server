<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="java.util.List"%>
<%@ page import="database.information" %>
 <%   
   information info = new information();
   String adress = request.getParameter("adress");
   String value = request.getParameter("value");
   if(!(adress.equals(null) && adress.equals(""))){
	   info.setAdrresValue(adress,value);
	   out.print("ok");
   }else{
	   out.print("Error: set Adrress Value");
   }
   
 %>