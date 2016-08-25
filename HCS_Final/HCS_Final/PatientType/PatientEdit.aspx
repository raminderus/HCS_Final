<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientEdit.aspx.cs" Inherits="HCS_Final.PatientType.PatientEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
    <asp:Label ID="Label1" runat="server" Text="Edit First Name:"></asp:Label>
        <asp:TextBox ID="txtPFirstName" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="Edit Last Name:"></asp:Label>
        <asp:TextBox ID="txtPLastName" runat="server"></asp:TextBox><br />
         <asp:Label ID="Label4" runat="server" Text="Edit Health Card Number:"></asp:Label>
        <asp:TextBox ID="txtPHealthCardNo" runat="server"></asp:TextBox><br/>
         <asp:Label ID="Label5" runat="server" Text="Edit Address  One:"></asp:Label>
        <asp:TextBox ID="txtPAddress1" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label2" runat="server" Text="Edit Address Two"></asp:Label>
        <asp:TextBox ID="txtPAddress2" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label6" runat="server" Text="Edit Home Phone"></asp:Label>
        <asp:TextBox ID="txtPHomePhone" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label8" runat="server" Text="Edit Cell Phone"></asp:Label>
        <asp:TextBox ID="txtPCellPhone" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label9" runat="server" Text="Edit Date of Birth(YYYY-MM-DD"></asp:Label>
        <asp:TextBox ID="txtPDateOfBirth" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label7" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbPActive" runat="server" />
    </div>
        
        
         <asp:Button ID="btUpdateP" runat="server" Text="Save" OnClick="btUpdateP_Click" />
           <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btBack_Click" />
        
    </form>
</body>
</html>
