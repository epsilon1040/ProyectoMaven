<%-- 
    Document   : index
    Created on : Dec 27, 2017, 11:07:00 AM
    Author     : 1415506
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversión de Temperatura</title>
        
       <script src="JS/jquery.min.js"></script>
        <script type="text/javascript">
           function Convertir()
            {
                          
                event.preventDefault();
                $.ajax({
                    type:"POST",
                    url:"Conection.jsp",
                    data:$('#frmBuscar').serialize(),
                    success:function(volado)
                    {
                        $("#resultado").html(volado);
                    },
                    dataType:"html"
                });
            }
            
            
            
        </script>
        
        
    </head>
    <body style="background-color:darkolivegreen">
        <h1 style="alignment-adjust:central">Conversión de Temperatura Versión 1.9</h1>
        <br>
        <form name="Formulario" id="frmBuscar">
            <h2> Temperatura </h2>
            <input type="text" class="form-control" name="temperatura" id="temperatura"> </input>
           
            <h3> De Unidad &zwj; &zwj; &zwj;</h3>
            <select class="form-control" name="fUnidad">
                <option>Seleccione escala</option>
                <option value="degreeCelsius">Grados Celsius</option>
                <option value="degreeFahrenheit">Grados Fahrenheit</option>
                <option value="degreeRankine">Grados Rankine</option>
                <option value="degreeReaumur">Grados Reaumur</option>
                <option value="kelvin">Grados kelvin</option>                              
            </select>
         
             <h3> A Unidad &zwj; &zwj; &zwj; &zwj;</h3>
            <select class="form-control" name="tUnidad">
                <option>Seleccione escala</option>
                <option value="degreeCelsius">Grados Celsius</option>
                <option value="degreeFahrenheit">Grados Fahrenheit</option>
                <option value="degreeRankine">Grados Rankine</option>
                <option value="degreeReaumur">Grados Reaumur</option>
                <option value="kelvin">Grados kelvin</option>                              
            </select>
            <br></br>
            <br>
             <button name="convertir" class="btn btn-info btn-lg" onclick="Convertir();">Convertir</button>
                
     </form>
        <br>
        <br>
           <div class="row clearfix" id="resultado"> </div>  
        
    </body>
</html>
