<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppointmentEdit.aspx.cs" Inherits="HCS_Final.Appointment.AppointmentEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
      <asp:Label ID="Label1" runat="server" Text="Edit Start From:"></asp:Label>
        <asp:TextBox ID="txtAStartFrom" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="Edit End To:"></asp:Label>
        <asp:TextBox ID="txtAEndTo" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label8" runat="server" Text="Edit Health Care Provider :"></asp:Label>
        <asp:DropDownList ID="ddAppointmentId" runat="server"></asp:DropDownList><br/>
        <asp:Label ID="Label9" runat="server" Text="Edit Patient :"></asp:Label>
        <asp:DropDownList ID="ddPatientId" runat="server"></asp:DropDownList><br/>
         <asp:Label ID="Label4" runat="server" Text="No Show?"></asp:Label>
         <asp:CheckBox ID="cbANoShow" runat="server" /><br/>
         <asp:Label ID="Label10" runat="server" Text="Cancelled?"></asp:Label>
         <asp:CheckBox ID="cbACancelled" runat="server" /><br/>
         <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbAActive" runat="server" />
    </div>
         <asp:Button ID="btUpdateA"  runat="server" Text="Save" OnClick="btUpdateA_Click" />
         <asp:Button ID="Button1"  runat="server" Text="Back" OnClick="btBack_Click" />
    </form>
</body>
</html>
