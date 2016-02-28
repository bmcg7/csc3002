<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Straightforward.aspx.vb" Inherits="Straightforward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Straightforward Pattern Matching</title>
    <style>
#header {
    font-family:Calibri;
    background-color:grey;
    color:white;
    padding-top:5px;
    top:0px;
    height:60px;
    border-bottom-style:solid;
}
#navbar {
    font-family:Calibri;
    /*line-height:20px;*/
    background-color:#eeeeee;
    /*height:100%;*/
    width:120px;  
    border-right-style:solid;
}
#main {
    width:100%; 	 
}
#footer {
    position:absolute;
    bottom:0px;
    width:100%;
    font-family: Calibri;
    background-color: grey;
    color: white;
    clear: both;
    text-align: center;
    padding: 5px;
} 
</style>
 <script "text/javascript">


 </script>
</head>
<body>
    <form id="straightforwardForm" runat="server">
     <%-- HEADER --%>
    <div id ="header">
           <h1>&nbsp;&nbsp;&nbsp;&nbsp;Straightforward Pattern Matching</h1>
    </div>

    <%-- TABLE CONTAINING NAVBAR & MAIN CONTENT --%>
    <asp:Table Height="100%" runat="server">
        <asp:TableRow> 
            <asp:TableCell> <%-- NAVBAR COLUMN--%>
                <div id="navbar"> 
                    <asp:Table Height="100%" runat="server">
                            <asp:TableRow Height="120px"><asp:TableCell><a href="Default.aspx">About</a></asp:TableCell></asp:TableRow>
                            <asp:TableRow Height="120px"><asp:TableCell><a href="Straightforward.aspx">Straightforward</a></asp:TableCell></asp:TableRow>
                            <asp:TableRow Height="120px"><asp:TableCell><a href="KMP.aspx">K.M.P.</a></asp:TableCell></asp:TableRow>
                            <asp:TableRow Height="120px"><asp:TableCell><a href="BoyerMoore.aspx">Boyer-Moore</a></asp:TableCell></asp:TableRow>   
                    </asp:Table>
                </div>
            </asp:TableCell>
            <asp:TableCell> <%-- MAIN COLUMN --%>
                <asp:Table Height="100%" Width="100%" runat="server">
                    <asp:TableRow>
                        <asp:TableCell Width="88%" VerticalAlign="Top"> 
                            <div id="main">
                                <asp:Table Height="100%" Width="8%" runat="server">
                                    <asp:TableRow Height="30%">
                                        <asp:TableCell Width="8%" BorderStyle="Solid" style="font-size:x-large; font-family:Calibri"> Pattern:</asp:TableCell>   
                                        <asp:TableCell Width="92%" BorderStyle="Solid"><asp:Label id="patternString" style="font-size:x-large; font-family:'Courier New'" Text="ABC" runat="server"/></asp:TableCell>   
                                    </asp:TableRow>
                                    <asp:TableRow Height="30%">
                                        <asp:TableCell Width="8%" BorderStyle="Solid" style="font-size:x-large; font-family:Calibri">Text:</asp:TableCell>   
                                        <asp:TableCell Width="92%" BorderStyle="Solid"><asp:Label id="textString" style="font-size:x-large; font-family:'Courier New'" Text="ABDABCABEBACEBDBAEBCBABE" runat="server" /></asp:TableCell>   
                                    </asp:TableRow>
                                 </asp:Table>
                                <br /><br /><br /><br />
                                <asp:Table runat="server" style="left:0px">
                                    <asp:TableRow Height="10%"> 
                                            <asp:TableCell runat="server"><asp:Button ID="backbutton" text="<--" runat="server" ViewStateMode="Enabled" Width="100px" /></asp:TableCell>  
                                            <asp:TableCell runat="server"><asp:Button ID="forwardbutton" text="-->" runat="server" ViewStateMode="Enabled" Width="100px"/></asp:TableCell>
                                            <asp:TableCell runat="server"><asp:Button ID="reset" text="Reset" runat="server" ViewStateMode="Enabled" Width="100px"/> </asp:TableCell>  
                                    </asp:TableRow>
                                    <asp:TableRow Height="10%"> 
                                            <asp:TableCell BorderStyle="Solid" runat="server"><asp:Label id="stringer1" style="font-size:large; font-family:'Courier New'" Text="P: " runat="server" /></asp:TableCell>  
                                            <asp:TableCell BorderStyle="Solid" runat="server"><asp:Label id="stringer2" style="font-size:large; font-family:'Courier New'" Text="T: " runat="server" /></asp:TableCell> 
                                            <asp:TableCell BorderStyle="Solid" runat="server"><asp:Label id="diagnostic2" style="font-size:large; font-family:'Courier New'" Text="Index: 0" runat="server" /></asp:TableCell>  
                                            <asp:TableCell runat="server"><asp:Label id="diagnostic" style="font-size:large; font-family:'Courier New'" Text="" runat="server" /></asp:TableCell> 
                                    </asp:TableRow>
                                    <asp:TableRow Height="10%"> 
                                            <asp:TableCell runat="server"><asp:Label id="matcher" style="font-size:large; font-family:'Courier New'" Text="No Match." runat="server" /></asp:TableCell> 
                                    </asp:TableRow>
                                </asp:Table>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

    <div  id="footer">
        Ben McGrady 2015 
    </div>
    </form>
</body>
</html>

