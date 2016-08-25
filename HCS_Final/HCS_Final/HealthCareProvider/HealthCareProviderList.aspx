<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthCareProviderList.aspx.cs" Inherits="HCS.HealthCareProviderList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Enter Registration"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Add" OnClick="btnAdd"  />
        <asp:Button runat="server" ID="btnEdit" Text="Edit" OnClick="btnedit"/>
        <asp:Button ID="Button3" Text="Report" runat="server" OnClick="Button3_Click"/>
         <asp:Button ID="Button4" Text="Main Menu" runat="server" OnClick="btnMain_Click"/>
     </div>
        <br/>
        <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <%--<asp:GridView ID="GridView1" runat="server" DataKeyNames="NoteTypeId" OnPageIndexChanging="GridView1_PageIndexChanging" >
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>--%>
    </form>
</body>
</html>
