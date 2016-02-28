<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pattern Matching Algorithms</title>
    <style>
#header {
    background-color:grey;
    color:white;
    text-align:center;
    padding:5px;
    font-family:Calibri;
}
#navbar {
    line-height:120px;
    background-color:#eeeeee;
    height:400%;
    width:100px;
    float:left;
    padding:5px;
    font-family:Calibri;	      
}
#main {
    width:100%;
    float:left;
    padding:10px;	 
    font-family:Calibri;	 
}
#footer {
    background-color:grey;
    color:white;
    clear:both;
    text-align:center;
   padding:5px;	 	
   font-family:Calibri; 
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div id ="header">
           <h1>Algorithm Learning Aid</h1>
    </div>
    <div id="main">
        <br />
        <asp:Table runat="server" HorizontalAlign="Center" Width="50%">
            <asp:TableRow BorderStyle="Solid"> 
                <asp:TableCell Width="100%" Height="120px" BorderStyle="Solid" VerticalAlign="Top" HorizontalAlign="Left" ColumnSpan="3" style="font-size:large; font-family:calibri">
                   This site contains tools to show how three pattern matching algorithms function - step by step.<br />
                   On each page, use the button controls to move forwards/backwards to see exactly how the algorithms would perform.<br />
                   To begin, click on one of the algorithms below.
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell Width="33%" Height="80px" BorderStyle="Solid" HorizontalAlign="Center"> <a href="Straightforward.aspx" style="font-size:xx-large; font-family:calibri">Straightforward  </a></asp:TableCell>
                <asp:TableCell Width="33%" Height="80px" BorderStyle="Solid" HorizontalAlign="Center"> <a href="KMP.aspx" style="font-size:xx-large; font-family:calibri">K.M.P.                       </a></asp:TableCell>
                <asp:TableCell Width="33%" Height="80px" BorderStyle="Solid" HorizontalAlign="Center"> <a href="BoyerMoore.aspx" style="font-size:xx-large; font-family:calibri">Boyer-Moore</a></asp:TableCell>
            </asp:TableRow> 
        </asp:Table>
         <br /><br /> <br />
    </div>
    <div  id="footer">
        Ben McGrady 2015
    </div>

    </form>
</body>
</html>
