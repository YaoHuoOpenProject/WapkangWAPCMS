CREATE TABLE [dbo].[wapkang_admingroups](
	[admingid] [smallint] NOT NULL,
	[alloweditpost] [tinyint] NOT NULL,
	[alloweditpoll] [tinyint] NOT NULL,
	[allowstickthread] [tinyint] NOT NULL,
	[allowmodpost] [tinyint] NOT NULL,
	[allowdelpost] [tinyint] NOT NULL,
	[allowmassprune] [tinyint] NOT NULL,
	[allowrefund] [tinyint] NOT NULL,
	[allowcensorword] [tinyint] NOT NULL,
	[allowviewip] [tinyint] NOT NULL,
	[allowbanip] [tinyint] NOT NULL,
	[allowedituser] [tinyint] NOT NULL,
	[allowmoduser] [tinyint] NOT NULL,
	[allowbanuser] [tinyint] NOT NULL,
	[allowviewlog] [tinyint] NOT NULL,
	[disablepostctrl] [tinyint] NOT NULL,
	[allowviewrealname] [tinyint] NOT NULL,
	[allowbackstage] [tinyint] NOT NULL,
	[allowmanageannounce] [tinyint] NOT NULL,
	[allowedittemplate] [tinyint] NOT NULL,
	[allowmanagelink] [tinyint] NOT NULL,
	[allowmanagefeedback] [tinyint] NOT NULL,
	[allowmanagegame] [tinyint] NOT NULL,
	[allowmanageplugins] [tinyint] NOT NULL,
	[allowmanageuser] [tinyint] NOT NULL,
	[allowmanagelayout] [tinyint] NOT NULL,
	[allowmanagearticle] [tinyint] NOT NULL,
	[allowmanagepicture] [tinyint] NOT NULL,
	[allowmanagemusic] [tinyint] NOT NULL,
	[allowmanagesoftware] [tinyint] NOT NULL,
	[allowmanagevideo] [tinyint] NOT NULL,
	[allowmanageebook] [tinyint] NOT NULL,
	[allowmanagenews] [tinyint] NOT NULL,
	[allowmanagebook] [tinyint] NOT NULL,
	[allowmanageshop] [tinyint] NOT NULL,
	[allowmanageforum] [tinyint] NOT NULL,
	[allowmanageannouncechild] [text] NOT NULL,
	[allowedittemplatechild] [text] NOT NULL,
	[allowmanagelinkchild] [text] NOT NULL,
	[allowmanagefeedbackchild] [text] NOT NULL,
	[allowmanagegamechild] [text] NOT NULL,
	[allowmanagepluginschild] [text] NOT NULL,
	[allowmanageuserchild] [text] NOT NULL,
	[allowmanagelayoutchild] [text] NOT NULL,
	[allowmanagearticlechild] [text] NOT NULL,
	[allowmanagepicturechild] [text] NOT NULL,
	[allowmanagemusicchild] [text] NOT NULL,
	[allowmanagesoftwarechild] [text] NOT NULL,
	[allowmanagevideochild] [text] NOT NULL,
	[allowmanageebookchild] [text] NOT NULL,
	[allowmanagenewschild] [text] NOT NULL,
	[allowmanagebookchild] [text] NOT NULL,
	[allowmanageshopchild] [text] NOT NULL,
	[allowmanageforumchild] [text] NOT NULL,
	[allowmanagebasicfunction] [text] NOT NULL,PRIMARY KEY ([admingid]));

CREATE TABLE [dbo].[wapkang_adminlog](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[typeid] [int] NOT NULL DEFAULT ((0)),
	[userid] [int] NOT NULL,
	[username] [char](50) NOT NULL,
	[groupid] [int] NOT NULL,
	[grouptitle] [nvarchar](50) NOT NULL,
	[ip] [char](15) NOT NULL,
	[others] [nvarchar](200) NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_attachments](
	[fid] [int] IDENTITY(1,1) NOT NULL,
	[readperm] [int] NOT NULL,
	[allowubb] [int] NOT NULL,
	[category] [tinyint] NOT NULL,
	[typeid] [tinyint] NOT NULL,
	[mirroring] [tinyint] NOT NULL,
	[download] [int] NOT NULL,
	[filename] [nchar](60) NOT NULL,
	[description] [ntext] NOT NULL,
	[source] [nvarchar](100) NOT NULL,
	[contenttype] [nvarchar](50) NOT NULL,
	[tid] [int] NOT NULL,
	[cid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[ext] [nvarchar](20) NOT NULL,
	[size] [int] NOT NULL,
	[width] [int] NOT NULL,
	[height] [int] NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[createtime] [datetime] NULL,PRIMARY KEY ([fid]));

CREATE TABLE [dbo].[wapkang_award](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[typeid] [tinyint] NOT NULL,
	[floortail] [nvarchar](20) NOT NULL,
	[readperm] [int] NOT NULL,
	[category] [tinyint] NOT NULL,
	[tid] [int] NOT NULL,
	[bid] [int] NOT NULL,
	[description] [ntext] NOT NULL,
	[postuser] [char](50) NOT NULL,
	[postuserid] [int] NOT NULL,
	[credits] [decimal](18, 2) NOT NULL,
	[defray] [decimal](18, 2) NOT NULL,
	[single] [decimal](18, 2) NOT NULL,
	[receivecount] [int] NOT NULL,
	[creditstactics] [tinyint] NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([aid]));

CREATE TABLE [dbo].[wapkang_awardlog](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[aid] [int] NOT NULL,
	[typeid] [int] NOT NULL,
	[category] [tinyint] NOT NULL,
	[tid] [int] NOT NULL,
	[bid] [int] NOT NULL,
	[username] [char](50) NOT NULL,
	[userid] [int] NOT NULL,
	[credits] [decimal](18, 2) NOT NULL,
	[creditstactics] [tinyint] NOT NULL,
	[destfloor] [int] NOT NULL,
	[magicid] [int] NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([lid]));

CREATE TABLE [dbo].[wapkang_bannedip](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[ip] [char](15) NOT NULL,
	[admin] [char](50) NOT NULL,
	[adminid] [int] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[expiration] [datetime] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_commonclass](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[category] [tinyint] NOT NULL,
	[state] [tinyint] NOT NULL,
	[layercount] [tinyint] NOT NULL,
	[name] [nchar](60) NOT NULL,
	[description] [ntext] NOT NULL,
	[logo] [varchar](100) NOT NULL,
	[icon] [varchar](100) NOT NULL,
	[orderid] [int] NOT NULL,
	[password] [varchar](16) NOT NULL,
	[parentid] [int] NOT NULL,
	[parentidlist] [text] NOT NULL,
	[subidlist] [text] NOT NULL,
	[subcount] [int] NOT NULL,
	[viewcount] [int] NOT NULL,
	[postscount] [int] NOT NULL,
	[currentposts] [int] NOT NULL,
	[commentcount] [int] NOT NULL,
	[currentcomment] [int] NOT NULL,
	[seokeywords] [varchar](500) NOT NULL,
	[seodescription] [varchar](500) NOT NULL,
	[templateid] [int] NOT NULL,
	[postcredits] [varchar](255) NOT NULL,
	[replycredits] [varchar](255) NOT NULL,
	[postattachcredits] [varchar](255) NOT NULL,
	[getattachcredits] [varchar](255) NOT NULL,
	[viewperm] [varchar](255) NOT NULL,
	[postperm] [varchar](255) NOT NULL,
	[replyperm] [varchar](255) NOT NULL,
	[getattachperm] [varchar](255) NOT NULL,
	[postattachperm] [varchar](255) NOT NULL,
	[replyauditperm] [varchar](255) NOT NULL,
	[postauditperm] [varchar](255) NOT NULL,
	[feelitem] [varchar](255) NOT NULL,
	[contentstype] [tinyint] NOT NULL,
	[displayalign] [char](10) NOT NULL,
	[displayviews] [tinyint] NOT NULL,
	[displayorder] [tinyint] NOT NULL,
	[displaytime] [tinyint] NOT NULL,
	[displayimage] [tinyint] NOT NULL,
	[displaysubcls] [tinyint] NOT NULL,
	[subcolcount] [tinyint] NOT NULL,
	[downloadcomment] [tinyint] NOT NULL,
	[downloadtrend] [tinyint] NOT NULL,
	[viewstrend] [tinyint] NOT NULL,
	[creditstactics] [tinyint] NOT NULL,
	[allowtrade] [tinyint] NOT NULL,
	[allowfeel] [tinyint] NOT NULL,
	[allowtag] [tinyint] NOT NULL,
	[allowrss] [tinyint] NOT NULL,
	[allowhtml] [tinyint] NOT NULL,
	[allowubbcode] [tinyint] NOT NULL,
	[allowimgcode] [tinyint] NOT NULL,
	[allowlinkcode] [tinyint] NOT NULL,
	[allowblog] [tinyint] NOT NULL,
	[recyclebin] [tinyint] NOT NULL,
	[allowdownload] [tinyint] NOT NULL,
	[isjammer] [tinyint] NOT NULL,
	[attachextensions] [varchar](255) NOT NULL,
	[applytoplist] [tinyint] NOT NULL,
	[applyrestype] [tinyint] NOT NULL,
	[typesItem] [ntext] NOT NULL,
	[postbyrestype] [tinyint] NOT NULL,
	[viewbyrestype] [tinyint] NOT NULL,
	[restypeprefix] [tinyint] NOT NULL,
	[moderators] [ntext] NOT NULL,
	[moderatorsperm] [varchar](255) NOT NULL,
	[permuserlist] [ntext] NOT NULL,
	[autoclose] [smallint] NOT NULL,
	[allowpoststypes] [tinyint] NOT NULL,
	[attachposttexts] [tinyint] NOT NULL,
	[thumbnailicon] [tinyint] NOT NULL,
	[thumbnailwidth] [int] NOT NULL,
	[thumbnailheight] [int] NOT NULL,
	[thumbnailrounded] [tinyint] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[lastuptime] [datetime] NOT NULL,PRIMARY KEY ([cid]));

CREATE TABLE [dbo].[wapkang_commondistrict](
	[seqid] [int] NOT NULL,
	[shortname] [nvarchar](50) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[level] [tinyint] NOT NULL,
	[usetype] [tinyint] NOT NULL,
	[upid] [int] NOT NULL,
	[orderid] [int] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_commonipdb](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[ip] [char](15) NOT NULL,
	[hits] [int] NOT NULL DEFAULT ((1)),
	[expandid] [int] NOT NULL DEFAULT ((0)),
	[expandstate] [tinyint] NOT NULL DEFAULT ((0)),
	[lasttimer] [int] NOT NULL,
	[violation] [int] NOT NULL DEFAULT ((0)),
	[lastdate] [datetime] NOT NULL DEFAULT (getdate()),
	[createdate] [datetime] NOT NULL DEFAULT (getdate()),PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_commonvisitlog](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[hitscount] [int] NOT NULL DEFAULT ((1)),
	[ipcount] [int] NOT NULL DEFAULT ((1)),
	[visitdate] [char](10) NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_consumelog](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[category] [smallint] NOT NULL,
	[creditsid] [tinyint] NOT NULL,
	[userid] [int] NOT NULL,
	[mode] [tinyint] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[remainder] [decimal](18, 2) NOT NULL,
	[authstr] [char](8) NOT NULL,
	[remark] [nvarchar](255) NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([orderid]));

CREATE TABLE [dbo].[wapkang_downloadlog](
	[category] [tinyint] NOT NULL DEFAULT ((0)),
	[fid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[tid] [int] NOT NULL DEFAULT ((0)),
	[pid] [int] NOT NULL DEFAULT ((0)),
	[createtime] [datetime] NOT NULL DEFAULT (getdate()));

CREATE TABLE [dbo].[wapkang_favorites](
	[favoritesid] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[resid] [int] NOT NULL,
	[typeid] [tinyint] NOT NULL DEFAULT ((0)),
	[favtime] [datetime] NOT NULL DEFAULT (getdate()),
	[viewtime] [datetime] NOT NULL DEFAULT (getdate()),PRIMARY KEY ([favoritesid]));

CREATE TABLE [dbo].[wapkang_invitation](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[code] [nchar](8) NOT NULL,
	[creatorid] [int] NOT NULL,
	[creator] [nchar](20) NOT NULL,
	[successcount] [int] NOT NULL DEFAULT ((0)),
	[createdtime] [datetime] NOT NULL,
	[expiretime] [datetime] NOT NULL,
	[maxcount] [int] NOT NULL,
	[typeid] [int] NOT NULL,
	[isdeleted] [int] NOT NULL DEFAULT ((0)),PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_loginlogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ip] [char](15) NOT NULL,
	[errcount] [smallint] NOT NULL DEFAULT ((0)),
	[lastupdate] [datetime] NOT NULL DEFAULT (getdate()),PRIMARY KEY ([id]));

CREATE TABLE [dbo].[wapkang_medals](
	[medalid] [smallint] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [text] NULL,
	[available] [int] NOT NULL DEFAULT ((0)),
	[image] [varchar](30) NOT NULL DEFAULT (''),PRIMARY KEY ([medalid]));

CREATE TABLE [dbo].[wapkang_medalslog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[adminname] [char](50) NULL,
	[adminid] [int] NULL,
	[ip] [char](15) NULL,
	[createtime] [datetime] NULL DEFAULT (getdate()),
	[username] [char](50) NULL,
	[uid] [int] NULL,
	[actions] [nvarchar](100) NULL,
	[medals] [int] NULL,
	[reason] [nvarchar](100) NULL,PRIMARY KEY ([id]));

CREATE TABLE [dbo].[wapkang_notices](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[type] [smallint] NOT NULL,
	[new] [tinyint] NOT NULL,
	[posterid] [int] NOT NULL,
	[poster] [char](50) NOT NULL,
	[note] [ntext] NOT NULL,
	[createtime] [datetime] NOT NULL,
	[fromid] [int] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_online](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[userip] [char](15) NOT NULL,
	[username] [char](50) NOT NULL,
	[nickname] [char](50) NOT NULL,
	[password] [char](32) NOT NULL,
	[gender] [tinyint] NOT NULL,
	[province] [int] NOT NULL,
	[city] [int] NOT NULL,
	[district] [int] NOT NULL,
	[community] [int] NOT NULL,
	[groupid] [smallint] NOT NULL,
	[groupimg] [varchar](80) NOT NULL,
	[adminid] [smallint] NOT NULL,
	[invisible] [tinyint] NOT NULL,
	[action] [smallint] NOT NULL,
	[actionuptime] [datetime] NOT NULL,
	[lastaction] [smallint] NOT NULL,
	[lastsearchtime] [datetime] NOT NULL,
	[lastpostmsgtime] [datetime] NOT NULL,
	[lastposttime] [datetime] NOT NULL,
	[lastupdatetime] [datetime] NOT NULL,
	[boardid] [int] NOT NULL,
	[boardname] [nchar](50) NOT NULL,
	[titleid] [int] NOT NULL,
	[title] [nchar](60) NOT NULL,
	[newmessage] [smallint] NOT NULL,
	[newnotices] [smallint] NOT NULL,
	[pagesize] [smallint] NOT NULL,
	[wordsize] [smallint] NOT NULL,
	[listsize] [smallint] NOT NULL,
	[verifycode] [varchar](10) NOT NULL,
	[postcode] [varchar](10) NOT NULL,
	[sessionid] [char](32) NOT NULL,
	[templateid] [smallint] NOT NULL,
	[mobilestate] [tinyint] NOT NULL,
	[isavatar] [tinyint] NOT NULL,
	[extcredits] [int] NOT NULL,
	[shownews] [tinyint] NOT NULL,
	[loginsafety] [tinyint] NOT NULL,
	[paysafety] [tinyint] NOT NULL,
	[lastverifyip] [char](15) NOT NULL,
	[sceneimg] [nvarchar](100) NOT NULL,
	[setmagicid] [int] NOT NULL,
	[phonemodel] [int] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_statistics](
	[totaltopic] [int] NOT NULL,
	[totalpost] [int] NOT NULL,
	[totalusers] [int] NOT NULL,
	[lastusername] [char](50) NOT NULL,
	[lastuserid] [int] NOT NULL,
	[highestonlineusercount] [int] NULL,
	[highestonlineusertime] [datetime] NULL,
	[yesterdaytopic] [int] NOT NULL DEFAULT ((0)),
	[yesterdayposts] [int] NOT NULL DEFAULT ((0)),
	[highestposts] [int] NOT NULL DEFAULT ((0)),
	[highesttopic] [int] NOT NULL DEFAULT ((0)),
	[highesttopicdate] [char](10) NOT NULL DEFAULT (''),
	[highestpostsdate] [char](10) NOT NULL DEFAULT (''));

CREATE TABLE [dbo].[wapkang_onlinelist](
	[groupid] [smallint] NOT NULL,
	[displayorder] [int] NULL,
	[title] [nvarchar](50) NOT NULL,
	[img] [varchar](50) NULL);

CREATE TABLE [dbo].[wapkang_onlinetime](
	[userid] [int] NOT NULL,
	[thismonth] [smallint] NOT NULL DEFAULT ((0)),
	[total] [int] NOT NULL DEFAULT ((0)),
	[lastupdate] [datetime] NOT NULL DEFAULT (getdate()),PRIMARY KEY ([userid]));

CREATE TABLE [dbo].[wapkang_payment](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[username] [char](50) NOT NULL,
	[orderid] [char](50) NOT NULL,
	[creditsid] [tinyint] NOT NULL,
	[paymoney] [int] NOT NULL,
	[payamount] [decimal](18, 2) NOT NULL,
	[cardno] [char](50) NOT NULL,
	[cardpwd] [char](50) NOT NULL,
	[cardtype] [char](20) NOT NULL,
	[state] [tinyint] NOT NULL,
	[remark] [nchar](200) NOT NULL,
	[callbacktime] [datetime] NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([seqid]));

CREATE TABLE [dbo].[wapkang_safety](
	[seqid] [int] NOT NULL,
	[words] [text] NOT NULL,
	[script] [text] NOT NULL,
	[state] [int] NOT NULL,
	[settime] [datetime] NOT NULL DEFAULT (getdate()));

CREATE TABLE [dbo].[wapkang_scheduletask](
	[scheduleid] [int] IDENTITY(1,1) NOT NULL,
	[schedulekey] [varchar](50) NOT NULL,
	[lastexecuted] [datetime] NOT NULL,
	[nextexecuted] [datetime] NOT NULL,
	[servername] [varchar](100) NOT NULL,PRIMARY KEY ([scheduleid]));

CREATE TABLE [dbo].[wapkang_search](
	[searchid] [int] IDENTITY(1,1) NOT NULL,
	[keywords] [nvarchar](255) NOT NULL,
	[condition] [nvarchar](500) NOT NULL,
	[postip] [char](15) NOT NULL,
	[posterid] [int] NOT NULL,
	[groupid] [int] NOT NULL,
	[resultcount] [int] NOT NULL,
	[resultId] [text] NOT NULL,
	[expiration] [datetime] NOT NULL,
	[createtime] [datetime] NOT NULL,PRIMARY KEY ([searchid]));

CREATE TABLE [dbo].[wapkang_smilie](
	[id] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[display] [int] NOT NULL,
	[type] [int] NOT NULL,
	[code] [nvarchar](30) NOT NULL,
	[url] [varchar](60) NOT NULL);

CREATE TABLE [dbo].[wapkang_stats](
	[name] [char](10) NOT NULL,
	[variable] [char](20) NOT NULL,
	[count] [int] NOT NULL DEFAULT ((0)));

CREATE TABLE [dbo].[wapkang_statvalue](
	[name] [char](20) NOT NULL,
	[variable] [char](20) NOT NULL,
	[value] [text] NOT NULL);

CREATE TABLE [dbo].[wapkang_tags](
	[Tagid] [int] IDENTITY(1,1) NOT NULL,
	[Tagname] [nchar](10) NOT NULL,
	[Userid] [int] NOT NULL DEFAULT ((0)),
	[Orderid] [int] NOT NULL DEFAULT ((0)),
	[Color] [char](6) NOT NULL,
	[Count] [int] NOT NULL DEFAULT ((0)),
	[Topiccount] [int] NOT NULL DEFAULT ((0)),
	[Forumcount] [int] NOT NULL DEFAULT ((0)),
	[Photocount] [int] NOT NULL DEFAULT ((0)),
	[Diarycount] [int] NOT NULL DEFAULT ((0)),
	[Goodscount] [int] NOT NULL DEFAULT ((0)),
	[Articlecount] [int] NOT NULL DEFAULT ((0)),
	[Softwarecount] [int] NOT NULL DEFAULT ((0)),
	[Musiccount] [int] NOT NULL DEFAULT ((0)),
	[Picturecount] [int] NOT NULL DEFAULT ((0)),
	[Videocount] [int] NOT NULL DEFAULT ((0)),
	[Newscount] [int] NOT NULL DEFAULT ((0)),
	[Ebookcount] [int] NOT NULL DEFAULT ((0)),
	[Interestcount] [int] NOT NULL DEFAULT ((0)),
	[Createtime] [datetime] NOT NULL,PRIMARY KEY ([Tagid]));

CREATE TABLE [dbo].[wapkang_trendstat](
	[daytime] [int] NOT NULL DEFAULT ((0)),
	[login] [int] NOT NULL DEFAULT ((0)),
	[register] [int] NOT NULL DEFAULT ((0)),
	[topic] [int] NOT NULL DEFAULT ((0)),
	[post] [int] NOT NULL DEFAULT ((0)),
	[poll] [int] NOT NULL DEFAULT ((0)),
	[debate] [int] NOT NULL DEFAULT ((0)),
	[bonus] [int] NOT NULL DEFAULT ((0)),
	[award] [int] NOT NULL DEFAULT ((0)),
	[speak] [int] NOT NULL DEFAULT ((0)),
	[paypost] [int] NOT NULL DEFAULT ((0)),
	[paysuccess] [int] NOT NULL DEFAULT ((0)),
	[respost] [int] NOT NULL DEFAULT ((0)),
	[rescount] [int] NOT NULL DEFAULT ((0)),
	[signin] [int] NOT NULL DEFAULT ((0)),PRIMARY KEY ([daytime]));

CREATE TABLE [dbo].[wapkang_user](
	[Seqid] [int] NOT NULL,
	[Nickname] [char](50) NOT NULL DEFAULT (''),
	[Username] [char](50) NOT NULL DEFAULT (''),
	[Password] [char](32) NOT NULL DEFAULT (''),
	[Email] [char](50) NOT NULL DEFAULT (''),
	[Mobile] [char](11) NOT NULL DEFAULT (''),
	[Mobilestate] [tinyint] NOT NULL DEFAULT ((0)),
	[Secques] [char](8) NOT NULL DEFAULT (''),
	[Spaceid] [int] NOT NULL DEFAULT ((0)),
	[Gender] [tinyint] NOT NULL DEFAULT ((0)),
	[Adminid] [smallint] NOT NULL DEFAULT ((0)),
	[Groupid] [smallint] NOT NULL DEFAULT ((0)),
	[Groupexpiry] [int] NOT NULL DEFAULT ((0)),
	[Regip] [char](15) NOT NULL DEFAULT (''),
	[Lastip] [char](15) NOT NULL DEFAULT (''),
	[Joindate] [datetime] NOT NULL DEFAULT (getdate()),
	[Lastvisit] [datetime] NOT NULL DEFAULT (getdate()),
	[Lastactivity] [datetime] NOT NULL DEFAULT (getdate()),
	[Posttopics] [int] NOT NULL DEFAULT ('0'),
	[Supertopics] [int] NOT NULL DEFAULT ('0'),
	[Topicreply] [int] NOT NULL DEFAULT ((0)),
	[Onlinetime] [int] NOT NULL DEFAULT ('0'),
	[Credits] [int] NOT NULL DEFAULT ('0'),
	[Credits1] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits2] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits3] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits4] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits5] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits6] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits7] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits8] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits9] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Credits10] [decimal](18, 2) NOT NULL DEFAULT ('0'),
	[Newmsg] [tinyint] NOT NULL DEFAULT ('0'),
	[Newmsgcount] [int] NOT NULL DEFAULT ((0)),
	[Newmsgtype] [tinyint] NOT NULL DEFAULT ((10)),
	[Friendtype] [tinyint] NOT NULL DEFAULT ((0)),
	[Invisible] [tinyint] NOT NULL DEFAULT ((0)),
	[Onlinestate] [tinyint] NOT NULL DEFAULT ((0)),
	[Emailstate] [tinyint] NOT NULL DEFAULT ((0)),PRIMARY KEY ([Seqid]));

CREATE TABLE [dbo].[wapkang_userfields](
	[userid] [int] NOT NULL,
	[Templateid] [smallint] NOT NULL DEFAULT ((0)),
	[Isavatar] [tinyint] NOT NULL DEFAULT ((0)),
	[Birthday] [datetime] NOT NULL DEFAULT (getdate()),
	[Astro] [tinyint] NOT NULL DEFAULT ((0)),
	[Userage] [tinyint] NOT NULL DEFAULT ((0)),
	[Height] [tinyint] NOT NULL DEFAULT ((0)),
	[Province] [int] NOT NULL DEFAULT ((0)),
	[City] [int] NOT NULL DEFAULT ((0)),
	[District] [int] NOT NULL DEFAULT ((0)),
	[Community] [int] NOT NULL DEFAULT ((0)),
	[House] [tinyint] NOT NULL DEFAULT ((0)),
	[Interest] [tinyint] NOT NULL DEFAULT ((0)),
	[Bloodtype] [tinyint] NOT NULL DEFAULT ((0)),
	[Bodytype] [tinyint] NOT NULL DEFAULT ((0)),
	[Disposition] [tinyint] NOT NULL DEFAULT ((0)),
	[Education] [tinyint] NOT NULL DEFAULT ((0)),
	[Income] [tinyint] NOT NULL DEFAULT ((0)),
	[Emotion] [tinyint] NOT NULL DEFAULT ((0)),
	[Zodiac] [tinyint] NOT NULL DEFAULT ((0)),
	[Marital] [tinyint] NOT NULL DEFAULT ((0)),
	[Job] [tinyint] NOT NULL DEFAULT ((0)),
	[Homeprovince] [int] NOT NULL DEFAULT ((0)),
	[Homecity] [int] NOT NULL DEFAULT ((0)),
	[Homedistrict] [int] NOT NULL DEFAULT ((0)),
	[homecommunity] [int] NOT NULL DEFAULT ((0)),
	[Homebio] [nvarchar](255) NOT NULL DEFAULT (''),
	[Phonemodel] [int] NOT NULL DEFAULT ((0)),
	[sceneid] [tinyint] NOT NULL DEFAULT ((1)),
	[Sigstatus] [tinyint] NOT NULL DEFAULT ((0)),
	[Pagesize] [smallint] NOT NULL DEFAULT ((0)),
	[Wordsize] [smallint] NOT NULL DEFAULT ((0)),
	[Listsize] [smallint] NOT NULL DEFAULT ((0)),
	[Showemail] [tinyint] NOT NULL DEFAULT ((0)),
	[Vipupdate] [int] NOT NULL DEFAULT ((0)),
	[Vipgrowing] [smallint] NOT NULL DEFAULT ((0)),
	[Vipcredits] [int] NOT NULL DEFAULT ((0)),
	[Paysafety] [tinyint] NOT NULL DEFAULT ((0)),
	[Paypassword] [char](8) NOT NULL DEFAULT (''),
	[Loginsafety] [tinyint] NOT NULL DEFAULT ((0)),
	[Tencentqq] [nvarchar](13) NOT NULL DEFAULT (''),
	[Msn] [nvarchar](40) NOT NULL DEFAULT (''),
	[Customstatus] [nvarchar](50) NOT NULL DEFAULT (''),
	[Medals] [varchar](300) NOT NULL DEFAULT (''),
	[Userbio] [nvarchar](500) NOT NULL DEFAULT (''),
	[Signature] [nvarchar](500) NOT NULL DEFAULT (''),
	[Sigparseresult] [nvarchar](1000) NOT NULL DEFAULT (''),
	[Authstr] [varchar](20) NOT NULL DEFAULT (''),
	[Authtime] [datetime] NOT NULL DEFAULT (getdate()),
	[Authflag] [tinyint] NOT NULL DEFAULT ((0)),
	[Realname] [nvarchar](10) NOT NULL DEFAULT (''),
	[Idcard] [varchar](20) NOT NULL DEFAULT (''),
	[Phone] [varchar](20) NOT NULL DEFAULT (''),
	[setmagicid] [int] NOT NULL DEFAULT ((0)),PRIMARY KEY ([userid]));

CREATE TABLE [dbo].[wapkang_usergroups](
	[groupid] [smallint] IDENTITY(1,1) NOT NULL,
	[radminid] [int] NOT NULL,
	[type] [smallint] NULL DEFAULT ((0)),
	[system] [smallint] NOT NULL DEFAULT ('0'),
	[grouptitle] [nvarchar](50) NOT NULL,
	[creditshigher] [int] NOT NULL,
	[creditslower] [int] NOT NULL,
	[stars] [int] NOT NULL,
	[color] [char](7) NOT NULL,
	[groupavatar] [nvarchar](60) NOT NULL,
	[readaccess] [int] NOT NULL,
	[allowvisit] [int] NOT NULL,
	[allowpost] [int] NOT NULL,
	[allowreply] [int] NOT NULL,
	[allowpostpoll] [int] NOT NULL,
	[allowcallubb] [int] NOT NULL,
	[allowgetattach] [int] NOT NULL,
	[allowpostattach] [int] NOT NULL,
	[allowvote] [int] NOT NULL,
	[allowmultigroups] [int] NOT NULL,
	[allowsearch] [int] NOT NULL,
	[allowavatar] [int] NOT NULL,
	[allowcstatus] [int] NOT NULL,
	[allowuseblog] [int] NOT NULL,
	[allowinvisible] [int] NOT NULL,
	[allowtransfer] [int] NOT NULL,
	[allowsetreadperm] [int] NOT NULL,
	[allowsetattachperm] [int] NOT NULL,
	[allowhidecode] [int] NOT NULL,
	[allowhtml] [int] NOT NULL,
	[allowhtmltitle] [int] NOT NULL,
	[allowubbcode] [int] NOT NULL,
	[allowubbimgcode] [int] NOT NULL,
	[allowsigubbcode] [int] NOT NULL,
	[allowsigimgcode] [int] NOT NULL,
	[allowviewpro] [int] NOT NULL,
	[allowviewstats] [int] NOT NULL,
	[allowloginsafety] [int] NOT NULL,
	[allowsaveaction] [int] NOT NULL,
	[disableperiodctrl] [int] NOT NULL,
	[reasonpm] [int] NOT NULL,
	[maxprice] [smallint] NOT NULL,
	[maxpmnum] [smallint] NOT NULL,
	[maxsigsize] [smallint] NOT NULL,
	[maxattachsize] [int] NOT NULL,
	[maxsizeperday] [int] NOT NULL,
	[attachextensions] [char](100) NOT NULL,
	[raterange] [nchar](500) NOT NULL,
	[allowspace] [smallint] NOT NULL DEFAULT ((0)),
	[maxspaceattachsize] [int] NOT NULL DEFAULT ((0)),
	[maxspacephotosize] [int] NOT NULL DEFAULT ((0)),
	[allowdebate] [int] NOT NULL DEFAULT ((0)),
	[allowbonus] [int] NOT NULL DEFAULT ((0)),
	[minbonusprice] [smallint] NOT NULL DEFAULT ((0)),
	[maxbonusprice] [smallint] NOT NULL DEFAULT ((0)),
	[allowtrade] [int] NOT NULL DEFAULT ((0)),
	[allowubblinkcode] [int] NOT NULL DEFAULT ((0)),
	[modnewtopics] [smallint] NOT NULL DEFAULT ((0)),
	[modnewposts] [smallint] NOT NULL DEFAULT ((0)),
	[ignoreseccode] [int] NOT NULL DEFAULT ((0)),
	[allowsetnotice] [int] NOT NULL DEFAULT ((0)),PRIMARY KEY ([groupid]));

CREATE TABLE [dbo].[wapkang_userid](
	[uid] [int] NOT NULL,PRIMARY KEY ([uid]));

CREATE TABLE [dbo].[wapkang_userinterest](
	[tagid] [int] NOT NULL DEFAULT ((0)),
	[uid] [int] NOT NULL DEFAULT ((0)));

CREATE TABLE [dbo].[wapkang_userpaylog](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[category] [int] NOT NULL,
	[credits] [tinyint] NOT NULL DEFAULT ((0)),
	[resid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[username] [char](50) NOT NULL,
	[authorid] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[netamount] [decimal](18, 2) NOT NULL,
	[createtime] [datetime] NOT NULL DEFAULT (getdate()),PRIMARY KEY ([lid]));

CREATE TABLE [dbo].[wapkang_userprofile](
	[userid] [int] NOT NULL,
	[commentcount] [int] NOT NULL DEFAULT ((0)),
	[photocount] [int] NOT NULL DEFAULT ((0)),
	[blogcount] [int] NOT NULL DEFAULT ((0)),
	[blogupdatetime] [datetime] NOT NULL DEFAULT (getdate()),
	[friendcount] [int] NOT NULL DEFAULT ((0)),
	[groupcount] [int] NOT NULL DEFAULT ((0)),
	[fanscount] [int] NOT NULL DEFAULT ((0)),
	[visitorcount] [int] NOT NULL DEFAULT ((0)),
	[visitortoday] [int] NOT NULL DEFAULT ((0)),
	[visitoryesterday] [int] NOT NULL DEFAULT ((0)),
	[giftcharm] [int] NOT NULL DEFAULT ((0)),
	[giftcount] [int] NOT NULL DEFAULT ((0)),
	[giftevil] [int] NOT NULL DEFAULT ((0)),
	[weibocount] [int] NOT NULL DEFAULT ((0)),
	[articlecount] [int] NOT NULL DEFAULT ((0)),
	[articlecomment] [int] NOT NULL DEFAULT ((0)),
	[attachedcount] [int] NOT NULL DEFAULT ((0)),
	[chatcredits] [int] NOT NULL DEFAULT ((0)),
	[pokecontrol] [tinyint] NOT NULL DEFAULT ((0)),
	[friendgroup] [ntext] NOT NULL DEFAULT (''),
	[allowComment] [tinyint] NOT NULL DEFAULT ((0)),
	[commentnotify] [tinyint] NOT NULL DEFAULT ((0)),
	[albumscomment] [tinyint] NOT NULL  DEFAULT ((0)),
	[albumsnotify] [tinyint] NOT NULL DEFAULT ((0)),
	[albumsanonymous] [tinyint] NOT NULL DEFAULT ((0)),PRIMARY KEY ([userid]));

CREATE TABLE [dbo].[wapkang_viplevel](
	[vipid] [int] NOT NULL DEFAULT ((0)),
	[vipname] [nvarchar](50) NOT NULL DEFAULT (''),
	[vipimg] [nvarchar](50) NOT NULL DEFAULT (''),
	[creditshigher] [int] NOT NULL DEFAULT ((0)),
	[creditslower] [int] NOT NULL DEFAULT ((0)),
	[postcredits] [decimal](18, 2) NOT NULL DEFAULT ((0)),PRIMARY KEY ([vipid]));

CREATE TABLE [dbo].[wapkang_words](
	[seqid] [int] IDENTITY(1,1) NOT NULL,
	[admin] [char](50) NOT NULL,
	[find] [nvarchar](255) NOT NULL,
	[replacement] [nvarchar](255) NOT NULL,PRIMARY KEY ([seqid]));

CREATE INDEX [createtime] ON [wapkang_adminlog]([createtime]) ON [PRIMARY];
CREATE INDEX [createtime_others] ON [wapkang_adminlog]([createtime],[others]) ON [PRIMARY];
CREATE INDEX [createtime_userid] ON [wapkang_adminlog]([createtime],[userid]) ON [PRIMARY];
CREATE INDEX [createtime_typeid] ON [wapkang_adminlog]([createtime],[typeid]) ON [PRIMARY];
CREATE INDEX [createtime_others_typeid] ON [wapkang_adminlog]([createtime],[others],[typeid]) ON [PRIMARY];
CREATE INDEX [createtime_others_userid] ON [wapkang_adminlog]([createtime],[others],[userid]) ON [PRIMARY];
CREATE INDEX [createtime_others_typeid_userid] ON [wapkang_adminlog]([createtime],[others],[typeid],[userid]) ON [PRIMARY];
CREATE INDEX [createtime_typeid_userid] ON [wapkang_adminlog]([createtime],[others],[userid]) ON [PRIMARY];
CREATE INDEX [typeid] ON [wapkang_adminlog]([typeid]) ON [PRIMARY];
CREATE INDEX [category] ON [wapkang_attachments]([category]) ON [PRIMARY];
CREATE INDEX [category_tid] ON [wapkang_attachments]([category],[tid]) ON [PRIMARY];
CREATE INDEX [category_uid] ON [wapkang_attachments]([category],[uid]) ON [PRIMARY];
CREATE INDEX [category_cid] ON [wapkang_attachments]([category],[cid]) ON [PRIMARY];
CREATE INDEX [category_tid_pid] ON [wapkang_attachments]([category],[tid],[pid]) ON [PRIMARY];
CREATE INDEX [category_tid_pid_fid] ON [wapkang_attachments]([category],[tid],[pid],[fid]) ON [PRIMARY];
CREATE INDEX [category_pid] ON [wapkang_attachments]([category],[pid]) ON [PRIMARY];
CREATE INDEX [category_tid_uid] ON [wapkang_attachments]([category],[tid],[uid]) ON [PRIMARY];
CREATE INDEX [category_uid_cid] ON [wapkang_attachments]([category],[uid],[cid]) ON [PRIMARY];
CREATE INDEX [category_price] ON [wapkang_attachments]([category],[price]) ON [PRIMARY];
CREATE INDEX [category_mirroring] ON [wapkang_attachments]([category],[mirroring]) ON [PRIMARY];
CREATE INDEX [category_mirroring_tid_pid] ON [wapkang_attachments]([category],[mirroring],[tid],[pid]) ON [PRIMARY];
CREATE INDEX [mirroring_uid] ON [wapkang_attachments]([mirroring],[uid]) ON [PRIMARY];
CREATE INDEX [mirroring_uid_createtime] ON [wapkang_attachments]([mirroring],[uid],[createtime]) ON [PRIMARY];
CREATE INDEX [mirroring_cid] ON [wapkang_attachments]([mirroring],[cid]) ON [PRIMARY];
CREATE INDEX [mirroring_cid_createtime] ON [wapkang_attachments]([mirroring],[cid],[createtime]) ON [PRIMARY];
CREATE INDEX [mirroring] ON [wapkang_attachments]([mirroring]) ON [PRIMARY];
CREATE INDEX [mirroring_createtime] ON [wapkang_attachments]([mirroring],[createtime]) ON [PRIMARY];
CREATE INDEX [category] ON [wapkang_award]([category]) ON [PRIMARY];
CREATE INDEX [category_tid] ON [wapkang_award]([category],[tid]) ON [PRIMARY];
CREATE INDEX [category_bid] ON [wapkang_award]([category],[bid]) ON [PRIMARY];
CREATE INDEX [aid] ON [wapkang_awardlog]([aid]) ON [PRIMARY];
CREATE INDEX [aid_userid] ON [wapkang_awardlog]([aid],[userid]) ON [PRIMARY];
CREATE INDEX [category_bid] ON [wapkang_awardlog]([category],[bid]) ON [PRIMARY];
CREATE INDEX [userid] ON [wapkang_consumelog]([userid]) ON [PRIMARY];
CREATE INDEX [userid_category] ON [wapkang_consumelog]([userid],[category]) ON [PRIMARY];
CREATE INDEX [userid_category_creditsid] ON [wapkang_consumelog]([userid],[category],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_category_mode] ON [wapkang_consumelog]([userid],[category],[mode]) ON [PRIMARY];
CREATE INDEX [userid_category_mode_creditsid] ON [wapkang_consumelog]([userid],[category],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_mode] ON [wapkang_consumelog]([userid],[mode]) ON [PRIMARY];
CREATE INDEX [userid_mode_creditsid] ON [wapkang_consumelog]([userid],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_creditsid] ON [wapkang_consumelog]([userid],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_createtime] ON [wapkang_consumelog]([userid],[createtime]) ON [PRIMARY];
CREATE INDEX [userid_createtime_category] ON [wapkang_consumelog]([userid],[createtime],[category]) ON [PRIMARY];
CREATE INDEX [userid_createtime_category_mode] ON [wapkang_consumelog]([userid],[createtime],[category],[mode]) ON [PRIMARY];
CREATE INDEX [userid_createtime_category_creditsid] ON [wapkang_consumelog]([userid],[createtime],[category],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_createtime_category_mode_creditsid] ON [wapkang_consumelog]([userid],[createtime],[category],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_createtime_mode] ON [wapkang_consumelog]([userid],[createtime],[mode]) ON [PRIMARY];
CREATE INDEX [userid_createtime_mode_creditsid] ON [wapkang_consumelog]([userid],[createtime],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [userid_createtime_creditsid] ON [wapkang_consumelog]([userid],[createtime],[creditsid]) ON [PRIMARY];
CREATE INDEX [createtime] ON [wapkang_consumelog]([createtime]) ON [PRIMARY];
CREATE INDEX [createtime_category] ON [wapkang_consumelog]([createtime],[category]) ON [PRIMARY];
CREATE INDEX [createtime_category_mode] ON [wapkang_consumelog]([createtime],[category],[mode]) ON [PRIMARY];
CREATE INDEX [createtime_category_mode_creditsid] ON [wapkang_consumelog]([createtime],[category],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [createtime_category_creditsid] ON [wapkang_consumelog]([createtime],[category],[creditsid]) ON [PRIMARY];
CREATE INDEX [createtime_mode] ON [wapkang_consumelog]([createtime],[mode]) ON [PRIMARY];
CREATE INDEX [createtime_mode_creditsid] ON [wapkang_consumelog]([createtime],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [createtime_creditsid] ON [wapkang_consumelog]([createtime],[creditsid]) ON [PRIMARY];
CREATE INDEX [category] ON [wapkang_consumelog]([category]) ON [PRIMARY];
CREATE INDEX [category_mode] ON [wapkang_consumelog]([category],[mode]) ON [PRIMARY];
CREATE INDEX [category_mode_creditsid] ON [wapkang_consumelog]([category],[mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [category_creditsid] ON [wapkang_consumelog]([category],[creditsid]) ON [PRIMARY];
CREATE INDEX [mode] ON [wapkang_consumelog]([mode]) ON [PRIMARY];
CREATE INDEX [mode_creditsid] ON [wapkang_consumelog]([mode],[creditsid]) ON [PRIMARY];
CREATE INDEX [creditsid] ON [wapkang_consumelog]([creditsid]) ON [PRIMARY];
CREATE INDEX [upid] ON [wapkang_commondistrict]([upid]) ON [PRIMARY];
CREATE INDEX [level] ON [wapkang_commondistrict]([level]) ON [PRIMARY];
CREATE INDEX [resid_uid_typeid] ON [wapkang_favorites]([resid],[uid],[typeid]) ON [PRIMARY];
CREATE INDEX [uid] ON [wapkang_favorites]([uid]) ON [PRIMARY];
CREATE INDEX [uid_typeid] ON [wapkang_favorites]([uid],[typeid]) ON [PRIMARY];
CREATE INDEX [typeid] ON [wapkang_favorites]([typeid]) ON [PRIMARY];
CREATE INDEX [category] ON [wapkang_commonclass]([category]) ON [PRIMARY];
CREATE INDEX [category_state] ON [wapkang_commonclass]([category],[state]) ON [PRIMARY];
CREATE INDEX [category_state_layercount] ON [wapkang_commonclass]([category],[state],[layercount]) ON [PRIMARY];
CREATE INDEX [category_state_layercount_parentid] ON [wapkang_commonclass]([category],[state],[layercount],[parentid]) ON [PRIMARY];
CREATE INDEX [category_state_parentid] ON [wapkang_commonclass]([category],[state],[parentid]) ON [PRIMARY];
CREATE INDEX [category_Orderid] ON [wapkang_commonclass]([category],[Orderid]) ON [PRIMARY];
CREATE INDEX [parentid] ON [wapkang_commonclass]([parentid]) ON [PRIMARY];

CREATE INDEX [creatorid_typeid] ON [wapkang_invitation]([creatorid],[typeid]) ON [PRIMARY];
CREATE INDEX [creatorid_typeid_isdeleted] ON [wapkang_invitation]([creatorid],[typeid],[isdeleted]) ON [PRIMARY];
CREATE INDEX [creatorid_typeid_createdtime] ON [wapkang_invitation]([creatorid],[typeid],[createdtime]) ON [PRIMARY];
CREATE INDEX [seqid_isdeleted] ON [wapkang_invitation]([seqid],[isdeleted]) ON [PRIMARY];
CREATE INDEX [code_isdeleted] ON [wapkang_invitation]([code],[isdeleted]) ON [PRIMARY];
CREATE INDEX [ip_createdate] ON [wapkang_commonipdb]([ip],[createdate]) ON [PRIMARY];
CREATE INDEX [createdate] ON [wapkang_commonipdb]([createdate]) ON [PRIMARY];
CREATE INDEX [visitdate] ON [wapkang_commonvisitlog]([visitdate]) ON [PRIMARY];
CREATE INDEX [expiration] ON [wapkang_bannedip]([expiration]) ON [PRIMARY];
CREATE INDEX [ip] ON [wapkang_loginlogs]([ip]) ON [PRIMARY];
CREATE INDEX [medals_uid] ON [wapkang_medalslog]([medals],[uid]) ON [PRIMARY];
CREATE INDEX [medals_uid_actions] ON [wapkang_medalslog]([medals],[uid],[actions]) ON [PRIMARY];
CREATE INDEX [uid] ON [wapkang_medalslog]([uid]) ON [PRIMARY];
CREATE INDEX [medals] ON [wapkang_medalslog]([medals]) ON [PRIMARY];
CREATE INDEX [userid] ON [wapkang_notices]([userid]) ON [PRIMARY];
CREATE INDEX [userid_new] ON [wapkang_notices]([userid],[new]) ON [PRIMARY];
CREATE INDEX [userid_type] ON [wapkang_notices]([userid],[type]) ON [PRIMARY];
CREATE INDEX [userid_new_type] ON [wapkang_notices]([userid],[new],[type]) ON [PRIMARY];
CREATE INDEX [type_Createtime] ON [wapkang_notices]([type],[Createtime]) ON [PRIMARY];
CREATE INDEX [boardid] ON [wapkang_online]([boardid]) ON [PRIMARY];
CREATE INDEX [boardid_actionuptime] ON [wapkang_online]([boardid],[Actionuptime]) ON [PRIMARY];
CREATE INDEX [sessionid] ON [wapkang_online]([sessionid]) ON [PRIMARY];
CREATE INDEX [userid] ON [wapkang_online]([userid]) ON [PRIMARY];
CREATE INDEX [actionuptime] ON [wapkang_online]([actionuptime]) ON [PRIMARY];
CREATE INDEX [userid_userip] ON [wapkang_online]([userid],[userip]) ON [PRIMARY];
CREATE INDEX [userid_password] ON [wapkang_online]([userid],[password]) ON [PRIMARY];
CREATE INDEX [groupid] ON [wapkang_online]([groupid]) ON [PRIMARY];
CREATE INDEX [userid_lastupdate] ON [wapkang_onlinetime]([userid],[lastupdate]) ON [PRIMARY];
CREATE INDEX [userid] ON [wapkang_onlinetime]([userid]) ON [PRIMARY];
CREATE INDEX [orderid] ON [wapkang_payment]([orderid]) ON [PRIMARY];
CREATE INDEX [state_userid] ON [wapkang_payment]([state],[userid]) ON [PRIMARY];
CREATE INDEX [state_createtime] ON [wapkang_payment]([state],[createtime]) ON [PRIMARY];
CREATE INDEX [expiration] ON [wapkang_search]([expiration]) ON [PRIMARY];
CREATE INDEX [tagname] ON [wapkang_tags]([tagname]) ON [PRIMARY];
CREATE INDEX [Orderid] ON [wapkang_tags]([Orderid]) ON [PRIMARY];
CREATE INDEX [tagname_Orderid] ON [wapkang_tags]([tagname],[Orderid]) ON [PRIMARY];
CREATE INDEX [Topiccount_Orderid] ON [wapkang_tags]([Topiccount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Forumcount_Orderid] ON [wapkang_tags]([Forumcount],[Orderid]) ON [PRIMARY];
CREATE INDEX [PhotocountOrderid] ON [wapkang_tags]([Photocount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Diarycount_Orderid] ON [wapkang_tags]([Diarycount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Goodscount_Orderid] ON [wapkang_tags]([Goodscount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Articlecount_Orderid] ON [wapkang_tags]([Articlecount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Softwarecount_Orderid] ON [wapkang_tags]([Softwarecount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Musiccount_Orderid] ON [wapkang_tags]([Musiccount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Picturecount_Orderid] ON [wapkang_tags]([Picturecount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Videocount_Orderid] ON [wapkang_tags]([Videocount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Newscount_Orderid] ON [wapkang_tags]([Newscount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Ebookcount_Orderid] ON [wapkang_tags]([Ebookcount],[Orderid]) ON [PRIMARY];
CREATE INDEX [Interestcount_Orderid] ON [wapkang_tags]([Interestcount],[Orderid]) ON [PRIMARY];
CREATE INDEX [count] ON [wapkang_tags]([count]) ON [PRIMARY];
CREATE INDEX [groupid] ON [wapkang_user]([groupid]) ON [PRIMARY];
CREATE INDEX [username_password] ON [wapkang_user]([username],[password]) ON [PRIMARY];
CREATE INDEX [seqid_password] ON [wapkang_user]([seqid],[password]) ON [PRIMARY];
CREATE INDEX [username] ON [wapkang_user]([username]) ON [PRIMARY];
CREATE INDEX [email] ON [wapkang_user]([email]) ON [PRIMARY];
CREATE INDEX [username_email_secques] ON [wapkang_user]([username],[email],[secques]) ON [PRIMARY];
CREATE INDEX [username_password_secques] ON [wapkang_user]([username],[password],[secques]) ON [PRIMARY];
CREATE INDEX [mobile] ON [wapkang_user]([mobile]) ON [PRIMARY];
CREATE INDEX [regip] ON [wapkang_user]([regip]) ON [PRIMARY];
CREATE INDEX [adminid] ON [wapkang_user]([adminid]) ON [PRIMARY];
CREATE INDEX [paypassword_userid] ON [wapkang_userfields]([paypassword],[userid]) ON [PRIMARY];
CREATE INDEX [userid_Phonemodel] ON [wapkang_userfields]([userid],[Phonemodel]) ON [PRIMARY];
CREATE INDEX [Phonemodel] ON [wapkang_userfields]([Phonemodel]) ON [PRIMARY];
CREATE INDEX [authstr] ON [wapkang_userfields]([authstr]) ON [PRIMARY];
CREATE INDEX [Province] ON [wapkang_userfields]([Province]) ON [PRIMARY];
CREATE INDEX [Province_City] ON [wapkang_userfields]([Province],[City]) ON [PRIMARY];
CREATE INDEX [Province_City_District] ON [wapkang_userfields]([Province],[City],[District]) ON [PRIMARY];
CREATE INDEX [Province_City_District_Community] ON [wapkang_userfields]([Province],[City],[District],[Community]) ON [PRIMARY];
CREATE INDEX [HomeProvince] ON [wapkang_userfields]([HomeProvince]) ON [PRIMARY];
CREATE INDEX [HomeProvince_HomeCity] ON [wapkang_userfields]([HomeProvince],[HomeCity]) ON [PRIMARY];
CREATE INDEX [HomeProvince_HomeCity_HomeDistrict] ON [wapkang_userfields]([HomeProvince],[HomeCity],[HomeDistrict]) ON [PRIMARY];
CREATE INDEX [HomeProvince_HomeCity_HomeDistrict_HomeCommunity] ON [wapkang_userfields]([HomeProvince],[HomeCity],[HomeDistrict],[HomeCommunity]) ON [PRIMARY];
CREATE INDEX [Birthday] ON [wapkang_userfields]([Birthday]) ON [PRIMARY];
CREATE INDEX [Isavatar] ON [wapkang_userfields]([Isavatar]) ON [PRIMARY];
CREATE INDEX [sceneid] ON [wapkang_userfields]([sceneid]) ON [PRIMARY];
CREATE INDEX [tagid] ON [wapkang_userinterest]([tagid]) ON [PRIMARY];
CREATE INDEX [category] ON [wapkang_userpaylog]([category]) ON [PRIMARY];
CREATE INDEX [category_credits] ON [wapkang_userpaylog]([category],[credits]) ON [PRIMARY];
CREATE INDEX [category_credits_resid] ON [wapkang_userpaylog]([category],[credits],[resid]) ON [PRIMARY];
CREATE INDEX [category_credits_resid_authorid] ON [wapkang_userpaylog]([category],[credits],[resid],[authorid]) ON [PRIMARY];
CREATE INDEX [category_credits_resid_authorid_createtime] ON [wapkang_userpaylog]([category],[credits],[resid],[authorid],[createtime]) ON [PRIMARY];
CREATE INDEX [category_credits_authorid] ON [wapkang_userpaylog]([category],[credits],[authorid]) ON [PRIMARY];
CREATE INDEX [category_credits_authorid_createtime] ON [wapkang_userpaylog]([category],[credits],[authorid],[createtime]) ON [PRIMARY];
CREATE INDEX [category_credits_createtime] ON [wapkang_userpaylog]([category],[credits],[createtime]) ON [PRIMARY];
CREATE INDEX [category_resid] ON [wapkang_userpaylog]([category],[resid]) ON [PRIMARY];
CREATE INDEX [category_resid_authorid] ON [wapkang_userpaylog]([category],[resid],[authorid]) ON [PRIMARY];
CREATE INDEX [category_resid_authorid_createtime] ON [wapkang_userpaylog]([category],[resid],[authorid],[createtime]) ON [PRIMARY];
CREATE INDEX [category_resid_createtime] ON [wapkang_userpaylog]([category],[resid],[createtime]) ON [PRIMARY];
CREATE INDEX [category_authorid] ON [wapkang_userpaylog]([category],[authorid]) ON [PRIMARY];
CREATE INDEX [category_authorid_createtime] ON [wapkang_userpaylog]([category],[authorid],[createtime]) ON [PRIMARY];
CREATE INDEX [category_createtime] ON [wapkang_userpaylog]([category],[createtime]) ON [PRIMARY];
CREATE INDEX [category_resid_uid] ON [wapkang_userpaylog]([category],[resid],[uid]) ON [PRIMARY];

CREATE INDEX [uid_category_tid_pid] ON [wapkang_attachments]([uid],[category],[tid],[pid]) ON [PRIMARY];
CREATE INDEX [uid_category_tid_pid_fid] ON [wapkang_attachments]([uid],[category],[tid],[pid],[fid]) ON [PRIMARY];
