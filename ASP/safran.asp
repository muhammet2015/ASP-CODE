<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
	<title> safran</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="style1">
			
			

		<h1> welcome to karabuk </h1>

		
	</div>

	<div id="stylemidlle">

		<div id="styleleft">
				<ul>

		   	<li> <a href="index.html"> Home </a> </li>
			<li> <a href="Forum.html"> Forum </a> </li>
			<li> <a href="People.html"> People</a></li> 
			<li> <a href="photos.html">photos</a> </li>
		    <li> <a href="videos.html"> Videos </a> </li>
			<li> <a href="kayit.html">  Register </a> </li>
			<li> <a href="map.html">map</a></li>
			 
            <li> <a href="information.html">information</a></li>			
			<li> <a href="login.html"> log _in</a></li>


			</ul>

			<br> <br> <br>
			 
			 <form>
			 <strong style="color: white"> 	E-mail :</strong><input type="text" name="E-mail" placeholder="example@gmail.com">
			 	<strong style="color: white">password:</strong><input type="password" name="password">
			 	<input  name=" submit" value="login" type="submit" >
			 </form>

		
	

				

		</div>

		<div id="styleright">
			
		<img src="safran.jpg" width="400" height="350" style=" margin-left: 50vh;margin-bottom: 20px;">
	<fieldset style=" margin-top: 20%, height: 500px;width: 600px; margin-left: 20%">

				<form action="commentsafran.asp"> 
					<textarea rows="5" cols="68" placeholder=" wrirte your comment here !" name="safran"></textarea>
					<input name=" submit" value="send" type="submit" >
				</form>
					<%
								Connection_road=SERVER.MAPPATH("tablo.mdb")
								set conn=Server.CreateObject("ADODB.Connection")
								conn.Open "DBQ=" & Connection_road &   ";Driver={Microsoft Access Driver (*.mdb)}"
								set rs = Server.CreateObject("ADODB.recordset")							
								rs.Open "SELECT name,time,comment FROM safran", conn
							%>
						

							
							<table border="2" >

									<tr>
										<th>name</th>
										<th>time</th>
										<th style="width: 400px"> comment</th>					
									</tr>

								<%do until rs.EOF%>
								    <tr>
								    	
								    <%for each x in rs.Fields%>

								       <td><%Response.Write(x.value)%></td>
								    <%next
								    rs.MoveNext%>
								    </tr>
								<%loop
								rs.close
								conn.close
								%>
							</table>
							
			</fieldset>
     
		</div>
		
	</div>



	<div id="style4" style="position: relative;">

		
				
		</div>

		
			<script type="text/javascript">

				var kenan= " password or E-mail has not fonund "
				function mo (){
				document.write (kenan + " <br>");
	
				}
	
			</script>
	
			


	</div>

	
</body>
</html>


