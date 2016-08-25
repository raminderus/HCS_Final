<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentList.aspx.cs" Inherits="HCS.AppointmentList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="Label1" runat="server" Text="Enter Appointment ID."></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />
     <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Add"  OnClick="Button2_Click"  />
        <asp:Button ID="Button3" runat="server" Text="Edit"  OnClick="Button3_Click" style="height: 26px"  />
        <asp:Button runat="server" Text="Main Menu" OnClick="Unnamed1_Click"/>
    </div>
        
     <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
