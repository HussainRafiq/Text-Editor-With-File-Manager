<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerStatement.aspx.cs" Inherits="ERPReportsApp.ReportView.CustomerStatement" %>

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
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_CustomerStatementTableAdapters.usp_CustomerStatementTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="FromDate" QueryStringField="prmFromDate" Type="String" />
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="ToDate" QueryStringField="prmToDate" Type="String" />
                <asp:QueryStringParameter DefaultValue="0" Name="CustomerID" QueryStringField="prmCustomerID" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_UserTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="ID" QueryStringField="prmUser" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="PrmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" ExportContentDisposition="AlwaysInline" Font-Names="Verdana" Font-Size="8pt" Height="921px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1373px">
            <LocalReport ReportPath="Reports\Rpt_CustomerStatement.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="CustomerStatementDS" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="UserDS" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    </form>
</body>
</html>
