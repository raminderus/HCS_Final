<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoteEdit.aspx.cs" Inherits="HCS_Final.Note.NoteAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label runat="server" ID="lblMsg" Text=" "></asp:Label><br/>
        
        <asp:Label ID="Label4" runat="server" Text="Select Health Care Provider :"></asp:Label>
        <asp:DropDownList ID="ddHealthCareProviderId" runat="server"></asp:DropDownList><br/>
         <asp:Label ID="Label5" runat="server" Text="Select Patient :"></asp:Label>
        <asp:DropDownList ID="ddPatientId" runat="server"></asp:DropDownList><br/>
        <asp:Label ID="Label1" runat="server" Text="Enter note :"></asp:Label>
        <asp:TextBox ID="txtNNote" runat="server"></asp:TextBox><br/>
        <asp:Label ID="Label3" runat="server" Text="Select note type :"></asp:Label>
        <asp:DropDownList ID="ddNoteTypeId" runat="server"></asp:DropDownList><br/>
        <asp:Label ID="Label2" runat="server" Text="Active?"></asp:Label>
        <asp:CheckBox ID="cbNActive" runat="server" />
    
    </div>
         <asp:Button ID="btCreateNewN"  runat="server" Text="Create" OnClick="btCreateNewN_Click" />
         <asp:Button ID="Button1"  runat="server" Text="Back" OnClick="btBack_Click" />
    </form>
</body>
</html>
