<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ATM.Models.login" %>

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
            background:url(images/bg.jpg) no-repeat;
        }
       div{
          margin:8px auto 
        }
        #container{
        margin:auto auto;
        background-color:white;
        background:rgba(255, 255, 255, 0.5);
        width:400px;
        vertical-align:middle;
        margin-top:15%
        }
        .col-md-5 {
        text-align:right;
        }
        .col-md-7 {
        text-align:left;
        padding-left:0px;
        padding-right:10%
        }
        .col-md-12 {
        text-align:center
        }
        .col-md-6 {
        font-size:16px
        }
        .btnstyle {
        background-color:transparent
        }
        a:hover {
        color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
            <div class="row">
                <div class="col-md-12" style="color:#50616d;text-align:center">
                    <h1>欢迎登录</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    银行卡号：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="UserName" runat="server" CssClass=" btnstyle"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
                </div>
                <div class="col-md-7">
                    <asp:TextBox ID="Password" runat="server" CssClass=" btnstyle"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Button ID="LoginBtn" runat="server" Text="登录" CssClass="btn-danger btn btn-lg" style="width:60%;" OnClick="LoginBtn_Click" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-6" style="text-align:left;">
                    &nbsp;&nbsp;<a href="NewID.aspx" target="_blank">免费注册</a>
                </div>
                <div class="col-md-6" style="text-align:right;">
                    忘记密码？请<a href="#">点击</a>这里&nbsp;&nbsp;
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