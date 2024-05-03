using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistrationFormIntermediate : System.Web.UI.Page
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
        ddl_district.DataSource = dt.DefaultView;
        ddl_district.DataTextField = "dname";
        ddl_district.DataValueField = "dcode";
        ddl_district.DataBind();
        ddl_district.Items.Insert(0, new System.Web.UI.WebControls.ListItem("All ddl_districts", "All"));
        ddl_district.Items.Insert(0, new System.Web.UI.WebControls.ListItem("Select District", "-1"));
    }
}