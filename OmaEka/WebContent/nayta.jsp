<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="scripts/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>

<body>

<%
	String etunimi = request.getParameter("etunimi");
	String sukunimi = request.getParameter("sukunimi");
	String sahkoposti = request.getParameter("sahkoposti");
	String puhelin = request.getParameter("puhelin");
	String syntymavuosiStr = request.getParameter("syntymavuosi");
	int syntymavuosiInt = Integer.parseInt(syntymavuosiStr);
	int ika = 2021-syntymavuosiInt;
	
	
	if (ika<18){
		out.print("Alaikäinen");
	} else {
		out.print("Etunimi: " + etunimi
				+ "<br>Sukunimi: " + sukunimi
				+ "<br>Sähköposti :" + sahkoposti
				+ "<br>Puhelin: " + puhelin 
				+ "<br>Syntymävuosi: " + syntymavuosiStr  
				+ "<br>Ikä: " + ika + " vuotta");
	}
%>



<span id="ika2"></span>

<script>
//ei toimi jostain syystä
$(document).ready(function(){
	var d = new Date();
	var n = d.getFullYear();
	var syntymavuosiStr = requestURLParam("syntymavuosi");
	int syntymavuosiInt = Integer.parseInt(syntymavuosiStr);
	int ika2 = n-syntymavuosiInt;
	
	$("#ika2").text("Ikä on " + ika2);
	
});
</script>

<script>
         setTimeout(function(){
            window.location.href = 'http://localhost:8080/OmaEka/kysy.jsp';
         }, 5000);
</script>

</body>
</html>