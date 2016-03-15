using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace ATM.Models
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 单击登录按钮事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string cardid = UserName.Text;
            string pwd = Password.Text;
            ATMBLL bll = new ATMBLL();
            bool result = bll.isExist(cardid, pwd);
            if (result == true)
            {
                Response.Redirect("CardIdx.aspx");
            }
            else
            {
                Response.Write("<script>alert('登录失败！')</script>");
                UserName.Text = "";
                Password.Text = "";
            }
        }
    }
}