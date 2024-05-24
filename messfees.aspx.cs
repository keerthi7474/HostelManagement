using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class messfees : System.Web.UI.Page
{

    SqlDataAdapter dadapter;
    DataSet dset;
    DataSet DS = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            disp();
        }
    }
    public void disp()
    {
        if (!IsPostBack)
        {
            Class1 getcon1 = new Class1();
            SqlConnection con1 = getcon1.connect();
            string sql1 = "select distinct blockno from studentroom";
            dadapter = new SqlDataAdapter(sql1, con1);
            dset = new DataSet();
            dadapter.Fill(dset);
            if (!IsPostBack)
            {
                DropDownList4.DataSource = dset.Tables[0];
                DropDownList4.DataTextField = "blockno";
                DropDownList4.DataValueField = "blockno";
                DropDownList4.DataBind();
            }
            DropDownList4.Items.Add("--Select--");
            DropDownList4.Items.FindByValue("--Select--").Selected = true;
        }
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        string sql1 = "select distinct studentname from studentroom where blockno='" + DropDownList4.SelectedValue + "' and roomno='" + DropDownList5.Text + "'";
        dadapter = new SqlDataAdapter(sql1, con1);
        dset = new DataSet();
        dadapter.Fill(dset);
        DropDownList3.DataSource = dset.Tables[0];
        DropDownList3.DataTextField = "studentname";
        DropDownList3.DataValueField = "studentname";
        DropDownList3.DataBind();
        DropDownList3.Items.Add("Select");
        DropDownList3.Items.FindByValue("Select").Selected = true;
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        string sql1 = "select distinct roomno from studentroom where blockno='" + DropDownList4.SelectedValue + "'";
        dadapter = new SqlDataAdapter(sql1, con1);
        dset = new DataSet();
        dadapter.Fill(dset);
        DropDownList5.DataSource = dset.Tables[0];
        DropDownList5.DataTextField = "roomno";
        DropDownList5.DataValueField = "roomno";
        DropDownList5.DataBind();
        DropDownList5.Items.Add("Select");
        DropDownList5.Items.FindByValue("Select").Selected = true;
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 getcon = new Class1();
        SqlConnection con = getcon.connect();
        SqlCommand cmd = new SqlCommand("select * from studentroom where blockno='" + DropDownList4.SelectedValue + "' and roomno='" + DropDownList5.SelectedValue + "' and studentname='" + DropDownList3.SelectedValue + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
           
            TextBox2.Text = dr["studentrollno"].ToString();
            TextBox3.Text = dr["gender"].ToString();
            TextBox4.Text = dr["department"].ToString();
            TextBox5.Text = dr["semester"].ToString();
            TextBox6.Text = dr["address"].ToString();
            TextBox7.Text = dr["phoneno"].ToString();
            TextBox8.Text = dr["emailid"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
            Class1 getcon = new Class1();
            SqlConnection con = getcon.connect();
            SqlCommand cmd = new SqlCommand("insert into messfees values('" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox11.Text + "')", con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Mess Fees Details Added Successfully!!!');</script>");
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewmessfees.aspx");
    }
}
