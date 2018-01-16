<%-- 
    Document   : Conection
    Created on : Dec 27, 2017, 2:12:49 PM
    Author     : 1415506
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


    <%-- start web service invocation --%>
    <%
    try {
        
        double temperatura=Double.parseDouble(request.getParameter("temperatura"));
        String fUnidad = request.getParameter("fUnidad");
        String tUnidad = request.getParameter("tUnidad");
                     
	net.webservicex.ConvertTemperature service = new net.webservicex.ConvertTemperature();
	net.webservicex.ConvertTemperatureSoap port = service.getConvertTemperatureSoap();
	 // TODO initialize WS operation arguments here
	double temperature = temperatura;
	net.webservicex.TemperatureUnit fromUnit = net.webservicex.TemperatureUnit.fromValue(fUnidad);
	net.webservicex.TemperatureUnit toUnit = net.webservicex.TemperatureUnit.fromValue(tUnidad);
                
        // TODO process result here
	double result = port.convertTemp(temperature, fromUnit, toUnit);
        out.println("La temperatura es = "+result);
        
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%>
