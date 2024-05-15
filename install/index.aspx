<%@ Page Language="C#" %>
<%@ Import namespace="Wapkang.Install" %>
<script runat="server">
    public string httpModuleTip = "<br/>请在web.config中configuration->system.web->httpModules中添加节点<br/><add type=\"Wapkang.Web.HttpModule,Wapkang.Web\" name=\"HttpModule\" />,<br/>并在configuration->system.webServer->modules中添加节点<br/><add name=\"HttpModule\" type=\"Wapkang.Web.HttpModule, Wapkang.Web\" preCondition=\"managedHandler\" />";
    public string _checkMsg = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        bool isAssemblyInexistence = false;
        string binfolderpath = HttpRuntime.BinDirectory.ToLower();
        try
        {
            ArrayList inexistenceAssemblyList = new ArrayList();
            foreach (string assembly in InstallUtils.IndexAssemblylist)
            {
                if (!System.IO.File.Exists(binfolderpath + assembly))
                {
                    isAssemblyInexistence = true;
                    inexistenceAssemblyList.Add(assembly);
                }
            }
            if (isAssemblyInexistence)
            {
                foreach (string assembly in inexistenceAssemblyList)
                    _checkMsg += string.Format("<li><span style=\"color: Red; font-weight: bold\">{0}</span> 文件放置不正确,请将安装所需的dll文件复制到目录<b>{1}</b>中.</li>", assembly, binfolderpath);
            }
        }
        catch
        {
            _checkMsg += string.Format("<li>文件放置不正确,请将安装所需的dll文件复制到目录<b>{0}</b>中.</li>", binfolderpath);
        }
        if (!System.IO.File.Exists(binfolderpath.Replace("bin\\", "") + "web.config"))
        {
            isAssemblyInexistence = true;
            _checkMsg += string.Format("<li>web.config文件不存在,请将该文件放置在{0}目录下.</li>", binfolderpath.Replace("bin\\", ""));
        }
        else
        {
            string xPath1 = "/configuration/system.web/httpModules";
            string xPath2 = "/configuration/system.webServer/modules";
            System.Xml.XmlDocument webConfig = new System.Xml.XmlDocument();
            System.Xml.XmlDocument webConfigOrigin = new System.Xml.XmlDocument();
            webConfig.Load(binfolderpath.Replace("bin\\", "") + "web.config");
            webConfigOrigin = webConfig;
            System.Xml.XmlNode node1 = webConfig.SelectSingleNode(xPath1);
            System.Xml.XmlNode node2 = webConfig.SelectSingleNode(xPath2);
            if (node1 == null || node1.ChildNodes.Count <= 0 || node1.InnerXml.IndexOf("Wapkang.Web.HttpModule") < 0
                || node2 == null || node2.ChildNodes.Count <= 0 || node2.InnerXml.IndexOf("Wapkang.Web.HttpModule") < 0)
            {
                isAssemblyInexistence = true;
                _checkMsg += "<li>web.config中缺少了Wapkang.Web.HttpModule," + httpModuleTip + ".<br/><a href=\"http://wapkang.net/Install/Help.html\">详情请点击...</a></li>";
            }
        }
        if (!isAssemblyInexistence)
        {
            string physicsPath;
            if (!InstallUtils.SystemCreateDirectoryCheck(out physicsPath))
            {
                isAssemblyInexistence = true;
                _checkMsg += string.Format("<li>对目录<span style=\"color: Red\">{0}</span>没有读写权! 请给予创建目录及读写文件权限</li>", physicsPath);
            }
        }
        if (!isAssemblyInexistence)
            Response.Redirect("runNow.aspx");
    }
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>康源NET安装</title>
    <meta name="keywords" content="康源NET安装" />
    <meta name="description" content="康源NET安装" />
    <meta name="generator" content="康源NET 1.0.0" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="install.css" type="text/css" media="all" />
</head>
<body>
    <div class="wrap cl">
        <h2>
            <img alt="康源NET|WAP|CMS|论坛" src="images/logo.png" /><cite>安装程序</cite></h2>
        <div class="main cl">
            <h1>基本系统环境检测(<span style="color: Red; font-weight: bold">异常</span>)</h1>
            <div class="inner">
                <ol>
                    <%=_checkMsg%>
                </ol>
                <br/><br/>
                <span style="color: Red">请将上述问题全部解决再刷新该页面继续安装! </span>
            </div>
        </div>
        <div class="copy">
            &copy; 2005 - 2013 WapKang 软件工作室
        </div>
    </div>
</body>
</html>
