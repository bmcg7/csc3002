<%@ Page Language="VB" AutoEventWireup="false" CodeFile="KMP.aspx.vb" Inherits="KMP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>K.M.P. Algorithm</title>
    <style>
#header {
    background-color:grey;
    color:white;
    text-align:center;
    padding:5px;
}
#navbar {
    line-height:120px;
    background-color:#eeeeee;
    height:100%;
    width:100px;
    float:left;
    padding:5px;	      
}
#main {
    width:350px;
    float:left;
    padding:10px;	 	 
}
#footer {
    background-color:grey;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	 
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="navbar">
            <a href="Default.aspx">About</a><br /><hr />
            <a href="Straightforward.aspx">Straightforward</a><br /><hr />
            <a href="KMP.aspx">K.M.P.</a><br /><hr />
            <a href="BoyerMoore.aspx">Boyer-Moore</a><br />
        </div>
    <div id ="header">
           <h1>Knuth, Morris & Pratt (K.M.P.) Algorithm</h1>
    </div>
    <div id="main">
        <h2>Pattern: </h2>
        <h2>Text: </h2>
    </div>
    <div  id="footer">
        Ben McGrady 2015
    </div>

    </form>
</body>
</html>


