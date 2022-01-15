<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	primeira pagina JSP
<%! boolean formatar = true; %> 
<%! 
   String today(){
	java.text.SimpleDateFormat dt = new java.text.SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	return dt.format(new java.util.Date());
	} 
	%>

	<h1>A Data de hoje é: <%=new java.util.Date()%> </h1> 
	<h1>A Data de hoje é: <%=today()%> </h1>
	<h1>A Data de hoje é: <% if(formatar){
				out.println(today());
				}else{ 
				out.println(new java.util.Date());
				}%> </h1> 
				
				
							<!--  Segunda parte do exercicio -->
			
			<%! int contagem = 15;%> 
			<%! int soma = 0; %> 
								
			<%
			for(int i = 0; i< contagem; i++){
			
					soma+=i;
					 out.println(soma);
			}
			%> 
				 
				<h1>soma de:
				  <%=soma
				  %></h1>
				
				
				
				
				<!--  Segunda parte do exercicio -->
				<%@ page import="java.util.Calendar" %> 
				<%@ page import="java.util.Date" %> 
				
				
				<%
				Calendar cal = Calendar.getInstance();
				Date dt = new Date(); 
				
				int segundos = cal.get(Calendar.SECOND);  %> 
				
				<h1>Segundos: <%=segundos %></h1>
				
				<%
				
				if (segundos % 2 == 0){
					out.println("E par");
				} else {
					out.println("E Impar");
				} 

				%> 
				
	
				
				
				
				
				
				
				
				
				
				
				
				
				
	
				
				


</body>
</html>