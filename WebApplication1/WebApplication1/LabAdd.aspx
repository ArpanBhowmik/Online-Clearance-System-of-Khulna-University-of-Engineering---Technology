<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LabAdd.aspx.cs" Inherits="WebApplication1.LabAdd" %>

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
        .auto-style16 {
            height: 17px;
            margin-top: 44px;
            width: 1350px;
            margin-left: 0px;
        }
        ul {
           list-style-type: none;
           margin: 0;
           padding: 0;
           overflow: hidden;
           background-color: #333;
        }

       li {
          float: left;
       }

       li a {
          display: block;
          color: white;
          //text-align: center;
          padding: 14px 16px;
          text-decoration: none;

       }

       li a:hover {
          background-color: #111;
       }
       marquee{
	     color:darkgreen;
         font-size:20px;
       }
       
}



        .auto-style18 {
            margin-left: 56px;
        }



        .auto-style19 {
            height: 484px;
            margin-left: 493px;
            margin-top: 74px;
            width: 936px;
        }



        .auto-style20 {
            margin-top: 0px;
        }
        .auto-style21 {
            margin-left: 75px;
        }
        .auto-style22 {
            height: 687px;
        }



        </style>
</head>
<body style="background-color:; height: 47px; margin-right: 8px; width: 1352px;">
     <form id="form1" runat="server" class="auto-style22">
     <div id="main">
        <div id="topdiv">
            <div style="font-family: Verdana; margin-right: 0px; margin-top: 0px; margin-bottom: auto;" class="auto-style10">
                <div>
                </div>
                <table class="auto-style7">
                    <tr>
                        <td class="auto-style11" style="background-color: #00FF00">
                            <img id="ImgLogo" src="Image/logo.jpg" height="90px" class="auto-style7" />
                        </td>
                        <td class="auto-style12" style="background-color: #00FF00">
                            <div class="auto-style9">
                                Online Clearance System of KUET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Height="10px" Text="Label" CssClass="auto-style18" Font-Size="Small" ForeColor="Red"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


         </div>
         <div class="navbar">
             <ul class="auto-style7" style="background-color: #009900">
                 <li><a href="Lab.aspx">Home</a></li>
                 <li><a href="LabAdd.aspx">Add</a></li>
                 <li><a href="LabUpdate.aspx">View/Update</a></li>
                  <li><a href="LabContact.aspx">Contact</a></li>
                 <li style="float:right">
                     <asp:LinkButton runat="server" OnClick="Log">
                         Logout
                     </asp:LinkButton>
                     </li>
     
            
     
             </ul>
             &nbsp;</div>
         <div class="auto-style19" style="color: #0000FF">

             <br />
             Roll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
             <br />
             Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

             <asp:ImageButton ID="ImageButton1" src="Image/Calendar.png" runat="server" CssClass="auto-style20" Height="20px" OnClick="ImageButton1_Click" />
       
             <br />
             <br />
       
             <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                 <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                 <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                 <OtherMonthDayStyle ForeColor="#CC9966" />
                 <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                 <SelectorStyle BackColor="#FFCC66" />
                 <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                 <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
             </asp:Calendar>

             <br />
             <br />
             Total Dues&nbsp;&nbsp;
             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <br />
             <br />
             Lab Name&nbsp;&nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style7" Height="26px" Width="276px">
                 <asp:ListItem Text="Computer Networking And Multimedia Laboratory" Value="3"></asp:ListItem>
                 <asp:ListItem Text="Software And Web Engineering Laboratory" Value="4"></asp:ListItem>
                 <asp:ListItem Text="Computer Language Laboratory" Value="5"></asp:ListItem>
                 <asp:ListItem Text="Computer Hardware And Interfacing Laboratory" Value="6"></asp:ListItem>
                 <asp:ListItem Text="Digital Systems Laboratory" Value="7"></asp:ListItem>
                 <asp:ListItem Text="Electrical Circuit Laboratory" Value="8"></asp:ListItem>
                 <asp:ListItem Text="Power Electrical Laboratory" Value="8"></asp:ListItem>
                   <asp:ListItem Text="Electrical Machine Laboratory" Value="8"></asp:ListItem>
                 <asp:ListItem Text="Analog Electronics Laboratory" Value="8"></asp:ListItem>
                 <asp:ListItem Text="Digital Electronics Laboratory" Value="8"></asp:ListItem>
                  <asp:ListItem Text="Communication Engineering Laboratory" Value="8"></asp:ListItem>
                  <asp:ListItem Text="Physics Laboratory" Value="8"></asp:ListItem>
                  <asp:ListItem Text="Chemistry Laboratory" Value="8"></asp:ListItem>
                  <asp:ListItem Text="English Language Laboratory" Value="8"></asp:ListItem>

             </asp:DropDownList>
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" CssClass="auto-style21" OnClick="Button1_Click" Text="Submit" />

         </div>
       
         
     
     <p class="auto-style16" style="background-color: #000000; color: #FFFFFF; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &#169 KUET 2019,Developed by:Arpan Bhowmik(B.Sc.Engg.,CSE)</p>
              
     
         </form>
</body>
</html>
