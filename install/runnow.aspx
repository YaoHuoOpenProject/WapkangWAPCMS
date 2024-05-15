<%@ Page Language="c#" Inherits="Wapkang.Install.RunNow" %>
<%@ Import namespace="Wapkang.Common" %>
<%@ Import namespace="Wapkang.Common.Generic" %>
<%@ Import namespace="Wapkang.Install" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>康源WAP CMS(V<%=AssemblyVersion%>) 安装</title>
    <meta name="keywords" content="康源NET安装" />
    <meta name="keywords" content="康源NET安装" />
    <meta name="generator" content="康源NET <%=AssemblyVersion%>" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="install.css" type="text/css" media="all" />
    <link rel="stylesheet" href="js/css/common.css" type="text/css" />
    <link rel="stylesheet" href="js/css/boxy.css" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jqueryboxy.js"></script>
    <script type="text/javascript" src="js/tooltips.js"></script>
</head>
<body>
<%if(curStep>=8){ %>
<style type="text/css">
    .wrap{text-align:left;margin:0 auto;width:1000px;}
</style>
<%}else{ %> 
<style type="text/css">
    .wrap{text-align:left;margin:0 auto;width:900px;}
</style>
<%} %>
<div class="wrap cl">
	<h2><img alt="康源NET|WAP CMS|建站" src="images/logo.png" /><cite><b><%=AssemblyVersion%></b>安装程序</cite></h2>
	<div class="nav">
        <ul>
		    <li <%if(curStep==0){ %> class="cur"<%}else{ %> class="finish"<%} %>><span id="index">欢迎</span></li>
		    <li <%if(curStep==1){ %> class="cur"<%}else if(curStep>1){ %> class="finish"<%} %>><span>安装包解压</span></li>
		    <li <%if(curStep==2){ %> class="cur"<%}else if(curStep>2){ %> class="finish"<%} %>><span>环境检测</span></li>
		    <li <%if(curStep==3){ %> class="cur"<%}else if(curStep>3){ %> class="finish"<%} %>><span>数据库配置</span></li>
		    <li <%if(curStep==4){ %> class="cur"<%}else if(curStep>4){ %> class="finish"<%} %>><span>筛选功能</span></li>
		    <li <%if(curStep==5){ %> class="cur"<%}else if(curStep>5){ %> class="finish"<%} %>><span>网站配置</span></li>
		    <li <%if(curStep==6){ %> class="cur"<%}else if(curStep>6){ %> class="finish"<%} %>><span>执行安装</span></li>
		    <%if(curStep>=8){ %> <li class="cur"><span>导入数据</span></li><%} %>
        </ul>
	</div>
    <%if(curStep==0){ %>
	    <div class="main cl">
		    <h1>使用协议</h1>
            <div class="inner">
                <h2><b>简介</b></h2>
                <p>1、康源WAP CMS是一款卓越的WAP建站程序,任何用户都可以使用该软件来建立自己的网站.官方讨论区网址为 <a href="http://wapkang.com/forum.Aspx" target="_blank">http://wapkang.com/forum.Aspx</a>。 </p>
                <p>2、程序采用ASP.NET(C#语言)开发, 采用分层架构、插件机制、模板引擎驱动开发模式,程序将会持续升级,力争做最好的WAP建站系统! </p>
                <p>3、请在使用前仔细阅读使用许可协议,以免在日后使用过程中给您带来不必要的麻烦。</p>
                <h2><b>总则</b></h2>
                <p>1、你一但使用了本软件,就表示你已经无条件认同本协议的内容。</p>
                <p>2、任何个人、团体或者企业单位（不管是否具有商业性质）都可以使用本软件并且不需要额外支付任何费用。</p>
                <p>3、按照《中华人民共和国的著作权法》、《计算机软件著作权保护条例》中的相关规定，本软件的作者依法分享有本软件的著作权，即使当本软件被用作二次开发之后，软件的作者依然对二次开发后的软件中与本软件相同的部分代码享有著作权。任何个人及团体均不得以任何形式侵犯作者的著作权。</p>
                <h2><b>限制</b></h2>
                <p>当出现以下任何一种情况时将不再被允许使用本软件：</p>
                <p>1、将本软件用于制作法律允许之外的站点的</p>
                <p>2、将本软件直接通过某种途径比如光盘、网络、书籍等进行贩卖的</p>
                <p>3、将本软件二次开发成另外一个软件并且未经过本软件的作者同意而直接贩卖的</p>
                <p>4、将本软件所二次开发出的成品直接笼统的归为其他版权的</p>
                <h2><b>免责</b></h2>
                <p>1、因本软件在使用过程中涉及各方面的因素，其中包括计算机操作系统的安全性、稳定性、以及黑客行为等等，因这些方面的原因导致本软件的使用者造成的损失，作者不承担任何责任。</p>
                <p>2、本软件虽然在开发过程中经过严格的反复测试，但并不一定可以排除软件自身的全部错误或者隐藏的危险，因软件本身的原因对本软件使用者造成的损失，软件作者有义务帮助使用者来排除或者挽回损失，但不承担任何责任。</p>
            </div>
	    </div>
	    <div class="btn cl">
		    <a href="javascript:window.close();" class="back">退出安装</a>
		    <a href="runNow.aspx?action=unpackfiles" class="next">接受协议</a>
	    </div>
    <%}else if(curStep==1){ %>
        <div class="main cl">
		    <h1>安装包解压</h1>
		    <div class="inner">
		        <form action="UnpackFiles" method="post">
			        <table width="100%" cellspacing="0" cellpadding="0" summary="安装包解压">
			            <tbody>
			                <tr>
				                <td class="title">安装包路径:</td>
                                <td><input id="files_path" name="files_path" class="txt" type="text" value="<%=InstallFilesPath %>"/></td>
			                </tr>
			                <tr>
				                <td class="title">解压到路径:</td>
                                <td><input id="web_path" name="web_path" class="txt" type="text" value="<%=InstallDirPath %>"/></td>
			                </tr>
                        </tbody>
			        </table>
		        </form>
		    </div>
	    </div>
	    <div class="btn cl">
		    <a href="javascript:history.back();" class="back">上一步</a>
		    <a href="###" onclick="UnpackFiles();" class="next">开始解压</a>
		    <a href="runNow.aspx?action=environmenttest&amp;webPath=<%=InstallDirPath%>" class="next">跳过</a>
	    </div>
        <script type="text/javascript">
            var showbox;
            var alerthead = "<p style=\"width:300px;font-size:14px;\"><img src=\"images/loading.gif\" alt=\"loading\" />";
            var runstep = 0;
            var steptime = 700;
            function UnpackFiles() {
                var filespath = $('#files_path').val();
                var dirpath = $('#web_path').val();
                if (filespath == "") {
                    Boxy.alert('请填写安装包路径', false, { width: 400 });
                    return;
                }
                if (dirpath == "") {
                    Boxy.alert('请填写网站安装路径', false, { width: 400 });
                    return;
                }
                showbox = new Boxy(alerthead + "正在执行解压操作,此操作比较耗时,请耐心等待......</p>", { closeable: false, modal: true, center: true });
                UnpackFilesAjax(filespath, dirpath);
            }
            function UnpackFilesAjax(installfilespath, targetdirpath) {
                showbox.setContent(alerthead + "正在执行解压操作,此操作比较耗时,请耐心等待......</p>");
                showbox.show();
                jQuery.get('installajax.aspx', { 'action': 'unpackfiles', 'filesPath': installfilespath, 'targetPath': targetdirpath, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (!callback.result) {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert(callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    } else {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.ask(callback.message, ['下一步'], function on() { location.href = 'runNow.aspx?action=environmenttest&webPath=' + targetdirpath; }, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                });
            }
        </script>
    <%}else if(curStep==2){ %>
	<div class="main cl">
		<h1>环境检测</h1>
		<div class="inner">
			<ul id="resultlist" class="list">
			</ul>
		</div>
	</div>
	<div class="btn cl">
		<a href="javascript:history.back();" class="back">上一步</a>
		<a id="nextlink" href="runNow.aspx?action=dbconfig&amp;webPath=<%=WebPath%>" class="next" disabled="true">下一步</a>		
	</div>
    <script type="text/javascript">
        var resultlist = <%=testResult%>;
        var errorcount = 0;
        for (i = 0; i < resultlist.length; i++) {
            var icon, iconname;
            if (resultlist[i].result == 'true') {
                icon = 'ok';
                iconname = '成功';
            }
            else {
                icon = 'error';
                iconname = '失败';
                errorcount++;
            }
            $('#resultlist').append('<li><img src="images/' + icon + '.gif" alt="' + iconname + '"/><a href="#">' + resultlist[i].msg + '</a></li>');
        }
        if(errorcount <= 0){
            $('#nextlink').attr("disabled","");
        }
    </script>
    <%}else if(curStep==3){ %>

    <div class="main cl">
		<h1>数据库配置</h1>
		<div class="inner">
			<form action="checkdbConfig" method="post">
			    <table width="100%" cellspacing="0" cellpadding="0" summary="数据库配置">
                    <tr>
                        <td class="title">选择数据库类型:</td>
                        <td>
                            <select id="db_dataType" name="db_dataType" class="txt" onchange="setData(this)" disabled="disabled">
                                <option value="1">Access</option>
                                <option value="2" selected="selected">SQL Server</option>
                                <option value="3">MySQL</option>
                            </select>
                        </td>
                    </tr>
			        <tbody id="Access" style="display:none">
                        <tr>
				            <td class="title">Access 数据库路径:</td>
                            <td><input id="mdb_path" name="mdb_path" class="txt" type="text" value="database/#wapKang.mdb"/></td>
                        </tr>
			        </tbody>
                    <tbody id="SQLServer" style="display:block">
			            <tr>
				            <td class="title">SQL 服务器地址:</td>
                            <td><input id="sql_ip" name="sql_ip" class="txt" type="text" value="<%=sqlServerIP %>"/>本地数据库请填写“(local)”</td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库名称:</td>
                            <td><input id="sql_name" name="sql_name" class="txt" type="text" value="<%=dataBaseName %>"/>如果数据库名称不存在则尝试自动创建</td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库账号:</td>
                            <td><input id="sql_username" name="sql_username" class="txt" type="text" value="<%=sqlUID %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库密码:</td>
                            <td><input id="sql_password" name="sql_password" class="txt" type="password" value="<%=sqlPassword %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">SQL 表前辍:</td>
                            <td><input id="sql_prefix" name="sql_prefix" class="txt" type="text" value="<%=tablePrefix%>"/></td>
			            </tr>
                        </tbody>
                    <tbody id="MySQL" style="display:none">
			            <tr>
				            <td class="title">MySQL 服务器地址:</td>
                            <td><input id="mysql_ip" name="mysql_ip" class="txt" type="text" value="<%=sqlServerIP %>"/>远程用IP,本地localhost</td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库名称:</td>
                            <td><input id="mysql_name" name="mysql_name" class="txt" type="text" value="<%=dataBaseName %>"/>如果数据库名称不存在则尝试自动创建</td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库账号:</td>
                            <td><input id="mysql_username" name="mysql_username" class="txt" type="text" value="<%=sqlUID %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库密码:</td>
                            <td><input id="mysql_password" name="mysql_password" class="txt" type="password" value="<%=sqlPassword %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库端口:</td>
                            <td><input id="mysql_port" name="mysql_port" class="txt" type="text" value="3306"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 表前辍:</td>
                            <td><input id="mysql_prefix" name="mysql_prefix" class="txt" type="text" value="<%=tablePrefix%>"/></td>
			            </tr>
                        </tbody>
			    </table>
			</form>
		</div>
	</div>
	<div class="btn cl">
		<a href="javascript:history.back();" class="back">上一步</a>
		<a href="###" onclick="checkdbConfig();" class="next">下一步</a>		
	</div>
    <script type="text/javascript">
        var webinstallPath ="<%=WebPath%>";
        var showbox;
        var alerthead = "<p style=\"width:300px;font-size:14px;\"><img src=\"images/loading.gif\" alt=\"loading\" />";
        var createdDb = 0;
        var runstep = 0;
        var steptime = 700;
        function setData(obj) {
            var frm = obj.form;
            var arr = Array("Access", "SQLServer", "MySQL");
            for (var i = 0; i < arr.length; i++) {
                document.getElementById(arr[i]).style.display = "none";
            }
            switch (parseInt(obj.value)) {
                case 1:
                    document.getElementById("Access").style.display = "block";
                    break;
                case 2:
                    document.getElementById("SQLServer").style.display = "block";
                    break;
                case 3:
                    document.getElementById("MySQL").style.display = "block";
                    break;
            }
        }
        function checkdbConfig() {
            var dbdataType = $('#db_dataType').val();
            var sqlip = $('#sql_ip').val();
            var sqlname = $('#sql_name').val();
            var loginname = $('#sql_username').val();
            var password = $('#sql_password').val();
            var tableprefix = $('#sql_prefix').val();
            var sqlport = $('#sql_port').val();
            dbdataType = parseInt(dbdataType);
            if (dbdataType == 1) {
                sqlip = $('#mdb_path').val();
                if (sqlip == "") {
                    Boxy.alert('请填写Access数据库路径', false, { width: 400 });
                    return;
                }
            }
            else if (dbdataType == 2) {
                if (sqlip == "") {
                    Boxy.alert('SQL 服务器地址不能为空', false, { width: 400 });
                    return;
                }
                if (sqlname == "") {
                    Boxy.alert('SQL 数据库名称不能为空', false, { width: 400 });
                    return;
                }
                if (loginname == "") {
                    Boxy.alert('SQL 数据库账号不能为空', false, { width: 400 });
                    return;
                }
                if (password == "") {
                    Boxy.alert('SQL 数据库密码不能为空', false, { width: 400 });
                    return;
                }
                if (tableprefix == "") {
                    Boxy.alert('SQL 表前缀不能为空', false, { width: 400 });
                    return;
                }
            }
            else {
                sqlip = $('#mysql_ip').val();
                sqlname = $('#mysql_name').val();
                loginname = $('#mysql_username').val();
                password = $('#mysql_password').val();
                tableprefix = $('#mysql_prefix').val();
                sqlport = $('#mysql_port').val();
                if (sqlip == "") {
                    Boxy.alert('MySQL 服务器地址不能为空', false, { width: 400 });
                    return;
                }
                if (sqlname == "") {
                    Boxy.alert('MySQL 数据库名称不能为空', false, { width: 400 });
                    return;
                }
                if (loginname == "") {
                    Boxy.alert('MySQL 数据库账号不能为空', false, { width: 400 });
                    return;
                }
                if (password == "") {
                    Boxy.alert('MySQL 数据库密码不能为空', false, { width: 400 });
                    return;
                }
                if (tableprefix == "") {
                    Boxy.alert('MySQL 表前缀不能为空', false, { width: 400 });
                    return;
                }
            }
            showbox = new Boxy(alerthead + "正在检测数据库连接,该检测可能比较耗时,请耐心等待......</p>", { closeable: false, modal: true, center: true });
            CheckdbConfigAjax(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
        }

        function CheckdbConfigAjax(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport) {
            showbox.setContent(alerthead + "正在检测数据库连接,该检测可能比较耗时,请耐心等待......</p>");
            showbox.show();
            jQuery.get('installajax.aspx', { 'action': 'checkdbconnection', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
            function (data) {
                var callback = eval("(" + data + ")");
                if (!callback.result) {
                    if (dbdataType == 1) {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('Access数据库连接错误:'+ callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                   else if (dbdataType == 2) {
                        if (createdDb == 0 && callback.code == "4060") {
                            showbox.hide();
                            Boxy.confirm("您填写的数据库\"" + sqlname + "\"不存在,是否尝试在数据库自动创建该名称的数据库?",
                            function on() { runstep = 0; createDbAjax(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport); }, { title: "是否创建数据库" });
                        }
                        else if (callback.code == "53") {
                            setTimeout(function on() {
                                showbox.hide();
                                Boxy.alert("数据库连接超时,请检查数据库地址是否正确", null, { width: 400 });
                                runstep = 0;
                            }, ++runstep * steptime);
                        }
                        else {
                            setTimeout(function on() {
                                showbox.hide();
                                Boxy.alert(callback.message, null, { width: 400 });
                                runstep = 0;
                            }, ++runstep * steptime);
                        }
                    }
                    else {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('MySQL数据库连接错误:' + callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                } else if (dbdataType == 2) {
                    setTimeout(function on() {
                        checkDBCollation(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                    }, ++runstep * steptime);
                }
                else {
                    setTimeout(function on() {
                        DBSourceExist(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                    }, ++runstep * steptime);
                }
            });
        }

        function DBSourceExist(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport) {
            showbox.show();
            showbox.setContent(alerthead + "正在检测数据库已有数据......</p>");
            jQuery.get('installajax.aspx', { 'action': 'dbsourceexist', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'prefix': tableprefix, 'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        showbox.hide();
                        runstep = 0;
                        Boxy.confirm('系统检测到数据库"' + sqlname + '"已经包含网站所需的数据表,继续安装会清空之前数据,是否继续?',
                        function on() {
                            saveDbSet(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                        }
                        , { title: "是否继续安装?" });
                    }
                    else {
                        if (callback.code = '208') {
                            setTimeout(function on() {
                                saveDbSet(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                            }, ++runstep * steptime);
                        } else {
                            showbox.hide();
                            Boxy.alert(callback.message, null, { width: 400 });
                            runstep = 0;
                        }
                    }
                });
        }
        function checkDBCollation(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport) {
            showbox.show();
            showbox.setContent(alerthead + "正在检测数据库排序规则......</p>");
            jQuery.get('installajax.aspx', { 'action': 'checkdbcollation', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            DBSourceExist(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                        }, ++runstep * steptime);
                    }
                    else {
                        showbox.hide();
                        Boxy.alert(callback.message, null, { width: 400 });
                        runstep = 0;
                    }
            });
        }
        function createDbAjax(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport) {
            showbox.show();
            showbox.setContent(alerthead + "正在创建数据库......</p>");
            jQuery.get('installajax.aspx', { 'action': 'createdb', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password,'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        createdDb = 1;
                        setTimeout(function on() {
                            CheckdbConfigAjax(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport);
                        }, ++runstep * steptime);
                    } else if (callback.code = "262") {
                        createdDb = 0;
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('数据库用户 \'' + loginname + '\' 没有创建数据库的权限,创建新数据库失败,请填写已有的数据库 ', null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    } else {
                        createdDb = 0;
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert(callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                }
            );
        }
        function saveDbSet(dbdataType, sqlip, sqlname, loginname, password, tableprefix, sqlport) {
            showbox.show();
            showbox.setContent(alerthead + "正在保存数据库配置......</p>");
            jQuery.get('installajax.aspx', { 'action': 'savedbset', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'prefix': tableprefix,'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.ask(callback.message, ['下一步'], function on() { location.href = 'runNow.aspx?action=filter'; }, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                }
            );
        }
    </script>
    <%} else if (curStep == 4) {%>
	<div class="main cl">
		<h1>筛选安装功能</h1>
		<div class="inner">
			<form id="filterFunction" action="filterFunction" method="post">
				<table width="100%" cellspacing="0" cellpadding="0" summary="筛选功能">
				<tbody>
                 <%
                        string msg =string.Empty;
                        int for_id = 0;
                        string disabled = string.Empty;
                        List<MyAssemblyInfo> appList = InstallUtils.GetAssemblyList();
                        foreach (MyAssemblyInfo curinfo in appList)
                        {
                            disabled=curinfo.AppType==0?"disabled =\"disabled\"":string.Empty;
                            for_id++;
                            if (Utils.InArray(for_id.ToString(),"1,6,11,16,21,26,31,36,41,46,51,56,61,66,71,86,91,96"))
                                msg += "<tr>";
                            msg += "<td><label title=\"" + curinfo.ProductVersion + "\" class=\"hastooltip\"><input id=\"assemblyid\" type=\"checkbox\" name=\"assemblyid\" value=\"" + curinfo.Id + "\" checked=\"checked\" " + disabled + "/><span style=\"color: Red; font-weight: bold\">" + curinfo.ProductName + "</span></label></td>";
                            if (for_id % 5 == 0 || for_id >= appList.Count)
                                msg += "</tr>";
                        }
                    %>
                   <%=msg%>
				</tbody>
				</table>
			</form>
            <div class="headeline"></div>
            <img src="images/hint.gif" /><b>也可以安装执行完成后通过后台在线安装功能插件</b>
		</div>
	</div>
	<div class="btn cl">
		<a href="javascript:history.back();" class="back">上一步</a>
		<a href="###" onclick="checkfilterFunction();" class="next">下一步</a>		
	</div>
    <script type="text/javascript">
        function checkfilterFunction() {
            var getCK = document.getElementsByTagName('input');
            var j = 0;
            var assemblyidlist = "";
            for (var i = 0; i < getCK.length; i++) {
                whichObj = getCK[i];
                if (whichObj.type == "checkbox" && whichObj.checked == true) {
                    assemblyidlist += whichObj.value + ',';
                    j++;
                }
            }
            if (assemblyidlist == "") {
                Boxy.alert('请正确选择要安装的功能', false, { width: 400 });
                return;
            }
            assemblyidlist = assemblyidlist.substring(0, assemblyidlist.length - 1);
            $('#filterFunction').attr("action", "runNow.aspx?action=adminset");
            $('#filterFunction').submit();
        }
    </script>
    <%} else if (curStep == 5) {%>
	<div class="main cl">
		<h1>网站配置</h1>
		<div class="inner">
			<form id="AdminNameset" action="" method="post">
				<table width="100%" cellspacing="0" cellpadding="0" summary="网站配置">
				<tbody>
					<tr>
						<td class="title">管理员编号:</td><td><input id="adminid" name="adminid" class="txt" value="1000" type="text"/>用户起始编号(ID)</td>
					</tr>
					<tr>
						<td class="title">管理员账号:</td><td><input id="adminname" name="adminname" class="txt" value="admin" type="text"/></td>
					</tr>
					<tr>
						<td class="title">管理员密码:</td><td><input id="adminpassword" name="adminpassword" class="txt" type="password"/></td>
					</tr>
					<tr>
						<td class="title">确认管理员密码:</td><td><input id="confirmpassword" name="confirmpassword" class="txt" type="password"/></td>
					</tr>
				</tbody>
				</table>
                <input type="hidden" id="assemblyid" name="assemblyid" value="<%=assemblyId %>" />
			</form>
		</div>
	</div>
	<div class="btn cl">
		<a href="javascript:history.back();" class="back">上一步</a>
		<a href="###" onclick="checkAdminNameset();" class="next">下一步</a>		
	</div>
    <script type="text/javascript">
        function GetStringLen(str) {
            var i, sum;
            sum = 0;
            for (i = 0; i < str.length; i++) {
                if ((str.charCodeAt(i) >= 0) && (str.charCodeAt(i) <= 255))
                    sum = sum + 1;
                else
                    sum = sum + 2;
            }
            return sum;
        }
        function checkAdminNameset() {
            var adminname = $('#adminname').val();
            var adminpassword = $('#adminpassword').val();
            var confirmpassword = $('#confirmpassword').val();
            var adminid = $('#adminid').val();
            var assemblyid = $('#assemblyid').val();
            if (GetStringLen(adminid) > 8) {
                Boxy.alert('会员起始ID长度不能大于8位', false, { width: 400 });
                return;
            }
            if (adminname == "") {
                Boxy.alert('管理员账号不能为空', false, { width: 400 });
                return;
            }
            if (GetStringLen(adminname) < 4) {
                Boxy.alert('管理员账号不能低于4个字符', false, { width: 400 });
                return;
            }
            if (adminpassword == "") {
                Boxy.alert('管理员密码不能为空', false, { width: 400 });
                return;
            }
            if (GetStringLen(adminpassword) < 4) {
                Boxy.alert('管理员密码不能低于4个字符', false, { width: 400 });
                return;
            }
            if (adminpassword != confirmpassword) {
                Boxy.alert('两次输入的密码不一致', false, { width: 400 });
                return;
            }
            $('#AdminNameset').attr("action", "runNow.aspx?action=initial");
            $('#AdminNameset').submit();
        }
    </script>
    <%} else if (curStep == 6) {%>
    <div class="main cl">
		<h1 id="processstate" style="color: Red; font-weight: bold">安装</h1>
		<div class="inner">
			<ul id="processlist" class="list">
            </ul>
		</div>
        <input type="hidden" id="_adminname" name="adminname" value="<%=adminName %>" />
        <input type="hidden" id="_adminpassword" name="adminpassword" value="<%=adminPassword %>" />
        <input type="hidden" id="_adminid" name="adminid" value="<%=adminId %>" />
        <input type="hidden" id="_assemblyid" name="assemblyid" value="<%=assemblyId %>" />
	</div>
	<div class="btn cl">
		<a id="successlink2" href="###" class="back">删除安装文件</a> <a id="successlink" href="###" class="back">登录管理</a> <a id="successlink3" href="###" class="back">导入旧版数据</a>
	</div>
    <script type="text/javascript">
        var webinstallPath = "<%=WebPath%>";
        var webDbType = "<%=DbType %>";
        var adminname = $('#_adminname').val();
        var adminpassword = $('#_adminpassword').val();
        var adminid = $('#_adminid').val();
        var assemblyid = $('#_assemblyid').val();
        var assemblyidArray = assemblyid.split(",");
        var runstep = 0;
        var steptime = 1000;
        var haveerror = 0;
        var j = 0;
        var processid;
        function runinstall() {
            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>数据文件准备中......</li>');
            if (adminname == "" || adminpassword == "") {
                $('#processlist').append('<li><img alt="失败" src="images/error.gif"/>管理员帐号数据异常,安装失败......</li>');
                return;
            }
            SetProcessstate(0);
            createTable();
        }
        function SetProcessstate(state) {
            if(state==1)
                $('#processstate').html('<img alt="安装完成" src="images/success.gif"/>安装完成！请在底部链接选择对应操作...');
            else if(state==2)
                $('#processstate').html('<img alt="安装失败" src="images/failure.gif"/>安装没有成功,请看以下错误信息...');
            else
                $('#processstate').html('<img alt="进行中" src="images/loading.gif"/>请勿关闭!安装正在进行中...');
        }
        function createTable() {
            jQuery.get('installajax.aspx', { 'action': 'createtable', 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>数据表,约束和索引创建成功......</li>');
                            createSP();
                        },steptime);
                    }
                    else {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="失败" src="images/error.gif"/>内部异常,数据表创建失败......</li>');
                            SetProcessstate(2);
                        }, steptime);
                    }
                }
            );
        }
        function createSP() {
            jQuery.get('installajax.aspx', { 'action': 'createsp', 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>选择创建SqlServer ' + callback.message + ' 版本存储过程......</li>');
                        }, steptime);

                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>存储过程创建成功......</li>');
                        initSource();
                        }, steptime);
                    }
                    else {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="失败" src="images/error.gif"/>内部异常,（' + callback.message + '）</li>');
                            SetProcessstate(2);
                        }, steptime);
                    }
                }
            );
        }
        function initSource() {
            jQuery.get('installajax.aspx', { 'action': 'initsource', 'userid': adminid, 'passwordmode': '1', 'username': adminname, 'password': adminpassword, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>' + callback.message + '</li>');
                            Installationfeatures();
                        }, steptime);
                    }
                    else {
                        setTimeout(function on() {
                            $('#processlist').append('<li><img alt="失败" src="images/error.gif"/>内部异常,' + callback.message + ',请检查......</li>');
                            SetProcessstate(2);
                        }, steptime);
                    }
                }
            );
            }
            function Pause(obj, iMinSecond) {
                if (window.eventList == null) window.eventList = new Array();
                var ind = -1;
                for (var i = 0; i < window.eventList.length; i++) {
                    if (window.eventList[i] == null) {
                        window.eventList[i] = obj;
                        ind = i;
                        break;
                    }
                } if (ind == -1) {
                    ind = window.eventList.length;
                    window.eventList[ind] = obj;
                }
                setTimeout("GoOn(" + ind + ")", iMinSecond);
            }
            function GoOn(ind) {
                var obj = window.eventList[ind];
                window.eventList[ind] = null;
                if (obj.NextStep) 
                    obj.NextStep();
                else 
                    obj();
            }
            function processNow() {
                clearTimeout(processid);
                if (j < assemblyidArray.length) {
                    jQuery.get('installajax.aspx', { 'action': 'function', 'currentappid': assemblyidArray[j], 'time': Math.random() },
                    function (data) {
                        var callback = eval("(" + data + ")");
                        if (callback.result) {
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>' + callback.message + '</li>');
                        }
                        else {
                            $('#processlist').append('<li><img alt="失败" src="images/error.gif"/>' + callback.message + '</li>');
                            haveerror++;

                        }
                        j++;
                        if (j < assemblyidArray.length)
                            processid = setTimeout(processNow, 2000);
                        else
                            showSuccessLink();
                    }
                );
                }
                else
                    showSuccessLink();
            }
            function Installationfeatures() {
                Pause(this, ++runstep * steptime);
                this.NextStep = function () {
                    if (assemblyid != "") {
                        $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>正在准备安装选定的功能插件......</li>');
                        processid = setTimeout(processNow, 2000);
                    }
                    else {
                        showSuccessLink();
                    }
                }
            }
            function showSuccessLink() {
                setTimeout(function on(){
                        $('#successlink').attr('class', 'next');
                        $('#successlink').attr('href', '../user/Login.aspx');
                        $('#successlink2').attr('class', 'next');
                        $('#successlink2').attr('href', 'runNow.aspx?action=deleteinstalldir&webpath=' + webinstallPath);
                        $('#successlink3').attr('class', 'next');
                        $('#successlink3').attr('href', 'runNow.aspx?action=importing&assemblyid=' + assemblyid);
                        if (haveerror > 0)
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>安装完成,但有 ' + haveerror + ' 个功能插件安装失败,请尝试登录后台在线安装或通过更新助手执行安装......</li>');
                        else
                            $('#processlist').append('<li><img alt="成功" src="images/ok.gif"/>安装完成......</li>');
                        $('#processlist').append('<li>如果需要导入ASP版数据请点击导入链接! 不需要导入数据并且是正式站请在下面点击 删除安装文件,防止他人通过该文件重新执行安装会对正在运行的网站数据库清空! </li>');
                        SetProcessstate(1);
                }, steptime);
            }
        runinstall();
    </script>
    <%} else if (curStep == 7) {%>
        <script type="text/javascript">
            var webinstallPath = "<%=WebPath%>";
            Boxy.ask('安装目录移除成功！请登录管理账号在页面底部进入后台配置网站等信息', ['现在登录'], function on() { location.href = webinstallPath + 'user/login.aspx'; }, { width: 400 });
        </script>
    <%} else if (curStep == 8) {%>
    <div class="main cl">
		<h1>导入康源ASP版本数据</h1>
        <p>导入说明:</p>
         <p>新版程序必须安装在ASP版同一个目录内,否则无法导入txt文件的文本数据!导入的同时将删除ASP版数据,请在安装前先备份ASP版数据!避免导入过程因网络稳定性因素出现冲断等问题造成数据丢失!</p>
	     <p>导入旧版数据成功后,请使用ASP版管理ID密码登录网站.注意:ASP版如果存在多个超级站长 那么只认第一个超级站长（按最小值ID排序,例如ASP版超级站长ID分别是:1,66,88 那么导入后ID1为创始人编号，拥有全权管理系统权限）</p>
         <p>如果是同一数据库(刚安装的新版程序的数据库是跟ASP版同一个数据库)则不需要对以下数据库信息做修改!</p>
        <BR />
		<h1>ASP版本使用的数据库</h1>
    	<div class="inner">
			<form action="checkdbConfig" method="post">
			    <table width="100%" cellspacing="0" cellpadding="0" summary="源数据库配置">
                    <tr>
                        <td class="title">选择源数据类型:</td>
                        <td>
                            <select id="db_dataType" name="db_dataType" class="txt" onchange="setData(this)" disabled="disabled">
                                <option value="1">Access</option>
                                <option value="2" selected="selected">SQL Server</option>
                                <option value="3">MySQL</option>
                            </select>(暂时仅支持MSSQL数据库导入)
                        </td>
                    </tr>
			        <tbody id="Tbody1" style="display:none">
                        <tr>
				            <td class="title">Access 数据库路径:</td>
                            <td><input id="mdb_path" name="mdb_path" class="txt" type="text" value="database/#wapKang.mdb"/></td>
                        </tr>
			        </tbody>
                    <tbody id="Tbody2" style="display:block">
			            <tr>
				            <td class="title">SQL 服务器地址:</td>
                            <td><input id="sql_ip" name="sql_ip" class="txt" type="text" value="<%=sqlServerIP %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库名称:</td>
                            <td><input id="sql_name" name="sql_name" class="txt" type="text" value="<%=dataBaseName %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库账号:</td>
                            <td><input id="sql_username" name="sql_username" class="txt" type="text" value="<%=sqlUID %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">SQL 数据库密码:</td>
                            <td><input id="sql_password" name="sql_password" class="txt" type="password" value="<%=sqlPassword %>"/></td>
			            </tr>
                    </tbody>
                    <tbody id="Tbody3" style="display:none">
			            <tr>
				            <td class="title">MySQL 服务器地址:</td>
                            <td><input id="mysql_ip" name="mysql_ip" class="txt" type="text" value="<%=sqlServerIP %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库名称:</td>
                            <td><input id="mysql_name" name="mysql_name" class="txt" type="text" value="<%=dataBaseName %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库账号:</td>
                            <td><input id="mysql_username" name="mysql_username" class="txt" type="text" value="<%=sqlUID %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库密码:</td>
                            <td><input id="mysql_password" name="mysql_password" class="txt" type="password" value="<%=sqlPassword %>"/></td>
			            </tr>
			            <tr>
				            <td class="title">MySQL 数据库端口:</td>
                            <td><input id="mysql_port" name="mysql_port" class="txt" type="text" value="3306"/></td>
			            </tr>
                    </tbody>
			    </table>
                <br />
                <h1>需要导入的功能数据</h1>
			    <table width="100%" cellspacing="0" cellpadding="0" summary="选择需要导入的旧版数据">
                <tbody id="Tbody4">
                     <tr>
                        <%
                            string msg =string.Empty;
                            foreach (MyAssemblyInfo curinfo in GetImportingAppList())
                                msg += "<td><label title=\"" + curinfo.ProductVersion + "\" class=\"hastooltip\"><input id=\"assemblyid\" type=\"checkbox\" name=\"assemblyid\" value=\"" + curinfo.Id + "\" checked=\"checked\"/><span style=\"color: Red; font-weight: bold\">" + curinfo.ProductName + "</span></label></td>";
                        %>
                       <%=msg%>
                     </tr>
                </tbody>
			    </table>
			</form>
		</div>
	</div>
	<div class="btn cl">
		<a href="javascript:history.back();" class="back">上一步</a>
		<a href="###" onclick="checkdbConfig();" class="next">下一步</a>		
	</div>
    <script type="text/javascript">
        var webinstallPath = "<%=WebPath%>";
        var showbox;
        var alerthead = "<p style=\"width:300px;font-size:14px;\"><img src=\"images/loading.gif\" alt=\"loading\" />";
        var createdDb = 0;
        var runstep = 0;
        var steptime = 700;

        function setData(obj) {
            var frm = obj.form;
            var arr = Array("Access", "SQLServer", "MySQL");
            for (var i = 0; i < arr.length; i++) {
                document.getElementById(arr[i]).style.display = "none";
            }
            switch (parseInt(obj.value)) {
                case 1:
                    document.getElementById("Access").style.display = "block";
                    break;
                case 2:
                    document.getElementById("SQLServer").style.display = "block";
                    break;
                case 3:
                    document.getElementById("MySQL").style.display = "block";
                    break;
            }
        }
        function showError(msg) {
            Boxy.alert(msg, false, { width: 400 });
        }
        function checkdbConfig() {
            var dbdataType = $('#db_dataType').val();
            var sqlip = $('#sql_ip').val();
            var sqlname = $('#sql_name').val();
            var loginname = $('#sql_username').val();
            var password = $('#sql_password').val();
            var sqlport = $('#sql_port').val();
            dbdataType = parseInt(dbdataType);
            if (dbdataType == 1) {
                sqlip = $('#mdb_path').val();
                if (sqlip == "") {
                    showError('请填写Access数据库路径');
                    return;
                }
            }
            else if (dbdataType == 2) {
                if (sqlip == "") {
                    showError('SQL 服务器地址不能为空');
                    return;
                }
                if (sqlname == "") {
                    showError('SQL 数据库名称不能为空');
                    return;
                }
                if (loginname == "") {
                    showError('SQL 数据库账号不能为空');
                    return;
                }
                if (password == "") {
                    showError('SQL 数据库密码不能为空');
                    return;
                }
            }
            else {
                sqlip = $('#mysql_ip').val();
                sqlname = $('#mysql_name').val();
                loginname = $('#mysql_username').val();
                password = $('#mysql_password').val();
                tableprefix = $('#mysql_prefix').val();
                sqlport = $('#mysql_port').val();
                if (sqlip == "") {
                    showError('MySQL 服务器地址不能为空');
                    return;
                }
                if (sqlname == "") {
                    showError('MySQL 数据库名称不能为空');
                    return;
                }
                if (loginname == "") {
                    showError('MySQL 数据库账号不能为空');
                    return;
                }
                if (password == "") {
                    showError('MySQL 数据库密码不能为空');
                    return;
                }
            }
            var getCK = document.getElementsByName('assemblyid');
            var j = 0;
            var assemblyidlist = "";
            for (var i = 0; i < getCK.length; i++) {
                whichObj = getCK[i];
                if (whichObj.type == "checkbox" && whichObj.checked == true) {
                    assemblyidlist += whichObj.value + ',';
                    j++;
                }
            }
            if (assemblyidlist == "") {
                showError('请选择要导入的功能数据');
                return;
            }
            assemblyidlist = assemblyidlist.substring(0, assemblyidlist.length - 1);
            showbox = new Boxy(alerthead + "正在检测数据库连接,该检测可能比较耗时,请耐心等待......</p>", { closeable: false, modal: true, center: true });
            CheckdbConfigAjax(dbdataType, sqlip, sqlname, loginname, password, sqlport, assemblyidlist);
        }
        function CheckdbConfigAjax(dbdataType, sqlip, sqlname, loginname, password, sqlport, assemblyidlist) {
            showbox.setContent(alerthead +"正在检测数据库连接,该检测可能比较耗时,请耐心等待......</p>");
            showbox.show();
            jQuery.get('installajax.aspx', { 'action': 'checkdbconnection', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'port': sqlport, 'WebPath': webinstallPath, 'time': Math.random() },
            function (data) {
                var callback = eval("(" + data + ")");
                if (!callback.result) {
                    if (dbdataType == 1) {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('Access数据库连接错误:' + callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                    else if (dbdataType == 2) {
                        if (createdDb == 0 && callback.code == "4060") {
                            setTimeout(function on() {
                                showbox.hide();
                                Boxy.alert("请填写的数据库不存在", null, { width: 400 });
                                runstep = 0;
                            }, ++runstep * steptime);
                        }
                        else if (callback.code == "53") {
                            setTimeout(function on() {
                                showbox.hide();
                                Boxy.alert("数据库连接超时,请检查数据库地址是否正确", null, { width: 400 });
                                runstep = 0;
                            }, ++runstep * steptime);
                        }
                        else {
                            setTimeout(function on() {
                                showbox.hide();
                                Boxy.alert(callback.message, null, { width: 400 });
                                runstep = 0;
                            }, ++runstep * steptime);
                        }
                    }
                    else {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('MySQL数据库连接错误:' + callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                }
                else {
                    setTimeout(function on() {
                        saveDbSet(dbdataType, sqlip, sqlname, loginname, password, sqlport, assemblyidlist);
                    }, ++runstep * steptime);
                }
            });
        }
        function saveDbSet(dbdataType, sqlip, sqlname, loginname, password, sqlport, assemblyidlist) {
            showbox.show();
            showbox.setContent(alerthead + "正在保存数据库配置......</p>");
            jQuery.get('installajax.aspx', { 'action': 'savetmpdbset', 'dbType': dbdataType, 'sqlIp': sqlip, 'sqlName': sqlname, 'loginname': loginname, 'loginpwd': password, 'port': sqlport, 'assemblyid': assemblyidlist, 'time': Math.random() },
                function (data) {
                    var callback = eval("(" + data + ")");
                    if (callback.result) {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.ask(callback.message, ['进入导入数据'], function on() { location.href = 'runNow.aspx?action=importings&webpath=' + webinstallPath; }, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                    else {
                        setTimeout(function on() {
                            showbox.hide();
                            Boxy.alert('保存临时数据库配置错误:' + callback.message, null, { width: 400 });
                            runstep = 0;
                        }, ++runstep * steptime);
                    }
                }
            );
        }
    </script>
    <%} else if (curStep == 9) {%>
    <div class="main cl">
        <h1 id="processstate" style="color: Red; font-weight: bold">导入旧版数据</h1>
        <p>请留意导入日志,如果很长时间没反应,这可能是空间或网络问题！请尝试刷新本页(按F5)</p>
		<div class="inner">
			<form action="processNow" method="post">
                <textarea rows="35" id="processmessage" name="processmessage" style="background:#FFF;border:1px solid #d0d0d0;width:96%;margin:1px 0 1px 0;padding:0px" readonly="readonly"></textarea>
                <script type="text/javascript">
                    var webinstallPath = "<%=WebPath%>";
                    var n = 2;
                    var i = 0;
                    var j = 0;
                    var processid;
                    var processAction = "";
                    var lastupdateid = 0;
                    var showbox;
                    var alerthead = "<p style=\"width:300px;font-size:14px;\">";
                    var runstep = 0;
                    var steptime = 700;
                    function SetProcessstate(state) {
                        if (state == 1)
                            $('#processstate').html('<img alt="导入完成" src="images/success.gif"/>导入完成！请在底部链接选择对应操作...');
                        else if (state == 2)
                            $('#processstate').html('<img alt="导入失败" src="images/failure.gif"/>导入没有成功,请看以下错误信息...');
                        else {
                            $('#processstate').html('<img alt="进行中" src="images/loading.gif"/>请勿关闭!导入数据正在进行中...');
                        }
                    }
                    function processNow() {
                        clearTimeout(processid);
                        j++;
                        if (j % 500 == 0) {
                            $('#processmessage').html("每500条清空一次记录...<br>\n");
                        }
                        if (i < n) {
                            jQuery.get('installajax.aspx', { 'action': 'importing', 'processaction': processAction, 'lastid': lastupdateid, 'time': Math.random() },
                            function (data) {
                                var callback = eval("(" + data + ")");
                                var date = new Date();
                                if (callback != null) {
                                    i = callback.num;
                                    processAction = callback.nextaction;
                                    lastupdateid = callback.lastupdateid;
                                    if (i >= n) {
                                        if (callback.result) {
                                            SetProcessstate(1);
                                            $('#successlink').attr('class', 'next');
                                            $('#successlink').attr('href', '../user/Login.aspx');
                                            $('#successlink1').attr('class', 'next');
                                            $('#successlink1').attr('href', 'runNow.aspx?action=deleteinstalldir&webpath=' + webinstallPath);
                                            $('#processmessage').append(j + '.' + callback.message + '(' + date.toLocaleTimeString() + ')<br>\n');
                                            showbox = new Boxy(alerthead + "导入完成......</p>", { closeable: false, modal: true, center: true });
                                            showbox.hide();
                                            Boxy.confirm(alerthead + '<img alt=\"导入完成\" src=\"images/ok.gif\"/>导入完成!<br> 删除旧版本(ASP版)所有相关文件、数据库的相关表等文件能节省服务器资源、提高数据库查询速度！要删除吗?(包括当前安装目录文件)</p>', function on() { confirmdeleteAspDir(); }, { title: "是否需要删除旧版文件?" })
                                        }
                                        else {
                                            SetProcessstate(2);
                                            $('#processmessage').append(j + '.' + callback.message + '(' + date.toLocaleTimeString() + ')<br>\n');
                                            alert('安装遇到错误!请查看日志');
                                        }
                                    }
                                    else {
                                        $('#processmessage').append(j + '.' + callback.message + '(' + date.toLocaleTimeString() + ')<br>\n');
                                        if (i < n)
                                            processid = setTimeout(processNow, 2000);
                                    }
                                    document.getElementById("processmessage").scrollTop = document.getElementById("processmessage").scrollHeight;
                                }
                            }
                        );
                        }
                    }
                    function confirmdeleteAspDir() {
                        showbox.show();
                        showbox.setContent(alerthead + "<img src=\"images/loading.gif\" alt=\"loading\" />正在删除旧版本相关文件及数据......</p>");
                        jQuery.get('installajax.aspx', { 'action': 'deleteaspdir', 'time': Math.random() },
                        function (data) {
                            var callback = eval("(" + data + ")");
                            if (callback.result) {
                                setTimeout(function on() {
                                    showbox.hide();
                                    Boxy.ask(callback.message, ['登录管理'], function on() { location.href = '../user/Login.aspx'; }, { width: 400 });
                                    runstep = 0;
                                }, ++runstep * steptime);
                            }
                        }
                    );
                    }
                    SetProcessstate(0);
                    processid = setTimeout(processNow, 2000);
                </script>
            </form>
        </div>
    </div>
	<div class="btn cl">
		<a id="successlink1" href="###" class="back">删除安装文件</a> <a id="successlink" href="###" class="back">登录管理</a>
	</div>
    <%} %>
	<div class="copy">
            &copy; 2005 - 2013 WAPKANG 软件工作室
	</div>
</div>
</body>
</html>