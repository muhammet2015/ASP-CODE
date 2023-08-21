<%


	Connection_road=SERVER.MAPPATH("tablo.mdb")
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Open "DBQ=" & Connection_road &   ";Driver={Microsoft Access Driver (*.mdb)}"							
	set mo = Server.CreateObject("ADODB.recordset")
	mo.open "safran", conn, 1, 3
	mo.addnew
	mo("name")="safran"
	mo("time")=now()
	mo("comment")=request("safran")
	mo.update
	mo.close
	conn.close
	Response.redirect("index.html")

%>