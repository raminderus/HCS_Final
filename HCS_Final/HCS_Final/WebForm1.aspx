<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HCS_Final.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<h2>Please Click the Button </h2>
    <form id="form1" runat="server">
    <div>
        <asp:Button runat="server" Text="Appointment" OnClick="Unnamed4_Click"/>&nbsp;
        <asp:Button runat="server" Text="HealthCareProvider" OnClick="Unnamed1_Click"/>&nbsp;
    <asp:Button runat="server" Text="NoteType" OnClick="Unnamed2_Click"/>&nbsp;
        <asp:Button runat="server" Text="Note" OnClick="Unnamed3_Click"/>&nbsp;
        <asp:Button runat="server" Text="Patient" OnClick="Unnamed5_Click"/>&nbsp;
    </div>
    </form>
</body>
</html>
