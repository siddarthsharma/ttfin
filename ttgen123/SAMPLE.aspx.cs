using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class SAMPLE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        Session["c_id"] = "CS6304";
        string selectq = "select C_NAME from course where C_ID='"+Session["c_id"].ToString()+"'";
        SqlCommand com = new SqlCommand(selectq, conn);
        Label1.Text = com.ExecuteScalar().ToString();
    }
}