using System;
using System.Data;

public partial class RegistrationFormPrematric : System.Web.UI.Page
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
        ddl_dist.DataSource = dt.DefaultView;
        ddl_dist.DataTextField = "dname";
        ddl_dist.DataValueField = "dcode";
        ddl_dist.DataBind();
        ddl_dist.Items.Insert(0, new System.Web.UI.WebControls.ListItem("All ddl_districts", "All"));
        ddl_dist.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select District", "-1"));
    }
}