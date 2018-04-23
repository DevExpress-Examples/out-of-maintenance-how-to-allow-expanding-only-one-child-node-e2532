Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxTreeList

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)

	End Sub

	Protected Sub ASPxTreeList1_CustomCallback(ByVal sender As Object, ByVal e As TreeListCustomCallbackEventArgs)
		ASPxTreeList1.CollapseAll()
		Dim node As TreeListNode = ASPxTreeList1.FindNodeByKeyValue(e.Argument)
		Do While node.ParentNode IsNot Nothing
			node.Expanded = True
			node = node.ParentNode
		Loop
	End Sub
End Class
