<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        
        table{
            margin:auto;
            width:300px;
            border:5px black ridge; 
            position:center ; 
        }
        .auto-style1 {
            width: 90px;
        }
        .link{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table cellpadding="4" cellspacing="4" >
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO UIDAI</td>
            </tr>
            <tr>
                <td class="auto-style1" >USERNAME</td>
                <td>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtuser" Display="Dynamic" ErrorMessage="Please enter username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" >PASSWORD</td>
                <td>
                    <asp:TextBox ID="txtpswd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpswd" Display="Dynamic" ErrorMessage="Please enter password " ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="Btn" runat="server" Text="LOGIN" OnClick="Btn_Click" />
                </td>
            </tr>
            
            </table>
    </form>
</body>
</html>
