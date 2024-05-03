using System;
using System.Data;

public partial class Inst_login_SM : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindDropDownList();
    }
    protected void BindDropDownList()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("DistrictList.xml"));
        // Get the DataTable from the DataSet
        DataTable dt = ds.Tables[0];
        // Sort the DataTable by the "dname" column in ascending order
        dt.DefaultView.Sort = "dname ASC";
        // Bind the sorted data to the DropDownList
        dist.DataSource = dt.DefaultView;
        dist.DataTextField = "dname";
        dist.DataValueField = "dcode";
        dist.DataBind();
        dist.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select District", "-1"));
    }
}