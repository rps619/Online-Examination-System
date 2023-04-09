<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteuser.aspx.cs" Inherits="deleteuser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delete User</title>
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
<body bgcolor="#E5E4E2">
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
                     <td class="style14"><a href="reports.aspx">View Report</a></td>
                     <td class="style5"><a href="adminlogout.aspx">Logout</a></td>
                     </tr>
                     </table>
                </td>
            </tr>
            <tr><td>&nbsp</td></tr>
            <tr>
                <td style="text-align:center">
                    <asp:DropDownList ID="userlist" runat="server" Height="22px" Width="200px"
                    DataSourceID="SqlDataSource1" DataTextField="username"
                    DataValueField="username"></asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [username] FROM [login] WHERE ([type] = @type)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="userlist" DefaultValue="user" Name="type" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Button ID="duser" runat="server" Text="Delete User" Width="200px"
                        style="font-weight:700" onclick="duser_Click"/>
                    
                    </td>
            </tr>
            <tr>
                <td style="text-align:center">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                    
                </td>
            </tr>
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
