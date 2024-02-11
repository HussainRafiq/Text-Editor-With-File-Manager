<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChallanDetail.aspx.cs" Inherits="ERPReportsApp.ReportView.ChallanDetail" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="768px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
            <localreport reportpath="Reports\Rpt_ChallanDetail.rdlc">
                <datasources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DS_User" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DS_ChallanDetail" />
                </datasources>
            </localreport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_ChallanDetailTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="InvoiceID" QueryStringField="prmInvoiceID" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_UserTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="prmUser" Type="Int32" DefaultValue="" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </form>
</body>
</html>
