<%


	Connection_road=SERVER.MAPPATH("tablo.mdb")
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Open "DBQ=" & Connection_road &   ";Driver={Microsoft Access Driver (*.mdb)}"							
	set mo = Server.CreateObject("ADODB.recordset")
	mo.open "enistayn", conn, 1, 3
	mo.addnew
	mo("name")="kenan"
	mo("time")=now()
	mo("comment")=request.form("anas")
	mo.update
	mo.close
	conn.close
	Response.redirect("index.html")

%>