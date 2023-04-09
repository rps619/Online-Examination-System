﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setqpaper.aspx.cs" Inherits="setqpaper" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Question Paper</title>


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
        .style15
        {
            height: 34px;
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
                <td align="center">
                    <asp:DropDownList ID= "testlist" runat="server" Height="20px" Width="150px"
                    AutoPostBack="True" DataSourceID="SqlDatasource1" DataTextField="settype"
                    DataValuefield="settype">
                    </asp:DropDownList>
                    <asp:TextBox ID="testname" runat="server" Visible="false"></asp:TextBox>
                    <asp:Label ID="msg1" runat="server" ForeColor="Blue"></asp:Label>


                    
                    <asp:Button ID="ntest" runat="server" Text="New Test" Width="88px" 
                        onclientclick="ntest_Click" onclick="ntest_Click"/>
                    
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [question] ORDER BY [settype]">
                    </asp:SqlDataSource>
                    
                    
                </td>
            </tr>
            <tr>
                <td bgcolor="#FFB6C1" align="center">
                   <asp:TextBox ID="question" runat="server" Height="50px" Width="800px"
                    Font-Bold="true"></asp:TextBox>
                    <asp:Label ID="msg2" runat=server ForeColor="Pink"></asp:Label>

                    </td>
            </tr>
            <tr>
                <td> &nbsp
                </td>
            </tr>
            <tr> 
                <td bgcolor="#FFB6C1" align="center">
                <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="true"
                GroupName="opt" />
                <asp:Label ID="msg3" runat=server ForeColor="Pink"></asp:Label>
                </td>
            </tr> 
            <tr> 
                <td bgcolor="#FFB6C1" align="center">
                <asp:TextBox ID="opt2" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton2" runat="server" Checked="true"
                GroupName="opt" />
                <asp:Label ID="msg4" runat=server ForeColor="Pink"></asp:Label>
                </td>
            </tr>
            <tr> 
                <td bgcolor="#FFB6C1" align="center"> 
                <asp:TextBox ID="opt3" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton3" runat="server" Checked="true"
                GroupName="opt" />
                <asp:Label ID="msg5" runat=server ForeColor="Pink"></asp:Label>
                </td>
            </tr>
            <tr> 
                <td bgcolor="#FFB6C1" align="center">
                <asp:TextBox ID="opt4" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton4" runat="server" Checked="true"
                GroupName="opt" />
                <asp:Label ID="msg6" runat=server ForeColor="Pink"></asp:Label>
                </td>
            </tr>
            
            <tr>
            <td align="center">
                <asp:Label ID="msg7" runat=server ForeColor="Pink"></asp:Label>
            </td>
            </tr>
            <tr>
            <td>
                <table align="center" class="style4">
                    <tr>
                        <td class="style16" align="right">
                            <asp:Button ID="submit" runat="server" Font-Bold="true"  Text="Add Question" 
                                onclick="submit_Click" onclientclick="submit_Click"
                            />

                        </td>
                        <td>
                            <asp:Button ID="paperview" runat="server" Font-Bold="true" Text="View Paper" />
                        </td>
                    </tr>
                </table>
            </td>
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
