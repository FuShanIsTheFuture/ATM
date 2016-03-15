using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Model;
using BLL;

namespace ATM.Models
{
    public partial class NewID : System.Web.UI.Page
    {
        private ATMBLL bll = new ATMBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 增加一条记录
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnSub_Click(object sender, EventArgs e)
        {
            string name = customerName.Text;
            string pid = PID.Text;
            string phone = Telephone.Text;
            float openMoney =float.Parse(OpenMoney.Text);
            string savingtype = SavingTypeDdw.SelectedItem.Value.ToString();
            string address = Address.Text;
            //检查是否有重名用户
            string sql = string.Format(@"select top 1 [PID] from userInfo where [customerName]='{0}' and [PID]='{1}'
                                     ", name, pid);
            bool result = bll.IsRepeat(sql);
            if (result == true)
            {
                Model.ATM ma = new Model.ATM();
                ma.CustomerName = name;
                ma.PID = pid;
                ma.Telephone = phone;
                ma.OpenMoney = openMoney;
                ma.SavingType = savingtype;
                ma.Address = address;

                ATMBLL ab = new ATMBLL();
                int i = ab.Add(ma);
                if (i == 1)
                {
                    Model.ATM model = new Model.ATM();
                    model = bll.GetModel(ma.PID);
                    string NewCardID = model.CardID;
                    Response.Write("<script>alert('账号申请成功！您的卡号为:"+NewCardID+"')</script>");
                }
                else
                {
                    Response.Write("<script>alert('账号申请失败！')</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('账号申请失败！检查是否账户重复')</script>");
            }
        }
    }
}