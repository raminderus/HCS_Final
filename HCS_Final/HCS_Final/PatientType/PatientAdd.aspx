<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientAdd.aspx.cs" Inherits="HCS_Final.PatientType.PatientAdd" %>

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
        <asp:TextBox ID="txtPFirstName" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Enter Last Name:"></asp:Label>
        <asp:TextBox ID="txtPLastName" runat="server"></asp:TextBox><br />
         <asp:Label ID="Label4" runat="server" Text="Enter Health Card Number:"></asp:Label>
        <asp:TextBox ID="txtPHealthCardNo" runat="server"></asp:TextBox><br />
         <asp:Label ID="Label5" runat="server" Text="Enter Address  One:"></asp:Label>
        <asp:TextBox ID="txtPAddress1" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Enter Address Two"></asp:Label>
        <asp:TextBox ID="txtPAddress2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label6" runat="server" Text="Enter Home Phone"></asp:Label>
        <asp:TextBox ID="txtPHomePhone" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label8" runat="server" Text="Enter Cell Phone"></asp:Label>
        <asp:TextBox ID="txtPCellPhone" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label9" runat="server" Text="Enter Date of Birth(YYYY-MM-DD"></asp:Label>
        <asp:TextBox ID="txtPDateOfBirth" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbPActive" runat="server" />
    
    </div>
        <asp:Button ID="btCreateNewP"  runat="server" Text="Create" OnClick="btCreateNewP_Click" />
           <asp:Button ID="Button1"  runat="server" Text="Back" OnClick="btnBack_Click" />
    </form>
</body>
</html>
