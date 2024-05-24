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
public partial class viewrooms : System.Web.UI.Page
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
            string sql1 = "select distinct blockno from roomdetails";
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
        bin();
    }
    protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        string sql1 = "select distinct roomno from roomdetails where blockno='" + DropDownList4.SelectedValue + "'";


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
    public void bin()
    {
        Class1 getcon = new Class1();
        SqlConnection con1 = getcon.connect();
        SqlCommand cmd2 = new SqlCommand("select * from studentroom where blockno='"+DropDownList4.SelectedValue+"' and roomno='"+DropDownList5.SelectedValue+"'", con1);
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
  
}
