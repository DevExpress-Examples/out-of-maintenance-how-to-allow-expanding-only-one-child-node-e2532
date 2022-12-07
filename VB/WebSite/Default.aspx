<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<script type="text/javascript">
		function OnNodeExpanding(s, e) {
			s.PerformCallback(e.nodeKey);
			e.cancel = true;
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxTreeList ID="ASPxTreeList1" runat="server" DataSourceID="AccessDataSource1"
				AutoGenerateColumns="False" KeyFieldName="EmployeeID" ParentFieldName="ReportsTo"
				OnCustomCallback="ASPxTreeList1_CustomCallback">
				<ClientSideEvents NodeExpanding="OnNodeExpanding" />
				<Columns>
					<dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
					</dx:TreeListTextColumn>
					<dx:TreeListTextColumn FieldName="FirstName" VisibleIndex="1">
					</dx:TreeListTextColumn>
				</Columns>
			</dx:ASPxTreeList>
			<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/DevNwind.mdb"
				SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [ReportsTo] FROM [Employees]">
			</asp:AccessDataSource>
		</div>
	</form>
</body>
</html>