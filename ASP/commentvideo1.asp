<%


	Connection_road=SERVER.MAPPATH("tablo.mdb")
	set conn=Server.CreateObject("ADODB.Connection")
	conn.Open "DBQ=" & Connection_road &   ";Driver={Microsoft Access Driver (*.mdb)}"							
	set mo = Server.CreateObject("ADODB.recordset")
	mo.open "video1", conn, 1, 3
	mo.addnew
	mo("name")="video1"
	mo("time")=now()
	mo("comment")=request("v1")
	mo.update
	mo.close
	conn.close
	Response.redirect("index.html")

%>