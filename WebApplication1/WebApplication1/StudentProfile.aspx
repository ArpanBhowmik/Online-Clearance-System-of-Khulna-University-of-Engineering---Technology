<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="WebApplication1.StudentProfile" %>

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
            width: 1252px;
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
            margin-top: 0px;
            width: 1344px;
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
       




        .auto-style18 {
            margin-left: 56px;
        }
        abcd {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 25%;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}




        .auto-style19 {
            width: 14%;
            height: 100px;
            margin-right: 15px;
            position:fixed;
        }
        .auto-style20 {
            width: 188px;
            height: 96px;
             border-bottom: 10px black;
        }
        .auto-style21 {
            height: 18px;
             border-bottom: 1px solid #555;
             margin-top:0px;
        }




        .auto-style22 {
            margin-top: 0px;
            margin-bottom:0px;
            }
        table{
            margin: 100px 100px;
            margin-top:2px;
            margin-bottom:auto;
            border:1px;
            text-align:left;
   

        }




        .auto-style23 {
            height: 555px;
        }




        .auto-style25 {
            width: 283px;
            margin-left: 162px;
        }
        .auto-style26 {
            width: 151px;
        }




        </style>
</head>
<body style="background-color:; height: 641px; margin-right: 8px; width: 1341px;">
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
                                Online Clearance System of KUET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="Label1" runat="server" Height="10px" Text="Label" CssClass="auto-style18" Font-Size="Small" ForeColor="Red"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


         </div>
         <div class="navbar">
             <ul class="auto-style7" style="background-color: #009900">
                 <li><a href="StudentHome.aspx">Home</a></li>
                 <li><a href="StudentProfile.aspx">Profile</a></li>
                 <li><a href="LabStudent.aspx">Lab</a></li>
                 <li><a href="HallStudent.aspx">Hall</a></li>
                 <li><a href="StudentContact.aspx">Contact</a></li>
                 <li style="float:right">
                     <asp:LinkButton runat="server" OnClick="Unnamed1_Click">
                         Logout
                     </asp:LinkButton>
                     </li>
     
            
     
             </ul>
             &nbsp;</div>
         <ul class="auto-style19" style="background-color: #008000" ;>
             <li class="auto-style20" style="background-color: #008000" ;><a href="StudentProfile.aspx" class="auto-style21">My Profile</a><a href="ChangePassword.aspx">Change Password</a></li>
          
</ul>
         <div style="margin-left:25%;padding:1px 16px;" class="auto-style23">
               <asp:DataList ID="DataList1" runat="server" CssClass="auto-style22" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="523px" Width="451px">
             <ItemTemplate>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Image") %>' Width="200px" Height="200px" ImageAlign="Middle" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <table class="auto-style25">
                     <tr>
                         <th class="auto-style26"> Name </th>
                         <td style="color:blue"><%#Eval("Name") %></td>
                     </tr>
                     <caption>
                         <br />
                         <tr>
                             <th class="auto-style26">Roll </th>
                             <td style="color:blue"><%#Eval("Roll") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Department </th>
                             <td style="color:blue"><%#Eval("Dept") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">E-mail </th>
                             <td style="color:blue"><%#Eval("Mail") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Sex </th>
                             <td style="color:blue"><%#Eval("Sex") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Hall </th>
                             <td style="color:blue"><%#Eval("Hall") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Mobile </th>
                             <td style="color:blue"><%#Eval("Mobile") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Blood </th>
                             <td style="color:blue"><%#Eval("Blood") %></td>
                         </tr>
                         <tr>
                             <th class="auto-style26">Religion </th>
                             <td style="color:blue"><%#Eval("Religion") %></td>
                         </tr>
                     </caption>
                     



                 </table>
             </ItemTemplate>
                   </asp:DataList>
         </div>
        

      
     
     <p class="auto-style16" style="background-color: #000000; color: #FFFFFF; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &#169 KUET 2019,Developed by:Arpan Bhowmik(B.Sc.Engg.,CSE)</p>
              
     
         </form>

     </body>
</html>
