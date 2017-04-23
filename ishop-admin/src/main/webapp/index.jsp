<%@page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">

    <title>admin index</title>
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
    <title></title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }

        .font-1 {
            font-size: 20px;
        }

        ul {
            list-style: none;
        }

        #left-bar a {
            margin-left: 10%;
        }

        #left-bar li:hover ul {
            display: block;
        }

        #left-bar ul li ul {
            display: none;
        }

        #left-bar ul li ul li {
            margin-top: 0px;
        }

        .main {}

        .search {
            width: 300px;
            margin: auto;
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
<!--top menu-->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">欢迎你，管理员！</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#">主页</a>
                </li>
                <li>
                    <a href="#">个人信息</a>
                </li>
                <li>
                    <a href="#">帮助</a>
                </li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>
<!--left menu-->
<div class="container-fluid">
    <div class="row">
        <div id="left-bar" class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-pills nav-stacked">
                <li>
                    <a class="active font-1" href="admin/listAdmin.jsp" target="contentIframe">管理员管理</a>
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="admin/queryAdmin.jsp" target="contentIframe">管理员查询</a>
                        </li>
                        <li>
                            <a href="admin/addAdmin.jsp" target="contentIframe">管理员增加</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="active font-1" href="user/listUser.jsp" target="contentIframe">用户管理</a>
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="user/queryUser.jsp" target="contentIframe">用户查询</a>
                        </li>
                        <li>
                            <a href="user/addUser.jsp" target="contentIframe">用户增加</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="active font-1" href="product/listProduct.jsp" target="contentIframe">商品管理</a>
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="queryProduct.jsp" target="contentIframe">商品查询</a>
                        </li>
                        <li>
                            <a href="addProduct.jsp" target="contentIframe">商品增加</a>
                        </li>
                        <li>
                            <a href="listType.jsp" target="contentIframe">所有类别</a>
                        </li>
                        <li>
                            <a href="queryType" target="contentIframe">类别查询</a>
                        </li>
                        <li>
                            <a href="addType" target="contentIframe">类别增加</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="active font-1" href="listComment.jsp">评论管理</a>
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="">评论增加</a>
                        </li>
                        <li>
                            <a href="">评论删除</a>
                        </li>
                        <li>
                            <a href="">评论修改</a>
                        </li>
                        <li>
                            <a href="">评论查询</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="active font-1" href="listOrder.jsp">订单管理</a>
                    <ul class="nav nav-stacked">
                        <li>
                            <a href="">订单增加</a>
                        </li>
                        <li>
                            <a href="">订单删除</a>
                        </li>
                        <li>
                            <a href="">订单修改</a>
                        </li>
                        <li>
                            <a href="">订单查询</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!--
    描述：右半部
-->     <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <iframe name="contentIframe" src="welcome.html" frameborder="0" width="100%" height="600px"></iframe>
        </div>

</body>
</html>