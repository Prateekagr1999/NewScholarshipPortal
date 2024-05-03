using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dsw_Obc_Dmo_Login :  System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string param = Request.QueryString["a"];
            string user = "";

            if (param.Equals("SW"))
            {
                user = "Social Welfare Officer";
            }
            else if (param.Equals("OBC"))
            {
                user = "Backward Class Welfare Officer";
            }
            else if (param.Equals("MIN"))
            {
                user = "Minority Welfare Officer";
            }
            else if (param.Equals("ST"))
            {
                user = "ST Welfare Officer";
            }

            this.user.Text = user;
            this.DataBind();
        }
    }
}