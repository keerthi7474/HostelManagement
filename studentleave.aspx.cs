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
using System.Net.Mime;
using System.Net;
using System.IO;
public partial class studentleave : System.Web.UI.Page
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
        string sql1 = "select distinct studentname from studentroom where blockno='" + DropDownList4.SelectedValue + "' and roomno='"+DropDownList5.Text+"'";
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
        SqlCommand cmd = new SqlCommand("select * from studentroom where blockno='" + DropDownList4.SelectedValue + "' and roomno='" + DropDownList5.SelectedValue + "' and studentname='"+DropDownList3.SelectedValue+"'", con);
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
    public static string CreateRandomPassword(int PasswordLength)
    {
        string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
        Random randNum = new Random();
        char[] chars = new char[PasswordLength];
        int allowedCharCount = _allowedChars.Length;
        for (int i = 0; i < PasswordLength; i++)
        {
            chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
        }
        return new string(chars);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1 getcon1 = new Class1();
        SqlConnection con1 = getcon1.connect();
        SqlCommand cmd1 = new SqlCommand("select * from leavestudents where studentname='" + DropDownList3.SelectedValue + "' and fromdate='" + TextBox9.Text + "' and todate='"+TextBox11.Text+"'", con1);
        int count = Convert.ToInt32(cmd1.ExecuteScalar());
        if (count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Already Exists');</script>");
        }
        else
        {
            string s1 = CreateRandomPassword(12);
            Class1 getcon = new Class1();
            SqlConnection con = getcon.connect();
            SqlCommand cmd = new SqlCommand("insert into leavestudents values('" + DropDownList4.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox11.Text + "','" + TextBox10.Text + "','" + TextBox12.Text + "','"+s1+"','null','leave')", con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('Hostel Student Leave Added Successfully!!!');</script>");
            WebClient client = new WebClient();
            string strmsg = "Check Your Daughter/Son College Leave Details by this Key" + s1 + "Thank You!!!";
            string baseurl = "http://sms.f9cs.com/sendsms.jsp?user=f9demo&password=demo1234&mobiles=" + TextBox7.Text + "&senderid=FINECS&sms='" + strmsg + "'";
            Stream data = client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            string s = reader.ReadToEnd();
            data.Close();
            reader.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "ele", "<script>alert('SMS Send Successfully');</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("viewstudentleave.aspx");
    }
}
