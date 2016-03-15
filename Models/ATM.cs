using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class ATM
    {
        #region 用户字段

        private int customerID;//用户编号
        private string customerName;//开户名
        private string pID;//身份证号
        private string telephone;//联系电话
        private string address;//居住地址

        public int CustomerID
        {
            get
            {
                return customerID;
            }

            set
            {
                customerID = value;
            }
        }

        public string CustomerName
        {
            get
            {
                return customerName;
            }

            set
            {
                customerName = value;
            }
        }

        public string PID
        {
            get
            {
                return pID;
            }

            set
            {
                pID = value;
            }
        }

        public string Telephone
        {
            get
            {
                return telephone;
            }

            set
            {
                telephone = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }



        #endregion

        #region 银行卡信息字段
        private string cardID;//卡号
        private string curType;//货币种类
        private string savingType;//存款类型
        private DateTime openDate;//开户日期
        private float openMoney;//开户金额
        private float balance;//金额
        private string pass;//密码
        private bool IsReportLoss;//是否挂失

        public string CardID
        {
            get
            {
                return cardID;
            }

            set
            {
                cardID = value;
            }
        }

        public string CurType
        {
            get
            {
                return curType;
            }

            set
            {
                curType = value;
            }
        }

        public string SavingType
        {
            get
            {
                return savingType;
            }

            set
            {
                savingType = value;
            }
        }

        public DateTime OpenDate
        {
            get
            {
                return openDate;
            }

            set
            {
                openDate = value;
            }
        }

        public float OpenMoney
        {
            get
            {
                return openMoney;
            }

            set
            {
                openMoney = value;
            }
        }

        public float Balance
        {
            get
            {
                return balance;
            }

            set
            {
                balance = value;
            }
        }

        public string Pass
        {
            get
            {
                return pass;
            }

            set
            {
                pass = value;
            }
        }

        public bool IsReportLoss1
        {
            get
            {
                return IsReportLoss;
            }

            set
            {
                IsReportLoss = value;
            }
        }


        #endregion

        #region 交易信息字段
        private DateTime transDate;
        private string transType;
        private float transMoney;
        private string remark;

        public DateTime TransDate
        {
            get
            {
                return transDate;
            }

            set
            {
                transDate = value;
            }
        }

        public string TransType
        {
            get
            {
                return transType;
            }

            set
            {
                transType = value;
            }
        }

        public float TransMoney
        {
            get
            {
                return transMoney;
            }

            set
            {
                transMoney = value;
            }
        }

        public string Remark
        {
            get
            {
                return remark;
            }

            set
            {
                remark = value;
            }
        }

        #endregion
    }
}
