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
    <title>listType</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
</head>
<body>
    <div id="data">
        <table id="typeTable" class="active table table-hover table-striped" >
            <tr>
                <th>序号</th>
                <th>类别名</th>
                <th>级别</th>
                <th>父级id</th>
                <th>描述</th>
                <th>操作</th>
            </tr>
            <tr v-for="type in mydata">
                <td>{{mydata.indexOf(type)+1}}</td>
                <td>{{type.name}}</td>
                <td>{{type.grade}}</td>
                <td>{{type.parentId}}</td>
                <td>{{type.describe}}</td>
                <td>
                    <span style="display: none">{{type.id}}</span>
                    <a class="btn btn-danger" onclick="delType(this)">删除</a>
                    <a class="btn btn-default" v-bind:href="'updateType.jsp?id='+type.id">更新</a>
                </td>
            </tr>
        </table>
    </div>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/js/vue.js"></script>
    <script src="<%=request.getContextPath()%>/js/type.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            listType();
        });
    </script>
</body>
</html>
