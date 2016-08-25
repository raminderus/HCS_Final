<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoteTypeEdit.aspx.cs" Inherits="HCS.NoteTypeEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
    <asp:Label runat="server" Text="Note Type Edit"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="txtNTdesc"></asp:TextBox><br/>
        <asp:Label runat="server" Text="Active"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:CheckBox runat="server" id="chkActive"/>
    </div>
        <asp:Button runat="server" Text="Update" OnClick="btnNTupdate_Click" ID="btnUpdate"/>
        <asp:Button runat="server" Text="Back" OnClick="btnBack"/>
    </form>
</body>
</html>
