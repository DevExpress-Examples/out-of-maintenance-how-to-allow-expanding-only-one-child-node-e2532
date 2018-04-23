using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxTreeList;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Init(object sender, EventArgs e) {

    }

    protected void ASPxTreeList1_CustomCallback(object sender, TreeListCustomCallbackEventArgs e) {
        ASPxTreeList1.CollapseAll();
        TreeListNode node = ASPxTreeList1.FindNodeByKeyValue(e.Argument);
        while (node.ParentNode != null) {
            node.Expanded = true;
            node = node.ParentNode;
        }
    }
}
