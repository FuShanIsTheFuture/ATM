using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Model;

namespace DAL
{
    public class ATMDAL
    {
        /// <summary>
        /// 验证用户输入的用户名与密码
        /// </summary>
        /// <param name="name"></param>
        /// <param name="pwd"></param>
        /// <returns></returns>
        public bool isExist(string cardid, string pwd)
        {
            bool result = true;
            string sql = string.Format("select top 1 cardID from cardInfo where cardID='{0}' and pass='{1}'", cardid, pwd);
            DataSet ds = DbHelperSQL.Query(sql);
            if (ds.Tables[0].Rows.Count == 0)
            {
                result = false;
            }
            return result;
        }

        /// <summary>
        /// 增加一条记录
        /// </summary>
        /// <param name="atm"></param>
        /// <returns></returns>
        public int Add(ATM atm)
        {
                string sql = string.Format(@"insert into userInfo([customerName],[PID],[telephone],[address])
                                     values('{0}','{1}','{2}','{3}')", atm.CustomerName, atm.PID, atm.Telephone, atm.Address
                                            );
                string sql1 = string.Format(@"insert into cardInfo([openMoney],[savingType])
                                            values('{0}','{1}')",atm.OpenMoney,atm.SavingType
                                            );
                int i = DbHelperSQL.ExecuteSql(sql);
                return i;
        }

        /// <summary>
        /// 判断是否有重名账号
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public bool IsRepeat(string sql)
        {
            bool result = DbHelperSQL.Exists(sql);
            return result;
        }

        /// <summary>
        /// 获得一条信息
        /// </summary>
        /// <param name="pid"></param>
        /// <returns></returns>
        public ATM GetModel(string pid)
        {
            //select top 1 from userInfo, cardInfo
              //                                 where userInfo.[customerID]=cardInfo.[customerID] and[PID] = '{0}'
            StringBuilder strsql = new StringBuilder();
            strsql.Append("select top 1 ");
            strsql.Append("cardID ");
            strsql.Append(" from userInfo,cardInfo ");
            strsql.Append("where userInfo.[customerID]=cardInfo.[customerID] and[PID] = '+" + pid + "'");
            ATM model = new ATM();
            DataSet ds = DbHelperSQL.Query(strsql.ToString());
            if (ds.Tables[0].Rows.Count > 0)
            {
                return model;
            }
            else
                return null;
        }
        
    }
}
