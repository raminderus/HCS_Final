<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentAdd.aspx.cs" Inherits="HCS_Final.Appointment.AppointmentAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
         <asp:Label ID="Label1" runat="server" Text="Enter First Name:"></asp:Label>
        <asp:TextBox ID="txtHCPFirstName" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="Enter Last Name:"></asp:Label>
        <asp:TextBox ID="txtHCPLastName" runat="server"></asp:TextBox><br/>
         <asp:Label ID="Label4" runat="server" Text="Enter Speciality:"></asp:Label>
        <asp:TextBox ID="txtHCPSpeciality" runat="server"></asp:TextBox><br/>
         <asp:Label ID="Label5" runat="server" Text="Enter Registration Number:"></asp:Label>
        <asp:TextBox ID="txtHCPRegistrationNumber" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Enter User Name"></asp:Label>
        <asp:TextBox ID="txtHCPUserName" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtHCPPassword" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbHCPActive" runat="server" />
       
    </div>
         <asp:Button ID="btCreateNewHCP"  runat="server" Text="Create" OnClick="btCreateNewHCP_Click" />
        <asp:Button runat="server" ID="btnBack" Text="Back" OnClick="btnBack_Click"/>
    </form>
</body>
</html>
