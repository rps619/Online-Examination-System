<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testpage.aspx.cs" Inherits="testpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Test</title>

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
<body>
    <form id="form1" runat="server">
    <div>

        <table align="center" class="style1">
        <tr>
        <td class="style2">Online Examination System</td>
        </tr>
        <tr>
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
            </tr>
        <tr>
        <td bgcolor="#ff99cc" align="center"><a href="logout.aspx">Logout</a></td>
        </tr>
        <tr>
        <td align="center">
        <asp:Label ID="time" runat="server"></asp:Label>
        </td>
        </tr>
        <tr>
        <td class="style4" align="center">
        <asp:Label ID="msg" runat="server" Font-Bold="true" Font-Size="Large" ForeColor="black"></asp:Label>
        </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
        <td style="text-align:center">
        <table align="center" bgcolor="#ff99cc" class="style5">
        <tr><td>&nbsp;</td>
        <td bgcolor="#ff99cc" class="style7">
        <%
            con.Open();
            rqry = "select * from question where settype'" + testtype + "'order by qid";
            rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
            rdr = rcmd.ExecuteReader();
            c=1;
            
            while(rdr.Read())
            {
                if(c != count)
                {
                    c=c+1;
                }
                else if(c == count)
                {
                     c=c+1; 
                }
            
             %><%int q = Convert.ToInt16(rdr.GetValue(0));
                qid =q; %>

                <table align="center" class="style8">
                <tr>
                <td>&nbsp</td>
                </tr>
                <tr>
                <td> Q:- <%=count%><%=rdr.GetValue(1)%></td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                <td>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" />
                    <%=rdr.GetValue(3) %>
                </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                <td>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="opt" />
                    <%=rdr.GetValue(4) %>
                </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                <td>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="opt" />
                    <%=rdr.GetValue(5) %>
                </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                <tr>
                <td>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="opt" />
                    <%=rdr.GetValue(6) %>
                </td>
                </tr>
                <tr><td>&nbsp</td></tr>
                
                <tr><td>
                <table align="center" class="style8">
                <tr>
                <td class="style9" align="center">
                <asp:Button ID="back" runat="server" Height="20px" onclientclick="back_Click" 
                        Text="Back" Width="100px" onclick="back_Click" /></td>
                <td class="style9">
                <asp:Button ID="next" runat="server" Height="20px" onclientclick="next_Click" 
                        Text="Next" Width="100px" onclick="next_Click" />
                </td>
                
                <td class="style9">
                <asp:Button ID="finish" runat="server" Height="20px" onclientclick="finish_Click" 
                        Text="Finish" Width="100px" onclick="finish_Click" />
                </td>



                </td>
                </tr>
                

                
                </table>
                <%if(count!=n)
                  { 
                    c = c+1; 
                  }
            }
                    con.Close(); %>
                
                </td></tr>
                <tr>
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
            </tr>
                <tr>
                <td colspan="2" bgcolor="#8C92AC" style="text-align:center">
                    <span class="style3">Designed by:- Rishabh and Dave</span>
                </td> <td>
                    &nbsp;</td>
            </tr>
                </table>
        
        
        </td>
        </tr>



        </table>
        </td>
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
