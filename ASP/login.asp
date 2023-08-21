
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
if trim(request.form("username"))= ""then
response.write (" missing information !!! </b> please cheack your informations <a href=""javascript:history.back()"" > back </a> </b>") 
response.end 
end if 


set kenan= createobject ("ADODB.Connection")

kenan.open =("DRIVER={microsoft access driver (*.mdb)};DBQ="&server.mappath("tablo.mdb"))

set mo= server.createobject ("ADODB.recordset")

mo.open ("yenigelen"),kenan,1,3
 
mo.Addnew 

mo ("username")=request ("username")
mo ("password")=request ("password")





mo.update

mo.close

set mo=nothing 
kenan.close 
set kenan= nothing
response.write "<h1> welcome you bro</h1> "




%>
<p><a href="index.asp"> HOME</a></p>
