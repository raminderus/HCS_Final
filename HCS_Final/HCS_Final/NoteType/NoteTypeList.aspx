<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NoteTypeList.aspx.cs" Inherits="HCS.NoteTypeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Enter Description"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="Button2_Click"  />
        <asp:Button ID="Button3" Text="Report" runat="server" OnClick="Button3_Click"/>
        <asp:Button ID="Button4" Text="Edit" runat="server" OnClick="Button4_Click"/>
          <asp:Button ID="Button5" Text="Main Menu" runat="server" OnClick="btnMain_Click"/>
    </div>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="NoteTypeId" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1"  >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>

