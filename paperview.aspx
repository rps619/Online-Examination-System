<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paperview.aspx.cs" Inherits="paperview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paper View</title>


    <style type="text/css">
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
        .style16
        {
            text-align:center;
            width:166px;
            font-family: "Calibri";
            font-size:medium;
            font-weight:bold;
            }
          .style17{ width:36px;}
          .style19{ width:623px;}
          .style20{ width:214px;}
          .style21{ width:61px;}
          .style22{ width:173px;}
        
        
        
        
        
    </style>



</head>
<body bgcolor= "#E5E4E2">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr> 
                <td class="style2">Online Examination System</td>
            </tr>
            <tr>
            <td bgcolor="white"> &nbsp;</td>
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
            <tr> <td>&nbsp;</td>
            </tr> 
            <tr align="center"><td class="style16">
                Select a Question Paper to Preview
            
            </td></tr>
            <tr><td>&nbsp;</td>
            </tr>
            <tr>
            <td style="text-align:Center ">
            &nbsp;<asp:DropDownList ID="testlist" runat="server" AutoPostBack="True" 
            Height="24px" Width="170px" 
                    oneselectedindexchanger="testlist_SelectedInsexChanged" 
                    DataSourceID="SqlDataSource1" DataTextField="settype" 
                    DataValueField="settype" onselectedindexchanged="testlist_SelectedIndexChanged"></asp:DropDownList>
            </td>
            </tr>
            <tr align="center" ><td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [settype] FROM [question]"></asp:SqlDataSource>
                    <asp:HiddenField ID="HiddenField1" runat="server" />
            </td></tr>

        <tr>
            <td>
                <table align="center" class="style4">
                    <tr>
                    <td>&nbsp;</td>
                    <td bgcolor ="pink">
                    <table align="center" class="style4">
                    <tr>
                    <td  class="style17"> QID</td>
                    <td class="style19">Question</td>
                    <td class="style20">Choices</td>
                    <td>&nbsp</td>
                    </tr>
                    <%
                        while (dr.Read())
                        { %><%ans=Convert.ToInt16(dr.GetValue(7))%>
                        <%if(ans==1)
                        {
                        CheckBox1.Checked=true;
                        CheckBox2.Checked=false;
                        CheckBox3.Checked=false;
                        CheckBox4.Checked=false;
                      
                        }%>
                        <%
                            if(ans == 2){
                                CheckBox1.Checked=false;
                                CheckBox2.Checked=true;
                                CheckBox3.Checked=false;
                                CheckBox4.Checked=false;
                                 
                            }
                             %>
                             <%
                            if(ans == 3){
                                CheckBox1.Checked=false;
                                CheckBox2.Checked=false;
                                CheckBox3.Checked=true;
                                CheckBox4.Checked=false;
                                 
                            }
                             %>
                             <%
                            if(ans == 4){
                                CheckBox1.Checked=false;
                                CheckBox2.Checked=false;
                                CheckBox3.Checked=false;
                                CheckBox4.Checked=true;
                               
                            } }
                             %>
                        
                         <tr>
                         <td bgcolor="white" class="style17">
                         <%=dr.GetValue(0) %></td>
                         <td bgcolor="white" class="style19">
                         <%=dr.GetValue(1) %></td>
                         <td bgcolor="white" class="class20">
                         <table align="center" class="style4">
                         <tr>
                         <td class="style22">
                         <%=dr.GetValue(3) %></td>
                         <td>
                         <asp:CheckBox ID="CheckBox1" runat="server" />
                         </td></tr>
                         <tr>
                         <td class="style22">
                         <%=dr.GetValue(4) %></td>
                         <td>
                         <asp:CheckBox ID="CheckBox2" runat="server" />
                         </td>
                         </tr>
                         <tr>
                         <td class="style22">
                         <%=dr.GetValue(5) %></td>
                         <td>
                         <asp:CheckBox ID="CheckBox3" runat="server" />
                         </td>
                         </tr>

                         <tr>
                         <td class="style22">
                         <%=dr.GetValue(6) %></td>
                         <td>
                         <asp:CheckBox ID="CheckBox4" runat="server" />
                         </td>
                         </tr>
                         </table>
                         </td>  
                         
                         <td bgcolor="white"><a href="editqpaper.aspx?settype=<%Response.Wtite(dr.GetValue(2));%>&qid=<%Response.Wtite(dr.GetValue(0)); %>"><b>Edit<br>or<br>Delete</b></a></td> 
                         </tr><%} %>
                         <tr>
                         <td bgcolor="white" colspan="4">
                         <table align="center" class="style4">
                         <tr align="center">
                         <td class="style21">&nbsp;
                         </td>
                         <td>
                             <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                                 onclientclick="Button1_Click" Text="Add Question" Width="200px" />
                         </td>
                         
                         </tr>
                         </table>
                         
                         </td>
                         
                         </tr>


                    </table>
                    
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
