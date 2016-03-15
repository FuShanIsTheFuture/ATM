using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;
using Model;

namespace BLL
{
    public class ATMBLL
    {
        private ATMDAL dal = new ATMDAL();
        /// <summary>
        /// 验证用户输入的用户名与密码
        /// </summary>
        /// <param name="cardid"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public bool isExist(string cardid, string pwd)
        {
            return dal.isExist(cardid, pwd);
        }

        /// <summary>
        /// 增加一条记录
        /// </summary>
        /// <param name="atm"></param>
        /// <returns></returns>
        public int Add(ATM atm)
        {
            return dal.Add(atm);
        }
        /// <summary>
        /// 判断是否有重名账号
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public bool IsRepeat(string sql)
        {
            return dal.IsRepeat(sql);
        }

        public ATM GetModel(string pid)
        {
            return dal.GetModel(pid);
        }
    }
}
