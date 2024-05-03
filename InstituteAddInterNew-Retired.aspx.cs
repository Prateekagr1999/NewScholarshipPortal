using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InstituteAddInterNew : System.Web.UI.Page
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