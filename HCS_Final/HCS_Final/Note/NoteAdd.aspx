<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoteAdd.aspx.cs" Inherits="HCS_Final.Note.NoteEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
        <asp:Label ID="Label2" runat="server" Text="Edit Note Type:"></asp:Label>
        <asp:TextBox ID="txtNNote" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbNActive" runat="server" />
    
    </div>
         <asp:Button ID="btUpdateN" runat="server" Text="Save" OnClick="btUpdateN_Click" />
          <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btnBack_Click" />
    </form>
</body>
</html>
