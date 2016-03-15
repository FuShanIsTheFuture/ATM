<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CardIdx.aspx.cs" Inherits="ATM.Models.CardIdx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>欢迎光临自助银行</title>
    <script type="text/javascript">
        window.onload = function () {
            alert('Welcome!');
        }
    </script>
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
            background:url(images/bg2.jpg) no-repeat;
        }
       div{
          margin:30px auto 
        }
        #container{
        margin:auto auto;
        background-color:white;
        background:rgba(255, 255, 255, 0.5);
        width:500px;
        vertical-align:middle;
        margin-top:15%
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div class="row">
            <div class="col-md-12">
                <h2>请选择您需要的服务>></h2>
            </div>
        </div>
        <nav>
            <ul class="list-inline">
                <li>
                    存款类型
                </li>
                 <li>
                     开户日期
                </li>
                 <li>
                     开户金额
                </li>
                 <li>

                </li>
                 <li>

                </li>
                 <li>

                </li>
            </ul>
        </nav>
    </div>
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
