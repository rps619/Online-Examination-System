<%@ Page Language="C#" AutoEventWireup="true" CodeFile="report.aspx.cs" Inherits="report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor= "#E5E4E2">
    <form id="form1" runat="server">
    <div >
    

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
            <tr><td>&nbsp</td></tr>
            <tr><td>&nbsp</td></tr>
            <tr><td>
            <table align="center" class="style4">
            <tr>
            <td class="style22">User</td>
            <td class="style22">Date</td>
            <td class="style22">Test Name</td>
            <td class="style22">Marks</td>
            <td class="style22">Total Marks</td>
            </tr>

            <%
                while (dr.Read())
                {
                 %>
                <tr>
                <td bgcolor="#ff99cc" class="style22"><%=dr.GetValue(0)%></td>
                <td bgcolor="#ff99cc" class="style22"><%=dr.GetValue(1)%></td>
                <td bgcolor="#ff99cc" class="style21"><%=dr.GetValue(2)%></td>
                <td bgcolor="#ff99cc" class="style20"><%=dr.GetValue(3)%></td>
                <td bgcolor="#ff99cc" class="style5"><%=dr.GetValue(4)%></td>
                </tr>
                <%
                }
                    con.Close();   %>
            </table>
            </td></tr>
            <tr><td>&nbsp</td></tr>
            <tr>
                <td colspan="2" bgcolor="#8C92AC" style="text-align:center">
                    <span class="style3">Designed by:- Rishabh and Dave</span></td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
