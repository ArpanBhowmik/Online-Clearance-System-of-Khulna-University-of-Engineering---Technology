<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HallView.aspx.cs" Inherits="WebApplication1.HallView" %>

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
            margin-top: 289px;
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
            height: 391px;
            margin-left: 401px;
            margin-top: 74px;
        }
        .auto-style20 {
            margin-left: 18px;
        }
        .auto-style22 {
            margin-left: 4px;
            margin-right: 72px;
            margin-top: 31px;
        }



        </style>
</head>
<body style="background-color:; height: 641px; margin-right: 8px; width: 1352px;">
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
                                Online Clearance System of KUET&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Height="10px" Text="Label" CssClass="auto-style18" Font-Size="Small" ForeColor="Red"></asp:Label>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>


         </div>
         <div class="navbar">
             <ul class="auto-style7" style="background-color: #009900">
                 <li><a href="Hall.aspx">Home</a></li>
                 <li><a href="HallAdd.aspx">Add</a></li>
                 <li><a href="HallView.aspx">View/Update</a></li>
                 <li><a href="HallContact.aspx">Contact</a></li>
                 <li style="float:right">
                     <asp:LinkButton runat="server" OnClick="Log">
                         Logout
                     </asp:LinkButton>
                     </li>
     
            
     
             </ul>
             &nbsp;</div>
         <marquee behavior="alternate" direction="left" >View/Update dues of a student in the Hall!</marquee>
         <div class="auto-style19" style="color: #0000FF">

             <br />
             Roll No
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" CssClass="auto-style20" OnClick="Button1_Click" Text="Show" Width="74px" />
             <br />
             <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Records Found!"  CellPadding="4" ForeColor="Red" GridLines="None" Width="400px" CssClass="auto-style22" Height="131px" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="Roll" HeaderText="Roll" SortExpression="Roll">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Hall" HeaderText="Hall" SortExpression="Hall">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Start" HeaderText="From" SortExpression="Start">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Ending" HeaderText="To" SortExpression="Ending">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Dues" HeaderText="Dues" SortExpression="Dues">
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:BoundField>
                     <asp:TemplateField HeaderText="Status">
                         <ItemTemplate>
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                         </ItemTemplate>
                         <ItemStyle HorizontalAlign="Center" />
                     </asp:TemplateField>
                 </Columns>
                 <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                 <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                 <SortedAscendingCellStyle BackColor="#FDF5AC" />
                 <SortedAscendingHeaderStyle BackColor="#4D0000" />
                 <SortedDescendingCellStyle BackColor="#FCF6C0" />
                 <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:regconnect %>" SelectCommand="SELECT [Roll], [Date], [Hall], [Year], [Start], [Ending], [Dues] FROM [Hall]"></asp:SqlDataSource>
             <br />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Button ID="Button2" runat="server" CssClass="auto-style7" OnClick="Button2_Click" Text="Update" Width="90px" />

         </div>
         
     
     <p class="auto-style16" style="background-color: #000000; color: #FFFFFF; font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Copyright &#169 KUET 2019,Developed by:Arpan Bhowmik(B.Sc.Engg.,CSE)</p>
              
     
         </form>
</body>
</html>
