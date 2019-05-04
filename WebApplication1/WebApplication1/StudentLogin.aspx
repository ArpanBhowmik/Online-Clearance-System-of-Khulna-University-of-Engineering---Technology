<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="WebApplication1.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: 24px;
            width: 1264px;
            height: 29px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
        }
        .auto-style10 {
            width: 901px;
            margin-left: 0px;
            height: 98px;
        }
        .auto-style11 {
            width: 71px;
            height: 88px;
        }
        .auto-style12 {
            height: 88px;
            width: 1647px;
        }
        .auto-style13 {
            height: 210px;
            width: 373px;
            margin-bottom: 47px;
            margin-right: 0px;
            margin-top: 101px;
            margin-left: 497px;
        }
        .auto-style16 {
            height: 16px;
            margin-top: 0px;
            width: 1350px;
            margin-left: 0px;
        }
        .auto-style17 {
            height: 84px;
            margin-bottom: 90px;
        }
    </style>
</head>
<body style="background-color:; height: 643px; margin-right: 8px; width: 1352px;">
     <form id="form1" runat="server">
     <div id="main">
        <div id="topdiv">
            <div style="font-family: Verdana; margin-right: 0px; margin-top: 0px; margin-bottom: auto;" class="auto-style10">
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11" style="background-color: #00FF00">
                            <img id="ImgLogo" src="Image/logo.jpg" height="90px" class="auto-style7" />
                        </td>
                        <td class="auto-style12" style="background-color: #00FF00">
                            <div class="auto-style9">
                                Online Clearance System of KUET</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
         <div class="auto-style13" style="background-color: #00FFFF">
             <br />
             <br />
             &nbsp;&nbsp;&nbsp;
             UserName: <asp:TextBox ID="TextBox1" runat="server" style="width:200px;height:23px;"></asp:TextBox>
             <br /><br />
             &nbsp;&nbsp;&nbsp;
             Password:&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" style="width:200px;height:23px;"></asp:TextBox>
             <br /><br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
             <br />&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
             <br />
         </div>
         <div class="auto-style17">
         </div>
     </form>
     <div>
         <p class="auto-style16" style="background-color: #000000; color: #FFFFFF; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &#169 KUET 2019,Developed by:Arpan Bhowmik(B.Sc.Engg.,CSE)</p>
         </div>


</body>
</html>
