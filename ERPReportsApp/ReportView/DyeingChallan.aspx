<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DyeingChallan.aspx.cs" Inherits="ERPReportsApp.ReportView.DyeingChallan" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="768px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%" ExportContentDisposition="AlwaysInline">
            <LocalReport ReportPath="Reports\Rpt_DyeingChallan.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ODS_DyeingChallan" Name="DS_DyeingChallan" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DS_User" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ODS_DyeingChallan" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_DyeingChallanTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="WorkOrderID" QueryStringField="prmWorkOrderID" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="Bt" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="ERPReportsApp.Datasets.DS_UserTableAdapters.DataTable1TableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="ID" QueryStringField="prmUser" Type="Int32" />
                <asp:QueryStringParameter DefaultValue="BT" Name="CompanyCode" QueryStringField="prmCompanyCode" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
