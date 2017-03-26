using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayContent : System.Web.UI.Page
{
    List<int> selectedTagIds;

    protected void Page_Load(object sender, EventArgs e)
    {
        selectedTagIds = new List<int>();
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList dataList = (DataList)sender;

        int index = dataList.SelectedIndex;

        selectedID.Text = index.ToString();

        
    }

    protected void DataList2_ItemCommand(object sender, DataListCommandEventArgs e)
    {
        var button = sender as Button;

        var dataListItem = button.NamingContainer as DataListItem;

        selectedID.Text = DataList2.DataKeys[dataListItem.ItemIndex].ToString();


    }
}