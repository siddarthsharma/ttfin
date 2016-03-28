using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class COURSE : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into course (C_ID,C_NAME,SEM) values (@C_ID,@C_NAME ,@SEM )";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@C_ID", TextBox1.Text);
            com.Parameters.AddWithValue("@C_NAME", TextBox2.Text);
            com.Parameters.AddWithValue("@SEM", TextBox3.Text);


            com.ExecuteNonQuery();
            conn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            Response.Redirect("COURSE.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("error:" + ex.ToString());

        }
    }



    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}