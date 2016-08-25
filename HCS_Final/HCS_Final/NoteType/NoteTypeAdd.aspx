<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoteTypeAdd.aspx.cs" Inherits="HCS.NoteTypeAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Add NoteType Information</h2>
    <div>
         <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
    <asp:Label runat="server" Text="Enter NoteId"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="txtNoteId" ></asp:TextBox><br/>
      <asp:Label runat="server" Text="Enter Description"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="txtDesc" ></asp:TextBox><br/>
         <asp:Label runat="server" Text="Enter ActiveStatus"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:CheckBox runat="server" ID="chkActive"/><br/>
        
         <asp:Label runat="server" Text="Enter UserId"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox runat="server" ID="txtDate" ></asp:TextBox><br/>
          
        <br />
        <br />
        <asp:Button runat="server" ID="btnCreate" Text="Save" OnClick="btnCreate_Click"/>
         <asp:Button runat="server" ID="Button1" Text="Back" OnClick="btnBack_Click"/>
    </div>
    </form>
</body>
</html>
