<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HCS.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblLabel1" ForeColor="Red" Text="<b>Enter UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" runat="server"></asp:Label>
        
        <asp:TextBox ID="txtText1" runat="server"></asp:TextBox>
        <br/>
        <asp:Label ID="lblLabel2" ForeColor="Red" Text="<b> Enter Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" runat="server"></asp:Label>
       
        <asp:TextBox ID="txtText2" runat="server"></asp:TextBox>
        <br/>
        <br/>
        <asp:Button ID="btnButton1" Text="OK" runat="server" OnClick="btnButton1_Click"/>
    
    </div>
    </form>
</body>
</html>
