<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DASHBOARD.aspx.cs" Inherits="WebApplication1.DASHBOARD" %>

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
       
        
        
        .auto-style4 {
            color: #0000FF;
        }
        .auto-style5 {
            color: #009933;
        }
        .auto-style7 {
            width: 363px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            width: 133px;
        }
        .auto-style10 {
            margin-right: 0px;
        }
        .auto-style18 {
            width: 120px;
        }
        .auto-style19 {
            color: #FF0000;
        }
        .auto-style20 {
            font-weight: bold;
        }
        .auto-style21 {
            width: 100%;
        }
        .auto-style23 {
            height: 17px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            &nbsp;&nbsp;<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <h1><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </span><span class="auto-style5">WELCOME TO AADHAR</span></h1>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:Image ID="Image3" runat="server" CssClass="auto-style10" Height="253px" ImageUrl="https://imgeng.jagran.com/images/2021/aug/19_05_2020-aadhar_202842101628272659883.jpg" Width="501px" />
            </h1>
        </div>
        <table cellpadding="4" cellspacing="4" class="auto-style7" >
            <tr>
                <td style="background-color: #99CC00" colspan="2">
                    <asp:Image ID="Image1" runat="server" AlternateText="INSERT IMAGE" CssClass="auto-style8" Height="434px" ImageUrl="https://pngimage.net/wp-content/uploads/2018/05/aadhar-card-logo-png-3.png" Width="667px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>First Name</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtfname" Display="Dynamic" ErrorMessage="Please enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>Last Name</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtlname" runat="server" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>GENDER </strong> </td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>AGE</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtage" runat="server" TextMode="Date"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage" Display="Dynamic" ErrorMessage="Please Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>PH. NUMBER</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtnum" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>ADDRESS</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="Phone"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00"><strong>Adhar no.</strong></td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:TextBox ID="txtadhar" runat="server" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtadhar" Display="Dynamic" ErrorMessage="Please Enter Adhar no." ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #99CC00">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <span class="auto-style19"><strong>Insert image only in .jpeg, .jpg, .png, .bmp</strong></span><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td class="auto-style18" style="background-color: #99CC00">
                    <asp:Image ID="picturebox2" runat="server" Height="279px" Width="369px" AlternateText="INSERT IMAGE" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2" style="background-color: #99CC00">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="auto-style21">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="SAVE " OnClick="Button1_Click" CssClass="auto-style20" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Clear" Width="72px" CssClass="auto-style20" />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2" style="background-color: #99CC00">
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style23"><strong><asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Update " Height="30px" Width="102px" CssClass="auto-style20" />
                &nbsp;</strong></td>
                            <td class="auto-style23"><strong>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="DELETE" Height="30px" Width="102px" CssClass="auto-style20" />
                                </strong></td>
                            <td class="auto-style23">
                                <br />
                                <strong>
                                <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGNOUT" Height="30px" Width="102px" CssClass="auto-style20" />
                                </strong>
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </table>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    </form>
</body>
</html>
