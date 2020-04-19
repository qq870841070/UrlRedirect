# UrlRedirect
Url隐式转发

主要实现思路就是首先咱们在域名设置上增加二级域名，然后同样的转发A记录，默认服务器IP地址  
然后匹配访问的二级域名，使用Iframe隐藏加载Url,如果单单只使用一个Iframe的话，高度滚动条不好处理  
所以最为关键的就是这段前段代码，它可以自适应高度  
```
<html xmlns="http://www.w3.org/1999/xhtml" runat="server">

    <head>
        <title>Enki的博客</title>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        <meta id="mymeta" />
    </head>
    <script type="text/javascript">
        var mobileAgent = new Array("iphone", "ipod", "ipad", "android", "mobile", "blackberry", "webos", "incognito", "webmate", "bada", "nokia", "lg", "ucweb", "skyfire");
        var browser = navigator.userAgent.toLowerCase();
        var isMobile = false;
        for (var i = 0; i < mobileAgent.length; i++) {
            if (browser.indexOf(mobileAgent[i]) != -1) {
                isMobile = true;
                mymeta.name = "viewport";
                mymeta.content = "width=device-width, initial-scale=1, maximum-scale=1";
                break;
            }
        }
    </script>
    <frameset cols="0,*" frameborder="NO" border="0" framespacing="0">
        <frame src="about:blank" scrolling="NO" noresize />
        <frame src="<%=targetUrl %>" />
    </frameset>
    <noframes></noframes>
</html>
```
