<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
           .style3
           {
            font-family: "Calibri";
            font-size:large;
            font-weight:bold;
            color: #FFB6C1;
               }
            .style4
            {
                width:100%;
                }  
             .style5
             {
                 text-align:center;
                 }
              .style12
              {
               text-align:center;
               width:165px;
                  }
             .style14
             {
               text-align:center;
               width:166px;
                 }
    </style>
</head>
<body bgcolor="white">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" align="center">
            <tr>
                <td class="style2">
                    Online Examination System</td>
            </tr>
            <tr>
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="hotpink" style="color:#000099; font-size: medium;">
                    &nbsp;
                    <table align="center" class="style4">
                     <tr>
                     <td class="style20"><a href="adduser.aspx">Add User</a></td>
                     <td class="style12"><a href="deleteuser.aspx">Delete User</a></td>
                     <td class="style12"><a href="setqpaper.aspx">Set Question Paper</a></td>
                     <td class="style14"><a href="paperview.aspx">Preview Question Paper</a></td>
                     <td class="style14"><a href="deleteqpaper.aspx">Delete Question Paper</a></td>
                     <td class="style14"><a href="report.aspx">View Report</a></td>
                     <td class="style5"><a href="adminlogout.aspx">Logout</a></td>
                     </tr>
                     </table>
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" bgcolor="#8C92AC" style="text-align:center">
                    <span class="style3">Designed by:- Rishabh and Dave</span>
                <td>
                    &nbsp;</td>
            </tr>
           
        </table>
    
    </div>
    </form>
</body>
</html>
