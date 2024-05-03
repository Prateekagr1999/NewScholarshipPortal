using System;
using System.Web.UI;

public partial class InstituteAddOtherStateNew : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submitMain2_Click(object sender, EventArgs e)
    {
        string script = "alert('Hello,Form subit ho rha hai!');";
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerAlert", script, true);
    }
}