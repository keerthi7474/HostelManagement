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
public partial class viewmessfees : System.Web.UI.Page
{
    
    SqlDataAdapter dadapter;
    DataSet dset;
    DataSet DS = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            disp();
            dele();
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
        bin();
    }
    public void bin()
    {
        Class1 getcon = new Class1();
        SqlConnection con1 = getcon.connect();
        SqlCommand cmd2 = new SqlCommand("select * from messfees where blockno='"+DropDownList4.SelectedValue+"' and roomno='"+DropDownList5.SelectedValue+"' and studentname='"+DropDownList3.SelectedValue+"'", con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Not found');</script>");
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bin();
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
    }
    public void dele()
    {
        if (Request.QueryString["id1"] != null)
        {
            Class1 getcon = new Class1();
            SqlConnection con = getcon.connect();
            SqlCommand cmd = new SqlCommand("delete from messfees where id='" + Request.QueryString["id1"].ToString() + "'", con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Deleted Successfully!!!');</script>");
            bin();
        }
    }
}
