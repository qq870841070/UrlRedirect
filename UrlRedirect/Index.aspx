<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="UrlRedirect.Index" %>

<!DOCTYPE html>

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
