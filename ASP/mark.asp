
 <!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
		<title>mark</title>
		<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>


	<div id="style1">
			
			

		<h1>welcome to karabuk </h1>

		
	</div>

	<div id="stylemidlle">

		<div id="styleleft">
				<ul>

		   	<li> <a href="index.html"> Home </a> </li>
			<li> <a href="Forum.html"> Forum </a> </li>
			<li> <a href=" People.html "> People</a></li> 
			<li> <a href="photos.html">photos</a> </li>
		    <li> <a href="videos.html"> Videos </a> </li>
			<li> <a href="kayit.html">  Register </a> </li>
		
			<li> <a href="map.html">map</a></li>
                        <li> <a href="information.html">information</a></li>
			<li> <a href="login.html"> log _in</a></li>


			</ul>

			<br> <br> <br> <br> <br>

				

	</div>
	<div id="styleright">

		<h2> mark abi </h2>
			
		

		<img src="mark.jpg" width="550" height="450" style="position: absolute;left:20%; margin-top: 50px"><br>
	
		<fieldset style="position: absolute;top:15%;width: 500px;height: 400px;margin-top: 50%"  >
			
			<form action="comment_1.asp">	<textarea rows="3" cols="80" name="mark"></textarea>
				<input type="submit" name="submit" value="submit">
			</form>
						<%
								Connection_road=SERVER.MAPPATH("tablo.mdb")
								set conn=Server.CreateObject("ADODB.Connection")
								conn.Open "DBQ=" & Connection_road &   ";Driver={Microsoft Access Driver (*.mdb)}"
								set rs = Server.CreateObject("ADODB.recordset")							
								rs.Open "SELECT name,time,comment FROM mark", conn
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
		
	
	
			<form action="Register.asp" method="post" >

				E-mail :<input type="text" name="email" ><br><br>
				password:<input type="password" name="password"><br>

				<input type="submit" name=" submit" value="submit" type="submit" >
			</form>
	</div>


	
</body>
</html>

	
