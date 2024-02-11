<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesInvoice.aspx.cs" Inherits="ERPReportsApp.ReportView.SalesInvoice" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" ExportContentDisposition="AlwaysInline" Font-Names="Verdana" Font-Size="8pt" Height="768px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
            <LocalReport ReportPath="Reports\Rpt_SalesInvoice.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DS_SalesInvoice" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DS_User" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="DS_SalesInvoiceTax" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
    </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_SalesInvoiceTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="InvoiceID" QueryStringField="prmInvoiceID" Type="Int32" />
                <asp:QueryStringParameter Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_UserTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="prmUser" Type="Int32" />
                <asp:QueryStringParameter Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" DefaultValue="BT" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_SalesInvoiceTaxTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="InvoiceID" QueryStringField="prmInvoiceID" Type="Int32" />
                <asp:QueryStringParameter Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </form>
</body>
</html>
