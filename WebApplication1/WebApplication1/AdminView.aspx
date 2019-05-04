<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="WebApplication1.AdminView" %>

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
            width: 1250px;
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
            width: 1701px;
        }
        .auto-style16 {
            height: 16px;
            margin-top: 183px;
            width: 1342px;
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
       
        

        .auto-style22 {
            height: 588px;
            margin-top: 44px;
            margin-left: 496px;
            margin-right: 225px;
            width: 432px;
        }
        .auto-style23 {
            margin-left: 55px;
        }



        .auto-style24 {
            margin-right: 0px;
            margin-left: 4px;
        }
        .auto-style25 {
            width: 1339px;
        }
        .auto-style26 {
            float: right;
            width: 71px;
            margin-right: 4px;
            margin-left: 0px;
        }



        .auto-style18 {
            margin-left: 22px;
        }



        </style>
</head>
<body style="background-color:; height: 641px; margin-right: 8px; width: 1337px;">
     <form id="form1" runat="server">
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
                                Online Clearance System of KUET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Height="10px" Text="Label" CssClass="auto-style18" Font-Size="Small" ForeColor="Red"></asp:Label>
                                &nbsp;</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


         </div>
         <div class="auto-style25">
             <ul class="auto-style7" style="background-color: #009900">
                 <li><a href="AdministrationHome.aspx">Home</a></li>
                 <li><a href="AddStudent.aspx">Add</a></li>
                 <li><a href="AdminView.aspx">View/Update</a></li>
                 <li><a href="AdminContact.aspx">Contact</a></li>
                 <li class="auto-style26">
                     <asp:LinkButton runat="server" OnClick="Log" CssClass="auto-style24" Width="38px">
                         Logout
                     </asp:LinkButton>
                     </li>
     
            
     
             </ul>
             &nbsp;</div>
         <marquee behavior="alternate" direction="left" >View/Update Student Information.</marquee>
         <div class="auto-style22" style="background-color: #FFFFFF; color: #0000FF;">

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             Roll No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button3" runat="server" BackColor="#FFFFCC" OnClick="Button3_Click" Text="Show" Width="94px" />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label13" runat="server" ForeColor="Red" Text="Label"></asp:Label>
             <br />
             <br />

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             <a href="#contact">
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;
             <a href="#contact">
             <asp:DropDownList ID="DropDownList10" runat="server">
                 <asp:ListItem Text="buffer" Value="0"></asp:ListItem>
                   <asp:ListItem Text="EEE" Value="1"></asp:ListItem>
                   <asp:ListItem Text="CSE" Value="2"></asp:ListItem>
                   <asp:ListItem Text="ME" Value="3"></asp:ListItem>
                   <asp:ListItem Text="CE" Value="4"></asp:ListItem>
                   <asp:ListItem Text="IEM" Value="5"></asp:ListItem>
                   <asp:ListItem Text="ECE" Value="6"></asp:ListItem>
                   <asp:ListItem Text="TE" Value="7"></asp:ListItem>
                   <asp:ListItem Text="LE" Value="8"></asp:ListItem>
                   <asp:ListItem Text="BECM" Value="7"></asp:ListItem>
                   <asp:ListItem Text="URP" Value="8"></asp:ListItem>
                   <asp:ListItem Text="BME" Value="8"></asp:ListItem>
             </asp:DropDownList>
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
             <a href="#contact">
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:DropDownList ID="DropDownList5" runat="server">
                 <asp:ListItem Text="buffer" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Female" Value="2"></asp:ListItem>
             </asp:DropDownList>
             <a href="#contact"><br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList6" runat="server">
                 <asp:ListItem Text="buffer" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Amar Ekushey Hall" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Bangabandhu Hall" Value="2"></asp:ListItem>
                 <asp:ListItem Text="Rashid Hall" Value="3"></asp:ListItem>
                 <asp:ListItem Text="Lalan Shah Hall" Value="4"></asp:ListItem>
                 <asp:ListItem Text="Fazlul Haque Hall" Value="5"></asp:ListItem>
                 <asp:ListItem Text="Rashid Hall" Value="6"></asp:ListItem>
                 <asp:ListItem Text="Rokeya Hall" Value="7"></asp:ListItem>
              
             </asp:DropDownList>
             <a href="#contact"> 
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
             <a href="#contact"> 
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;
             <asp:DropDownList ID="DropDownList9" runat="server">
                 <asp:ListItem Text="buffer" Value="0"></asp:ListItem>
                 <asp:ListItem Text="A+" Value="1"></asp:ListItem>
                   <asp:ListItem Text="A-" Value="2"></asp:ListItem>
                   <asp:ListItem Text="B+" Value="3"></asp:ListItem>
                   <asp:ListItem Text="B-" Value="4"></asp:ListItem>
                   <asp:ListItem Text="O+" Value="5"></asp:ListItem>
                   <asp:ListItem Text="O-" Value="6"></asp:ListItem>
                   <asp:ListItem Text="AB+" Value="7"></asp:ListItem>
                   <asp:ListItem Text="AB-" Value="8"></asp:ListItem>
             </asp:DropDownList>
             <a href="#contact">
             
             <br />
             </a>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:DropDownList ID="DropDownList8" runat="server">
                    <asp:ListItem Text="buffer" Value="0"></asp:ListItem>
                   <asp:ListItem Text="Islam" Value="1"></asp:ListItem>
                   <asp:ListItem Text="Hinduism" Value="2"></asp:ListItem>
                   <asp:ListItem Text="Buddhism" Value="3"></asp:ListItem>
                   <asp:ListItem Text="Christian" Value="4"></asp:ListItem>
                   <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                 
             </asp:DropDownList>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
             <br />
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
             <br />
             <a href="#contact">
             <br />
             </a>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button2" runat="server" CssClass="auto-style23" Text="Update" Width="94px" OnClick="Button2_Click" BackColor="#FFFFCC" />

             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />

         </div>
         
     
         </form>

     <p class="auto-style16" style="background-color: #000000; color: #FFFFFF; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &#169 KUET 2019,Developed by:Arpan Bhowmik(B.Sc.Engg.,CSE)</p>
              
</body>
</html>
