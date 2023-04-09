<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .style1
        {
            width: 1024px;
           
        }
        .style2
        {
            font-family: "Calibri";
            font-size:xx-large;
            font-weight:bold;
            color: black;
            text-align:center;
            padding:0;}
    </style>
</head>
<body bgcolor= "#E5E4E2">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center">
            <tr>
                <td colspan="2" class="style2">
                Online Examination System
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#ff99cc" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#ff99cc">
                    User Name:</td>
                <td bgcolor="#ff99cc">
                    <asp:TextBox ID="name" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#ff99cc">
                    Passowrd:</td>
                <td bgcolor="#ff99cc">
                    <asp:TextBox ID="pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="submit" runat="server" Height="28px" Text="login" Width="95px" 
                        Font-Bold="true" onclick="submit_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="msg" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" bgcolor="#8C92AC" style="text-align:center">
                    <span class="style3">Designed by:- Rishabh and Dave</span></td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        onselecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [login]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
