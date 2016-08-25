<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientBOReport.aspx.cs" Inherits="HCS.PatientBOReport" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="196px" Width="1020px">
            <LocalReport ReportPath="PatientType\Patient.rdlc">
            </LocalReport>
           
           
           
               
          
        </rsweb:ReportViewer>
        
   
        
       
        
   
        
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
    
   
        
    </form>
</body>
</html>
