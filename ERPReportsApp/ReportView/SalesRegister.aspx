<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SalesRegister.aspx.cs" Inherits="ERPReportsApp.ReportView.SalesRegister" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_SalesRegisterTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="Param1" QueryStringField="prmFromDate1" Type="DateTime" />
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="Param2" QueryStringField="prmToDate1" Type="DateTime" />
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="Param3" QueryStringField="prmFromDate2" Type="DateTime" />
                <asp:QueryStringParameter DefaultValue="1980-1-1" Name="Param4" QueryStringField="prmToDate2" Type="DateTime" />
                <asp:QueryStringParameter DefaultValue="BT" Name="Param5" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_UserTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="ID" QueryStringField="prmUser" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    
    </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="862px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1156px" ExportContentDisposition="AlwaysInline">
            <LocalReport ReportPath="Reports\SalesRegister.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="SalesRegisterDS" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="UserDS" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    </form>
</body>
</html>
