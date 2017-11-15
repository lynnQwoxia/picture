<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/11/15
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <!-- 包含 bootstrap 样式表 -->
    <link rel="stylesheet" href="https://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">

    <style type="text/css">
        #div1 {
            width: 488px;
            height: 70px;
            padding: 10px;
            border: 1px solid #aaaaaa;
        }
    </style>
    <script type="text/javascript">
        function allowDrop(ev) {
            ev.preventDefault();
        }

        function drag(ev) {
            ev.dataTransfer.setData("Text", ev.target.id);
        }

        function drop(ev) {
            ev.preventDefault();
            var data = ev.dataTransfer.getData("Text");
            ev.target.appendChild(document.getElementById(data));
        }
    </script>
</head>
<body>

<jsp:include page="../common/common.jsp"></jsp:include>
<div class="container">
    <video controls="controls" width="100%" height="500" controls="controls">
        <%--<source src="/video/wa.mp4" type="video/mp4" />--%>
        <source src="/video/qwq.mp4" type="video/mp4"/>
    </video>
    <%--     拖拽--%>
    <%--<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)"></div>--%>
    <%--<br />--%>
    <%--<img id="drag1" src="/img/was.jpg" draggable="true" ondragstart="drag(event)" />--%>
    <h2>表格</h2>
    <p>创建响应式表格 (将在小于768px的小型设备下水平滚动)。另外：添加交替单元格的背景色：</p>
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th>姓名</th>
                <th>邮箱</th>
                <th>密码</th>
            </tr>
            </thead>
            <tbody>
            <%--<c:forEach var="${users}" items="user">--%>
                <tr>
                    <th>${users.nickname}</th>
                    <th>${users.email}</th>
                    <th>${users.pswd}</th>
                </tr>
            <%--</c:forEach>--%>
            </tbody>
        </table>
    </div>

    <h2>图像</h2>
    <p>创建响应式图片(将扩展到父元素)。 另外：图片以椭圆型展示：</p>
    <img src="/img/was.jpg" class="img-responsive img-circle" alt="没有图" width="304" height="236">

    <h2>图标</h2>
    <p>插入图标:</p>
    <p>云图标: <span class="glyphicon glyphicon-cloud"></span></p>
    <p>信件图标: <span class="glyphicon glyphicon-envelope"></span></p>
    <p>搜索图标: <span class="glyphicon glyphicon-search"></span></p>
    <p>打印图标: <span class="glyphicon glyphicon-print"></span></p>
    <p>下载图标：<span class="glyphicon glyphicon-download"></span></p>
</div>
</body>
</html>
