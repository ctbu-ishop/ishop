<%--
  Created by IntelliJ IDEA.
  User: myq
  Date: 2017/4/23
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>所有商品</title>
    <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
    <!--提示框插件样式-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/sweetalert2.min.css">
</head>
<body>
<div id="data">
    <table id="productTable" class="active table table-hover table-striped">
        <tr>
            <th>序号</th>
            <th>商品编号</th>
            <th>商品名</th>
            <th>商品类型</th>
            <th>商品缩略图</th>
            <th>价格</th>
            <th>库存量</th>
            <th>月销量</th>
            <th>操作</th>
        </tr>
        <tr v-for="product in mydata">
            <td>{{mydata.indexOf(product)+1}}</td>
            <td>{{product.id}}</td>
            <td>{{product.name}}</td>
            <td>{{product.typeId}}</td>
            <td>{{product.imageSrc}}</td>
            <td>{{product.sellPrice}}</td>
            <td>{{product.inventNumber}}</td>
            <td>{{product.monthSellNumber}}</td>
            <td>
                <span style="display: none">{{product.id}}</span>
                <button class="btn btn-danger" onclick="delProduct(this)">删除</button>
                <a  v-bind:href="'updateProduct.jsp?id='+product.id"><button class="btn btn-default">更新</button></a>
            </td>
        </tr>
    </table>
</div>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/vue.js"></script>
<!--引入插件的js-->
<script src="<%=request.getContextPath()%>/js/sweetalert2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/product.js"></script>
<script>
    $(document).ready(function(){
        listProduct();
    });
</script>

</body>
</html>
