using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class teacher : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into TEACHER (T_ID,T_NAME) values (@T_ID,@T_NAME)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@T_ID", TextBox1.Text);
            com.Parameters.AddWithValue("@T_NAME", TextBox2.Text);

            com.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("teacher.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("error:" + ex.ToString());

        }
    }
}