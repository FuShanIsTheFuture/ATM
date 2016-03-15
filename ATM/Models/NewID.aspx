<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewID.aspx.cs" Inherits="ATM.Models.NewID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>欢迎光临自助银行</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        body{
            width:100%;
            background:url(images/NewID_bg.jpg) no-repeat;
        }
       div{
          margin:5px auto 
        }
        #container{
        margin:auto auto;
        background-color:white;
        background:rgba(255, 255, 255, 0.7);
        width:500px;
        vertical-align:middle;
        margin-top:10%
        }
        .col-md-5 {
            text-align:right;
            padding-right:0px;
            font-size:16px;
            font-weight:900
        }
        .col-md-7 {
            text-align:left;
        }
        a:hover {
            color:red
        }
        .col-md-6{
            padding-left:0px;
            padding-left:0px;
        }
        .btn {
            width:50%
        }
       .Iput{
            background-color:transparent
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
            <div class="row">
                <div class="col-md-12" style="text-align:center;">
                    <h2>欢迎使用自助银行</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h3 style="margin:0px 0px 0px 50px">新建银行账号...</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    用户名：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="customerName" runat="server" CssClass="Iput"></asp:TextBox>
                </div>
            </div>
        <div class="row">
                <div class="col-md-5">
                    身份证号码：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="PID" runat="server" CssClass="Iput"></asp:TextBox>
                </div>
            </div>
        <div class="row">
                <div class="col-md-5">
                    联系电话：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="Telephone" runat="server" CssClass="Iput"></asp:TextBox>
                </div>
            </div>
        <div class="row">
                <div class="col-md-5">
                    开户金额：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="OpenMoney" runat="server" CssClass="Iput"></asp:TextBox>
                </div>
            </div>
        <div class="row">
                <div class="col-md-5">
                    存款类型：
                </div>
                <div class="col-md-7">
                    <asp:DropDownList ID="SavingTypeDdw" runat="server">
                        <asp:ListItem Value="定期">定期存款</asp:ListItem>
                        <asp:ListItem Value="活期">活期存款</asp:ListItem>
                    </asp:DropDownList>
                </div>
        </div>
        <div class="row">
                <div class="col-md-5">
                    地址：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="Address" runat="server" CssClass="Iput"></asp:TextBox>
                </div>
        </div>
        <div class="row">
            <div class="col-md-6" style="text-align:right">
                <asp:Button ID="BtnSub" runat="server" Text="提 交" CssClass="btn btn-lg btn-danger" OnClick="BtnSub_Click" />
            </div>
            
            <div class="col-md-6" style="text-align:left">
                <asp:Button ID="BtnReset" runat="server" Text="重 置" CssClass="btn btn-lg btn-info" />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" style="text-align:right">
                已有账号？<a href="login.aspx">直接登录</a>>>
            </div>
        </div>
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
