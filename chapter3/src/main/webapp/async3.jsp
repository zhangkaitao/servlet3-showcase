<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

<script type="text/javascript">
    (function () {

        var d = document,
                cometFrame = d.body.appendChild(d.createElement('iframe')),
                doc = cometFrame.contentWindow.document,
                //加?随机数目的是防止同一个浏览器打开多个async时阻塞的问题
                url = "${pageContext.request.contextPath}/async3?" + new Date().getTime();
                content = '<body onload="var d=document,s=d.createElement(\'script\');s.src=\''
                        + url
                        + '\';d.getElementsByTagName(\'head\')[0].appendChild(s)">';

        cometFrame.style.cssText = "position:absolute;width:1px;height:1px;left:-100px;top:-100px;";
        doc.open().write(content);
        doc.close();//触发onload事件。


    })();

    function push(msg) {
        var div = document.createElement("div");
        div.innerHTML = msg;
        document.body.appendChild(div);
    }


</script>
</body>
</html>