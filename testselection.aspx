<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testselection.aspx.cs" Inherits="testselection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Test Selection </title>


    <style type="text/css">
        .style1 {
            width: 1024px;
        }
        .style2
        {
            font-family: "Calibri";
            font-size:xx-large;
            font-weight:bold;
            color: black;
            text-align:center;
            padding:0;
            }
                 .style9
               {
                   width:100%;
                   }
                   
                   .style10
               {
                   width:280px;
                   }
                   .style11
               {
                   width:448px;
            height: 26px;
        }
                 
              .style12
              {
               text-align:center;
               width:165px;
            height: 26px;
        }
             </style>

</head>
<body bgcolor="#E5E4E2">
    <form id="form1" runat="server">
    <div>
        <table align="center" class="style1">

        <tr><td class="style2">
                    Online Examination System</td></tr>
      
        <tr>
            
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
                    <td >
                    &nbsp;</td>

            </tr>

        <table align="center" class="style1">

        <tr><td bgcolor="#ff99cc">
        &nbsp;
        </td></tr>
        <tr><td style="text-align:center"><b><a href="logout.aspx">Logout</a></b></td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td style="text-align:center"> 
        <table align="center" class="style9">
     
      
       <tr>
        <td class="style13" bgcolor="#ff99cc">Select A Test</td></tr>
        <tr><td>&nbsp</td></tr>
        <tr><td bgcolor="#ff99cc">
        
            <asp:DropDownList ID="testlist" runat="server" Height="22px" Width="200px" DataSourceId="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [settype] FROM [question]"></asp:SqlDataSource>
        </td></tr>
        <tr><td>&nbsp</td></tr>
        <tr><td bgcolor="#ff99cc">
        <asp:Button ID="submit" runat="server" Text="Submit" Width="200px"  
                style="font-weight:700" onclientclick="Button1_Click" 
                onclick="submit_Click" />
        
        </td></tr>

        </table></td><tr><td>&nbsp;</td></tr>

        <tr>
                <td colspan="2" bgcolor="#8C92AC" style="text-align:center">
                    <span class="style3">Designed by:- Rishabh and Dave</span>
                </td> <td>
                    &nbsp;</td>
            </tr>
        
        
        </table>
        
        
        
        
    </div>
    </form>
    </body>
</html>
