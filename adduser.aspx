<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adduser.aspx.cs" Inherits="adduser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add User</title>
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
                  width:650px }
              .style16
              {
                  width: 27px;}
               .style17
               {
                   width: 576px;
                   font-weight: 700;}
                   
                .style18{width: 99px}
                
                .style19{ width: 25px}
                
                .style20
                {
                    text-align: center;
                    width: 165px;
                    color: White;
                    text-decoration: underline;}
                
               
          
    </style>
</head>
<body bgcolor="#E5E4E2">
    <form id="form1" runat="server">
    <div>
    <table class="style1" align="center" >
        <tr>
            <td colspan="3" class="style2">
                Online Examination System</td>
        </tr>
        <tr>
            
                <td bgcolor="#FFB6C1">
                    &nbsp;</td>
            </tr>
        </tr>

        <tr>
            <td bgcolor="#ff99cc" style="color:#000099; font-size: medium; font-weight:700">
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
            <td>
                &nbsp;</td></tr> 
    <table align="center" class="style15">
    <tr>
    <td class="style16">
    &nbsp;</td>
    <td class="style17">
    <table align="center" class="style4">
    <tr>
    <td colspan="2" align="center" bgcolor="#ff99cc">
    Register a Student Here:</td>
    
    </tr>
    <tr>
        <td>
                &nbsp;</td>
         <td>
                &nbsp;</td>
         <td>
                &nbsp;</td>
     </tr>
        <tr>
            <td bgcolor="#ff99cc">
                    User Name:</td>
                <td bgcolor="#ff99cc">
                    <asp:TextBox ID="name" runat="server" Width="200px"></asp:TextBox>
                </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Req Details" ControlToValidate="name"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#ff99cc">
                    Password:</td>
                <td bgcolor="#ff99cc">
                    <asp:TextBox ID="pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter req Details" ControlToValidate="pass"></asp:RequiredFieldValidator>
            </td>
            
        </tr>


    </table>
    </td>
    
    </tr>
     <tr>
               
                <td align="center" colspan="2">
                    <asp:Label ID="msg" runat="server"></asp:Label></td>
            </tr>
            <tr><td>&nbsp</td></tr>
        <tr>
            <td align="center" colspan="2" >
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                    Text="Register" />
            </td>
        </tr>
        <tr >
                <td bgcolor="#8C92AC" style="text-align:center" colspan="2">
                <span class="style3">Designed by:- Rishabh and Dave</span>
                    </td>
            </tr>


</table></table>
        
        </div>
    </form></body>
</html>
