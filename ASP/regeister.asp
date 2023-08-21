
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254">
<%
if trim(request.form("name"))= ""then
response.write (" missing information !!! </b> please cheack your informations <a href=""javascript:history.back()"" > back </a> </b>") 
response.end 
end if 


set kenan= createobject ("ADODB.Connection")

kenan.open =("DRIVER={microsoft access driver (*.mdb)};DBQ="&server.mappath("tablo.mdb"))

set mo= server.createobject ("ADODB.recordset")

mo.open ("tablo"),kenan,1,3
 
mo.Addnew 
mo ("name")=request ("name")

mo("surname")=request ("surname")
mo ("job")=request ("job")


mo.update

mo.close

set mo=nothing 
kenan.close 
set kenan= nothing
response.write " your informations  has been added "




%>
<p><a href="index.asp"> HOME</a></p>