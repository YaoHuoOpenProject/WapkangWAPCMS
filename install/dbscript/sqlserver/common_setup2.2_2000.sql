SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getMysplit]
(
 @splitstring NVARCHAR(4000),
 @separator CHAR(1) = ','
)
RETURNS @splitstringstable TABLE
(
 [item] NVARCHAR(200)
)
AS
BEGIN
    DECLARE @currentindex INT
    DECLARE @nextindex INT
    DECLARE @returntext NVARCHAR(200)
    SELECT @currentindex=1
    WHILE(@currentindex<=datalength(@splitstring)/2)
    BEGIN
        SELECT @nextindex=charindex(@separator,@splitstring,@currentindex)
        IF(@nextindex=0 OR @nextindex IS NULL)
            SELECT @nextindex=datalength(@splitstring)/2+1
        SELECT @returntext=substring(@splitstring,@currentindex,@nextindex-@currentindex)
        INSERT INTO @splitstringstable([item]) VALUES(@returntext)
        SELECT @currentindex=@nextindex+1
    END
    RETURN
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_admingroupcreateinfo]
	@admingid smallint,
	@alloweditpost tinyint,
	@alloweditpoll tinyint,
	@allowstickthread tinyint,
	@allowmodpost tinyint,
	@allowdelpost tinyint,
	@allowmassprune tinyint,
	@allowrefund tinyint,
	@allowcensorword tinyint,
	@allowviewip tinyint,
	@allowbanip tinyint,
	@allowedituser tinyint,
	@allowmoduser tinyint,
	@allowbanuser tinyint,
	@allowviewlog tinyint,
	@disablepostctrl tinyint,
	@allowviewrealname tinyint,
	@allowbackstage tinyint,
	@allowmanageannounce tinyint,
	@allowedittemplate tinyint,
	@allowmanagelink tinyint,
	@allowmanagefeedback tinyint,
	@allowmanagegame tinyint,
	@allowmanageplugins tinyint,
	@allowmanageuser tinyint,
	@allowmanagelayout tinyint,
	@allowmanagearticle tinyint,
	@allowmanagepicture tinyint,
	@allowmanagemusic tinyint,
	@allowmanagesoftware tinyint,
	@allowmanagevideo tinyint,
	@allowmanageebook tinyint,
	@allowmanagenews tinyint,
	@allowmanagebook tinyint,
	@allowmanageshop tinyint,
	@allowmanageforum tinyint,
	@allowmanageannouncechild Text,
	@allowedittemplatechild Text,
	@allowmanagelinkchild Text,
	@allowmanagefeedbackchild Text,
	@allowmanagegamechild Text,
	@allowmanagepluginschild Text,
	@allowmanageuserchild Text,
	@allowmanagelayoutchild Text,
	@allowmanagearticlechild Text,
	@allowmanagepicturechild Text,
	@allowmanagemusicchild Text,
	@allowmanagesoftwarechild Text,
	@allowmanagevideochild Text,
	@allowmanageebookchild Text,
	@allowmanagenewschild Text,
	@allowmanagebookchild Text,
	@allowmanageshopchild Text,
	@allowmanageforumchild Text,
	@allowmanagebasicfunction Text
AS
INSERT INTO wapkang_admingroups 
	([admingid],[alloweditpost],[alloweditpoll],[allowstickthread],[allowmodpost],[allowdelpost],[allowmassprune],[allowrefund],[allowcensorword],[allowviewip],[allowbanip],[allowedituser],[allowmoduser],[allowbanuser],[allowviewlog],[disablepostctrl],[allowviewrealname],[allowbackstage],[allowmanageannounce],[allowedittemplate],[allowmanagelink],[allowmanagefeedback],[allowmanagegame],[allowmanageplugins],[allowmanageuser],[allowmanagelayout],[allowmanagearticle],[allowmanagepicture],[allowmanagemusic],[allowmanagesoftware],[allowmanagevideo],[allowmanageebook],[allowmanagenews],[allowmanagebook],[allowmanageshop],[allowmanageforum],[allowmanageannouncechild],[allowedittemplatechild],[allowmanagelinkchild],[allowmanagefeedbackchild],[allowmanagegamechild],[allowmanagepluginschild],[allowmanageuserchild],[allowmanagelayoutchild],[allowmanagearticlechild],[allowmanagepicturechild],[allowmanagemusicchild],[allowmanagesoftwarechild],[allowmanagevideochild],[allowmanageebookchild],[allowmanagenewschild],[allowmanagebookchild],[allowmanageshopchild],[allowmanageforumchild],[allowmanagebasicfunction])
VALUES
	(@admingid,@alloweditpost,@alloweditpoll,@allowstickthread,@allowmodpost,@allowdelpost,@allowmassprune,@allowrefund,@allowcensorword,@allowviewip,@allowbanip,@allowedituser,@allowmoduser,@allowbanuser,@allowviewlog,@disablepostctrl,@allowviewrealname,@allowbackstage,@allowmanageannounce,@allowedittemplate,@allowmanagelink,@allowmanagefeedback,@allowmanagegame,@allowmanageplugins,@allowmanageuser,@allowmanagelayout,@allowmanagearticle,@allowmanagepicture,@allowmanagemusic,@allowmanagesoftware,@allowmanagevideo,@allowmanageebook,@allowmanagenews,@allowmanagebook,@allowmanageshop,@allowmanageforum,@allowmanageannouncechild,@allowedittemplatechild,@allowmanagelinkchild,@allowmanagefeedbackchild,@allowmanagegamechild,@allowmanagepluginschild,@allowmanageuserchild,@allowmanagelayoutchild,@allowmanagearticlechild,@allowmanagepicturechild,@allowmanagemusicchild,@allowmanagesoftwarechild,@allowmanagevideochild,@allowmanageebookchild,@allowmanagenewschild,@allowmanagebookchild,@allowmanageshopchild,@allowmanageforumchild,@allowmanagebasicfunction)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_admingroupupdateinfo]
	@admingid smallint,
	@alloweditpost tinyint,
	@alloweditpoll tinyint,
	@allowstickthread tinyint,
	@allowmodpost tinyint,
	@allowdelpost tinyint,
	@allowmassprune tinyint,
	@allowrefund tinyint,
	@allowcensorword tinyint,
	@allowviewip tinyint,
	@allowbanip tinyint,
	@allowedituser tinyint,
	@allowmoduser tinyint,
	@allowbanuser tinyint,
	@allowviewlog tinyint,
	@disablepostctrl tinyint,
	@allowviewrealname tinyint,
	@allowbackstage tinyint,
	@allowmanageannounce tinyint,
	@allowedittemplate tinyint,
	@allowmanagelink tinyint,
	@allowmanagefeedback tinyint,
	@allowmanagegame tinyint,
	@allowmanageplugins tinyint,
	@allowmanageuser tinyint,
	@allowmanagelayout tinyint,
	@allowmanagearticle tinyint,
	@allowmanagepicture tinyint,
	@allowmanagemusic tinyint,
	@allowmanagesoftware tinyint,
	@allowmanagevideo tinyint,
	@allowmanageebook tinyint,
	@allowmanagenews tinyint,
	@allowmanagebook tinyint,
	@allowmanageshop tinyint,
	@allowmanageforum tinyint,
	@allowmanageannouncechild Text,
	@allowedittemplatechild Text,
	@allowmanagelinkchild Text,
	@allowmanagefeedbackchild Text,
	@allowmanagegamechild Text,
	@allowmanagepluginschild Text,
	@allowmanageuserchild Text,
	@allowmanagelayoutchild Text,
	@allowmanagearticlechild Text,
	@allowmanagepicturechild Text,
	@allowmanagemusicchild Text,
	@allowmanagesoftwarechild Text,
	@allowmanagevideochild Text,
	@allowmanageebookchild Text,
	@allowmanagenewschild Text,
	@allowmanagebookchild Text,
	@allowmanageshopchild Text,
	@allowmanageforumchild Text,
	@allowmanagebasicfunction Text
AS
UPDATE [wapkang_admingroups] SET 
	[alloweditpost]=@alloweditpost,
	[alloweditpoll]=@alloweditpoll,
	[allowstickthread]=@allowstickthread,
	[allowmodpost]=@allowmodpost,
	[allowdelpost]=@allowdelpost,
	[allowmassprune]=@allowmassprune,
	[allowrefund]=@allowrefund,
	[allowcensorword]=@allowcensorword,
	[allowviewip]=@allowviewip,
	[allowbanip]=@allowbanip,
	[allowedituser]=@allowedituser,
	[allowmoduser]=@allowmoduser,
	[allowbanuser]=@allowbanuser,
	[allowviewlog]=@allowviewlog,
	[disablepostctrl]=@disablepostctrl,
	[allowviewrealname]=@allowviewrealname,
	[allowbackstage]=@allowbackstage,
	[allowmanageannounce]=@allowmanageannounce,
	[allowedittemplate]=@allowedittemplate,
	[allowmanagelink]=@allowmanagelink,
	[allowmanagefeedback]=@allowmanagefeedback,
	[allowmanagegame]=@allowmanagegame,
	[allowmanageplugins]=@allowmanageplugins,
	[allowmanageuser]=@allowmanageuser,
	[allowmanagelayout]=@allowmanagelayout,
	[allowmanagearticle]=@allowmanagearticle,
	[allowmanagepicture]=@allowmanagepicture,
	[allowmanagemusic]=@allowmanagemusic,
	[allowmanagesoftware]=@allowmanagesoftware,
	[allowmanagevideo]=@allowmanagevideo,
	[allowmanageebook]=@allowmanageebook,
	[allowmanagenews]=@allowmanagenews,
	[allowmanagebook]=@allowmanagebook,
	[allowmanageshop]=@allowmanageshop,
	[allowmanageforum]=@allowmanageforum,
	[allowmanageannouncechild]=@allowmanageannouncechild,
	[allowedittemplatechild]=@allowedittemplatechild,
	[allowmanagelinkchild]=@allowmanagelinkchild,
	[allowmanagefeedbackchild]=@allowmanagefeedbackchild,
	[allowmanagegamechild]=@allowmanagegamechild,
	[allowmanagepluginschild]=@allowmanagepluginschild,
	[allowmanageuserchild]=@allowmanageuserchild,
	[allowmanagelayoutchild]=@allowmanagelayoutchild,
	[allowmanagearticlechild]=@allowmanagearticlechild,
	[allowmanagepicturechild]=@allowmanagepicturechild,
	[allowmanagemusicchild]=@allowmanagemusicchild,
	[allowmanagesoftwarechild]=@allowmanagesoftwarechild,
	[allowmanagevideochild]=@allowmanagevideochild,
	[allowmanageebookchild]=@allowmanageebookchild,
	[allowmanagenewschild]=@allowmanagenewschild,
	[allowmanagebookchild]=@allowmanagebookchild,
	[allowmanageshopchild]=@allowmanageshopchild,
	[allowmanageforumchild]=@allowmanageforumchild,
	[allowmanagebasicfunction]=@allowmanagebasicfunction
WHERE [admingid]=@admingid
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentscreateinfo]
	@Readperm Int,
	@Allowubb int,
	@Category TinyInt,
	@Typeid TinyInt,
	@Mirroring TinyInt,
	@Download Int,
	@Filename NChar(60),
	@Description NText,
	@Source NVarChar(100),
	@Contenttype NVarChar(50),
	@Tid Int,
	@Cid Int,
	@Uid Int,
	@Pid Int,
	@Ext NVarChar(20),
	@Size Int,
	@Width Int,
	@Height Int,
	@Price Float,
	@Createtime DateTime
AS
	INSERT INTO [wapkang_attachments]([Readperm],[Allowubb],[Category],[Typeid],[Mirroring],[Download],[Filename],[Description],[Source],[Contenttype],[Tid],[Cid],[Uid],[Pid],[Ext],[Size],[Width],[Height],[Price],[Createtime])VALUES(@Readperm,@Allowubb,@Category,@Typeid,@Mirroring,@Download,@Filename,@Description,@Source,@Contenttype,@Tid,@Cid,@Uid,@Pid,@Ext,@Size,@Width,@Height,@Price,@Createtime)
	SELECT SCOPE_IDENTITY()
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsDeletebycommentid]
	@tid Int,
	@pidList VarChar(4000),
	@tablename VarChar(20),
	@category TinyInt
AS
	EXEC('UPDATE ['+ @tablename +'] SET [isattach]=0 where [pid] in('+ @pidList +')')
	EXEC('DELETE FROM [wapkang_attachments] WHERE [category]='+ @category +' AND [tid]='+ @tid +' AND [pid] in('+ @pidList +')')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsdeletebytid]
	@tidList VarChar(4000),
	@iscomment Int,
	@category TinyInt
AS
	if(@iscomment=1)
		EXEC('DELETE FROM [wapkang_attachments] WHERE [category]='+ @category +' AND [tid] in('+ @tidList +')')
	else
		EXEC('DELETE FROM [wapkang_attachments] WHERE [category]='+ @category +' AND [pid]=0 AND [tid] in('+ @tidList +')')	
	if(@category=1)
		EXEC('UPDATE [wapkang_article] SET [attach]=0 where [aid] in('+ @tidList +')')
	else if(@category=8)
		EXEC('UPDATE [wapkang_topics] SET [isattach]=0 where [tid] in('+ @tidList +')')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsgetlistbyall]
	@category TinyInt
AS
	EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsGetlistbycid]
	@seqid VarChar(4000),
	@category TinyInt
AS
	EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [cid] IN ('+ @seqid +')')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsGetlistbycommentcondition]
	@condition VarChar(4000),
	@category TinyInt
AS
	EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [pid] IN (SELECT [pid] FROM [wapkang_articlecomment] WHERE '+ @condition +')')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsGetlistbycommentid]
	@tid Int,
	@pidList VarChar(4000),
	@tablename VarChar(20),
	@category TinyInt
AS
	DECLARE @Ressql varchar(5000)
	if(@category=1)
		BEGIN
			SET @Ressql = 'SELECT [pid] FROM [wapkang_articlecomment] WHERE [attach]=1 AND [pid] in('+ @pidList +')'
			EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [pid] IN ('+ @Ressql +')')
		END
	else if(@category=8)
		BEGIN
			SET @Ressql = 'SELECT [pid] FROM ['+ @tablename +'] WHERE [isattach]>0 AND [pid] in('+ @pidList +')'
			EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [tid]='+ @tid +' AND [pid] IN ('+ @Ressql +')')
		END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsgetlistbytid]
	@tidList VarChar(4000),
	@iscomment Int,
	@category TinyInt
AS
IF @iscomment=0
	EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [pid]=0 AND [tid] IN ('+ @tidList +')')
ELSE
	EXEC('SELECT [Source] FROM [wapkang_attachments] WHERE [mirroring]=0 AND [category]='+ @category +' AND [tid] IN ('+ @tidList +')')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_attachmentsmodifyinfo]
	@Readperm Int,
	@Allowubb int,
	@Category TinyInt,
	@Typeid TinyInt,
	@Mirroring TinyInt,
	@Download Int,
	@Filename NChar(60),
	@Description NText,
	@Source NVarChar(100),
	@Contenttype NVarChar(50),
	@Tid Int,
	@Cid Int,
	@Uid Int,
	@Pid Int,
	@Ext NVarChar(20),
	@Size Int,
	@Width Int,
	@Height Int,
	@Price Float,
	@Createtime DateTime,
	@Fid Int
AS
	UPDATE [wapkang_attachments] SET [Readperm]=@Readperm,[Allowubb]=@Allowubb,[Category]=@Category,[Typeid]=@Typeid,[Mirroring]=@Mirroring,[Download]=@Download,[Filename]=@Filename,[Description]=@Description,[Source]=@Source,[Contenttype]=@Contenttype,[Tid]=@Tid,[Cid]=@Cid,[Uid]=@Uid,[Pid]=@Pid,[Ext]=@Ext,[Size]=@Size,[Width]=@Width,[Height]=@Height,[Price]=@Price,[Createtime]=@Createtime WHERE [Fid]=@Fid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_consumeCreateinfo]
    @Category smallint,
    @Creditsid TinyInt,
	@Userid Int,
    @Mode TinyInt,
    @Amount float,
    @Remainder float,
    @Authstr Char(8),
	@Remark VarChar(255),
    @Createtime DateTime
AS
INSERT INTO [wapkang_consumelog]([category],[creditsid],[userid],[mode],[amount],[remainder],[authstr],[remark],[createtime])VALUES(@Category,@Creditsid,@Userid,@Mode,@Amount,@Remainder,@Authstr,@Remark,@Createtime)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_favoritescreateinfo]
@uid int,
@resid int,
@type tinyint
AS
	
	INSERT INTO [wapkang_favorites] ([uid],[resid],[typeid]) VALUES(@uid,@resid,@type)
	RETURN
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_favoritesgetcount]
@uid int,
@typeid smallint
AS
IF @typeid>0 
	BEGIN
		IF @uid>0
			SELECT COUNT(0) FROM [wapkang_favorites] WHERE [uid]=@uid AND [typeid]=@typeid
		ELSE
			SELECT COUNT(0) FROM [wapkang_favorites] WHERE [typeid]=@typeid
	END
ELSE
	BEGIN
		IF @uid>0
			SELECT COUNT(0) FROM [wapkang_favorites] WHERE [uid]=@uid
		ELSE
			SELECT COUNT(0) FROM [wapkang_favorites]
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_functionclassCreate]
	@Category TinyInt,
	@State TinyInt,
	@Layercount TinyInt,
	@Name NChar(60),
	@Description NText,
	@Logo VarChar(100),
	@Icon VarChar(100),
	@Orderid Int,
	@Password VarChar(16),
	@Parentid Int,
	@Parentidlist NText,
	@Subidlist NText,
	@Subcount Int,
	@Viewcount Int,
	@Currentposts Int,
	@Postscount Int,
	@Commentcount Int,
	@Currentcomment Int,
	@Seokeywords VarChar(500),
	@Seodescription VarChar(500),
	@Templateid Int,
	@Postcredits VarChar(255),
	@Replycredits VarChar(255),
	@Postattachcredits VarChar(255),
	@Getattachcredits VarChar(255),
	@Viewperm VarChar(255),
	@Postperm VarChar(255),
	@Replyperm VarChar(255),
	@Getattachperm VarChar(255),
	@Postattachperm VarChar(255),
	@Replyauditperm VarChar(255),
	@Postauditperm VarChar(255),
	@Feelitem VarChar(255),
	@Contentstype TinyInt,
	@Displayalign Char(10),
	@Displayviews TinyInt,
	@Displayorder TinyInt,
	@Displaytime TinyInt,
	@Displayimage TinyInt,
	@Displaysubcls TinyInt,
	@Subcolcount TinyInt,
	@Downloadcomment TinyInt,
	@Downloadtrend TinyInt,
	@Viewstrend TinyInt,
	@Creditstactics TinyInt,
	@Allowtrade TinyInt,
	@Allowfeel TinyInt,
	@Allowtag TinyInt,
	@Allowrss TinyInt,
	@Allowhtml TinyInt,
	@Allowubbcode TinyInt,
	@Allowimgcode TinyInt,
	@Allowlinkcode TinyInt,
	@Allowblog TinyInt,
	@Recyclebin TinyInt,
	@Allowdownload TinyInt,
	@Isjammer TinyInt,
	@Attachextensions VarChar(255),
	@Applytoplist TinyInt,
	@Applyrestype TinyInt,
	@Typesitem NText,
	@Postbyrestype TinyInt,
	@Viewbyrestype TinyInt,
	@Restypeprefix TinyInt,
	@Moderators NText,
	@Moderatorsperm VarChar(255),
	@Permuserlist NText,
	@Autoclose Int,
	@Allowpoststypes TinyInt,
	@Attachposttexts TinyInt,
    @Thumbnailicon TinyInt,
    @Thumbnailrounded TinyInt,
    @Thumbnailwidth Int,
    @Thumbnailheight Int,
	@Createtime DateTime,
	@Lastuptime DateTime
AS
	INSERT INTO [wapkang_commonclass]([Category],[State],[Layercount],[Name],[Description],[Logo],[Icon],[Orderid],[Password],[Parentid],[Parentidlist],[Subidlist],[Subcount],[Viewcount],[Currentposts],[Postscount],[Commentcount],[Currentcomment],[Seokeywords],[Seodescription],[Templateid],[Postcredits],[Replycredits],[Postattachcredits],[Getattachcredits],[Viewperm],[Postperm],[Replyperm],[Getattachperm],[Postattachperm],[Replyauditperm],[Postauditperm],[Feelitem],[Contentstype],[Displayalign],[Displayviews],[Displayorder],[Displaytime],[Displayimage],[Displaysubcls],[Subcolcount],[Downloadcomment],[Downloadtrend],[Viewstrend],[Creditstactics],[Allowtrade],[Allowfeel],[Allowtag],[Allowrss],[Allowhtml],[Allowubbcode],[Allowimgcode],[Allowlinkcode],[Allowblog],[Recyclebin],[Allowdownload],[Isjammer],[Attachextensions],[Applytoplist],[Applyrestype],[Typesitem],[Postbyrestype],[Viewbyrestype],[Restypeprefix],[Moderators],[Moderatorsperm],[Permuserlist],[Autoclose],[Allowpoststypes],[Attachposttexts],[Thumbnailicon],[Thumbnailrounded],[Thumbnailwidth],[Thumbnailheight],[Createtime],[Lastuptime])VALUES(@Category,@State,@Layercount,@Name,@Description,@Logo,@Icon,@Orderid,@Password,@Parentid,@Parentidlist,@Subidlist,@Subcount,@Viewcount,@Currentposts,@Postscount,@Commentcount,@Currentcomment,@Seokeywords,@Seodescription,@Templateid,@Postcredits,@Replycredits,@Postattachcredits,@Getattachcredits,@Viewperm,@Postperm,@Replyperm,@Getattachperm,@Postattachperm,@Replyauditperm,@Postauditperm,@Feelitem,@Contentstype,@Displayalign,@Displayviews,@Displayorder,@Displaytime,@Displayimage,@Displaysubcls,@Subcolcount,@Downloadcomment,@Downloadtrend,@Viewstrend,@Creditstactics,@Allowtrade,@Allowfeel,@Allowtag,@Allowrss,@Allowhtml,@Allowubbcode,@Allowimgcode,@Allowlinkcode,@Allowblog,@Recyclebin,@Allowdownload,@Isjammer,@Attachextensions,@Applytoplist,@Applyrestype,@Typesitem,@Postbyrestype,@Viewbyrestype,@Restypeprefix,@Moderators,@Moderatorsperm,@Permuserlist,@Autoclose,@Allowpoststypes,@Attachposttexts,@Thumbnailicon,@Thumbnailrounded,@Thumbnailwidth,@Thumbnailheight,@Createtime,@Lastuptime)
	SELECT SCOPE_IDENTITY()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_functionclassCreatebyidentityinsert]
	@Category TinyInt,
	@State TinyInt,
	@Layercount TinyInt,
	@Name NChar(60),
	@Description NText,
	@Logo VarChar(100),
	@Icon VarChar(100),
	@Orderid Int,
	@Password VarChar(16),
	@Parentid Int,
	@Parentidlist NText,
	@Subidlist NText,
	@Subcount Int,
	@Viewcount Int,
	@Currentposts Int,
	@Postscount Int,
	@Commentcount Int,
	@Currentcomment Int,
	@Seokeywords VarChar(500),
	@Seodescription VarChar(500),
	@Templateid Int,
	@Postcredits VarChar(255),
	@Replycredits VarChar(255),
	@Postattachcredits VarChar(255),
	@Getattachcredits VarChar(255),
	@Viewperm VarChar(255),
	@Postperm VarChar(255),
	@Replyperm VarChar(255),
	@Getattachperm VarChar(255),
	@Postattachperm VarChar(255),
	@Replyauditperm VarChar(255),
	@Postauditperm VarChar(255),
	@Feelitem VarChar(255),
	@Contentstype TinyInt,
	@Displayalign Char(10),
	@Displayviews TinyInt,
	@Displayorder TinyInt,
	@Displaytime TinyInt,
	@Displayimage TinyInt,
	@Displaysubcls TinyInt,
	@Subcolcount TinyInt,
	@Downloadcomment TinyInt,
	@Downloadtrend TinyInt,
	@Viewstrend TinyInt,
	@Creditstactics TinyInt,
	@Allowtrade TinyInt,
	@Allowfeel TinyInt,
	@Allowtag TinyInt,
	@Allowrss TinyInt,
	@Allowhtml TinyInt,
	@Allowubbcode TinyInt,
	@Allowimgcode TinyInt,
	@Allowlinkcode TinyInt,
	@Allowblog TinyInt,
	@Recyclebin TinyInt,
	@Allowdownload TinyInt,
	@Isjammer TinyInt,
	@Attachextensions VarChar(255),
	@Applytoplist TinyInt,
	@Applyrestype TinyInt,
	@Typesitem NText,
	@Postbyrestype TinyInt,
	@Viewbyrestype TinyInt,
	@Restypeprefix TinyInt,
	@Moderators NText,
	@Moderatorsperm VarChar(255),
	@Permuserlist NText,
	@Autoclose Int,
	@Allowpoststypes TinyInt,
	@Attachposttexts TinyInt,
    @Thumbnailicon TinyInt,
    @Thumbnailrounded TinyInt,
    @Thumbnailwidth Int,
    @Thumbnailheight Int,
	@Createtime DateTime,
	@Lastuptime DateTime,
	@Cid Int

AS
SET IDENTITY_INSERT [wapkang_commonclass] ON;
INSERT INTO [wapkang_commonclass]([Cid],[Category],[State],[Layercount],[Name],[Description],[Logo],[Icon],[Orderid],[Password],[Parentid],[Parentidlist],[Subidlist],[Subcount],[Viewcount],[Currentposts],[Postscount],[Commentcount],[Currentcomment],[Seokeywords],[Seodescription],[Templateid],[Postcredits],[Replycredits],[Postattachcredits],[Getattachcredits],[Viewperm],[Postperm],[Replyperm],[Getattachperm],[Postattachperm],[Replyauditperm],[Postauditperm],[Feelitem],[Contentstype],[Displayalign],[Displayviews],[Displayorder],[Displaytime],[Displayimage],[Displaysubcls],[Subcolcount],[Downloadcomment],[Downloadtrend],[Viewstrend],[Creditstactics],[Allowtrade],[Allowfeel],[Allowtag],[Allowrss],[Allowhtml],[Allowubbcode],[Allowimgcode],[Allowlinkcode],[Allowblog],[Recyclebin],[Allowdownload],[Isjammer],[Attachextensions],[Applytoplist],[Applyrestype],[Typesitem],[Postbyrestype],[Viewbyrestype],[Restypeprefix],[Moderators],[Moderatorsperm],[Permuserlist],[Autoclose],[Allowpoststypes],[Attachposttexts],[Thumbnailicon],[Thumbnailrounded],[Thumbnailwidth],[Thumbnailheight],[Createtime],[Lastuptime])VALUES(@Cid,@Category,@State,@Layercount,@Name,@Description,@Logo,@Icon,@Orderid,@Password,@Parentid,@Parentidlist,@Subidlist,@Subcount,@Viewcount,@Currentposts,@Postscount,@Commentcount,@Currentcomment,@Seokeywords,@Seodescription,@Templateid,@Postcredits,@Replycredits,@Postattachcredits,@Getattachcredits,@Viewperm,@Postperm,@Replyperm,@Getattachperm,@Postattachperm,@Replyauditperm,@Postauditperm,@Feelitem,@Contentstype,@Displayalign,@Displayviews,@Displayorder,@Displaytime,@Displayimage,@Displaysubcls,@Subcolcount,@Downloadcomment,@Downloadtrend,@Viewstrend,@Creditstactics,@Allowtrade,@Allowfeel,@Allowtag,@Allowrss,@Allowhtml,@Allowubbcode,@Allowimgcode,@Allowlinkcode,@Allowblog,@Recyclebin,@Allowdownload,@Isjammer,@Attachextensions,@Applytoplist,@Applyrestype,@Typesitem,@Postbyrestype,@Viewbyrestype,@Restypeprefix,@Moderators,@Moderatorsperm,@Permuserlist,@Autoclose,@Allowpoststypes,@Attachposttexts,@Thumbnailicon,@Thumbnailrounded,@Thumbnailwidth,@Thumbnailheight,@Createtime,@Lastuptime)
SET IDENTITY_INSERT [wapkang_commonclass] OFF;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_functionclassDelete]
	@cidList NVarChar(2000),
	@category int
AS
	IF (@category=1)
	BEGIN
		DELETE FROM [wapkang_content] WHERE [classid] IN (SELECT [item] FROM [getMysplit](@cidList, ','))
		DECLARE @tempseqid int
		DECLARE cu_wapkang_contenttablelist CURSOR FOR SELECT [seqid] FROM [wapkang_contenttable]
		OPEN cu_wapkang_contenttablelist
		FETCH NEXT FROM cu_wapkang_contenttablelist into @tempseqid
		WHILE @@FETCH_STATUS = 0
		BEGIN
			EXEC('DELETE FROM [wapkang_content'+ @tempseqid +'] WHERE [cid] IN('+ @cidList +')')
			FETCH NEXT FROM cu_wapkang_contenttablelist into @tempseqid
		END
		CLOSE cu_wapkang_contenttablelist
		DEALLOCATE cu_wapkang_contenttablelist
		DELETE FROM [wapkang_contentfields] WHERE NOT EXISTS(SELECT [seqid] FROM [wapkang_content] WHERE [wapkang_contentfields].[sid]=[wapkang_content].[seqid])
		--清理TAG信息
		DECLARE @temptagid int,@tempCont int
		DECLARE cu_wapkang_contenttagslist CURSOR FOR SELECT [tagid],count(tagid) as tagcount FROM [wapkang_contenttags] WHERE NOT EXISTS(SELECT [seqid] FROM [wapkang_content] WHERE [wapkang_contenttags].[sid]=[wapkang_content].[seqid]) GROUP BY [wapkang_contenttags].[tagid]
		OPEN cu_wapkang_contenttagslist
		FETCH NEXT FROM cu_wapkang_contenttagslist into @temptagid,@tempCont
		WHILE @@FETCH_STATUS = 0
		BEGIN
			UPDATE [wapkang_tags] SET [Count]=[Count]-@tempCont,[Articlecount]=[Articlecount]-@tempCont WHERE [tagid]=@temptagid
			DELETE FROM [wapkang_contenttags] WHERE [tagid]=@temptagid
			FETCH NEXT FROM cu_wapkang_contenttagslist into @temptagid,@tempCont
		END
		CLOSE cu_wapkang_contenttagslist
		DEALLOCATE cu_wapkang_contenttagslist
        DELETE FROM [wapkang_tags] WHERE [Count] = 0
		--清理资源购买记录
		DELETE FROM [wapkang_userpaylog] WHERE [category]=1 AND NOT EXISTS(SELECT [seqid] FROM [wapkang_content] WHERE [wapkang_userpaylog].[resid]=[wapkang_content].[seqid])
		--清理附件记录
		DELETE FROM [wapkang_attachments] WHERE [category]=1 AND [cid] IN(SELECT [item] FROM [getMysplit](@cidList, ','))
		--清理附件购买记录 
		DELETE FROM [wapkang_userpaylog] WHERE [category]=7 AND NOT EXISTS(SELECT [fid] FROM [wapkang_attachments] WHERE [category]=1 AND [wapkang_userpaylog].[resid]=[wapkang_attachments].[fid])
		--删除栏目资源分类/专题
		DELETE FROM [wapkang_contenttypes] WHERE [cid] IN(SELECT [item] FROM [getMysplit](@cidList, ','))
		--删除栏目信息
		DELETE FROM [wapkang_commonclass] WHERE [cid] IN(SELECT [item] FROM [getMysplit](@cidList, ','))
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_functionclassMerge]
	@category TinyInt,
	@currentid int,
	@targetid int
AS
	IF (@category=1)
	BEGIN
		DECLARE @tempcurrentposts int,@tempcurrentcomment int,@tempsubcount int
		SELECT @tempcurrentposts = ISNULL([currentposts],0),@tempcurrentcomment = ISNULL([currentcomment],0),@tempsubcount = ISNULL([subcount],0) FROM [wapkang_commonclass] WHERE [cid] = @currentid
		--转移当前栏目资源数 评论数到目标栏目
		UPDATE [wapkang_commonclass] SET [currentposts]=[currentposts]+@tempcurrentposts,[currentcomment]=[currentcomment]+@tempcurrentcomment WHERE [cid] = @targetid
		--更新分表栏目编号
		DECLARE @tempseqid int
		DECLARE cu_wapkang_contenttablelist CURSOR FOR SELECT [seqid] FROM [wapkang_contenttable]
		OPEN cu_wapkang_contenttablelist
		FETCH NEXT FROM cu_wapkang_contenttablelist into @tempseqid
		WHILE @@FETCH_STATUS = 0
		BEGIN
			EXEC('UPDATE [wapkang_content'+ @tempseqid +'] SET [cid]='+ @targetid+' WHERE [cid] ='+ @currentid)
			FETCH NEXT FROM cu_wapkang_contenttablelist into @tempseqid
		END
		CLOSE cu_wapkang_contenttablelist
		DEALLOCATE cu_wapkang_contenttablelist
		--更新资源栏目编号
		UPDATE [wapkang_content] SET [classid]=@targetid WHERE [classid] = @currentid
		--删除当前栏目资源分类信息(当前栏目下级分类不受影响）
		DELETE FROM [wapkang_contenttypes] WHERE [category]=@category AND [cid] = @currentid
		--清除当前资源资源分类编号
		UPDATE [wapkang_content] SET [typeid]=0 WHERE [typeid]>0 AND NOT EXISTS(SELECT [seqid] FROM [wapkang_contenttypes] WHERE [wapkang_content].[typeid]=[wapkang_contenttypes].[seqid])
		--更新附件栏目编号
		UPDATE [wapkang_attachments] SET [cid]=@targetid WHERE [category]=1 AND [cid] = @currentid
		--更新栏目的上级编号
		UPDATE [wapkang_commonclass] SET [parentid]=@targetid WHERE [parentid] = @currentid
		--删除当前栏目信息
		DELETE FROM [wapkang_commonclass] WHERE [cid] = @currentid
		--重设目标栏目下级栏目排序信息
		IF (@tempsubcount>0)
		BEGIN
			DECLARE @orderid int
			SET @orderid=1
			DECLARE cu_wapkang_commonclasslist CURSOR FOR SELECT [cid] FROM [wapkang_commonclass] WHERE [parentid]=@targetid ORDER BY [orderid] ASC
			OPEN cu_wapkang_commonclasslist
			FETCH NEXT FROM cu_wapkang_commonclasslist into @tempseqid
			WHILE @@FETCH_STATUS = 0
			BEGIN
				UPDATE [wapkang_commonclass] SET [orderid]=@orderid WHERE [cid] = @tempseqid
				SET @orderid=@orderid+2	
				FETCH NEXT FROM cu_wapkang_commonclasslist into @tempseqid
			END
			CLOSE cu_wapkang_commonclasslist
			DEALLOCATE cu_wapkang_commonclasslist
		END
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_functionclassUpdate]
	@Category TinyInt,
	@State TinyInt,
	@Layercount TinyInt,
	@Name NChar(60),
	@Description NText,
	@Logo VarChar(100),
	@Icon VarChar(100),
	@Orderid Int,
	@Password VarChar(16),
	@Parentid Int,
	@Parentidlist NText,
	@Subidlist NText,
	@Subcount Int,
	@Viewcount Int,
	@Currentposts Int,
	@Postscount Int,
	@Commentcount Int,
	@Currentcomment Int,
	@Seokeywords VarChar(500),
	@Seodescription VarChar(500),
	@Templateid Int,
	@Postcredits VarChar(255),
	@Replycredits VarChar(255),
	@Postattachcredits VarChar(255),
	@Getattachcredits VarChar(255),
	@Viewperm VarChar(255),
	@Postperm VarChar(255),
	@Replyperm VarChar(255),
	@Getattachperm VarChar(255),
	@Postattachperm VarChar(255),
	@Replyauditperm VarChar(255),
	@Postauditperm VarChar(255),
	@Feelitem VarChar(255),
	@Contentstype TinyInt,
	@Displayalign Char(10),
	@Displayviews TinyInt,
	@Displayorder TinyInt,
	@Displaytime TinyInt,
	@Displayimage TinyInt,
	@Displaysubcls TinyInt,
	@Subcolcount TinyInt,
	@Downloadcomment TinyInt,
	@Downloadtrend TinyInt,
	@Viewstrend TinyInt,
	@Creditstactics TinyInt,
	@Allowtrade TinyInt,
	@Allowfeel TinyInt,
	@Allowtag TinyInt,
	@Allowrss TinyInt,
	@Allowhtml TinyInt,
	@Allowubbcode TinyInt,
	@Allowimgcode TinyInt,
	@Allowlinkcode TinyInt,
	@Allowblog TinyInt,
	@Recyclebin TinyInt,
	@Allowdownload TinyInt,
	@Isjammer TinyInt,
	@Attachextensions VarChar(255),
	@Applytoplist TinyInt,
	@Applyrestype TinyInt,
	@Typesitem NText,
	@Postbyrestype TinyInt,
	@Viewbyrestype TinyInt,
	@Restypeprefix TinyInt,
	@Moderators NText,
	@Moderatorsperm VarChar(255),
	@Permuserlist NText,
	@Autoclose Int,
	@Allowpoststypes TinyInt,
	@Attachposttexts TinyInt,
    @Thumbnailicon TinyInt,
    @Thumbnailrounded TinyInt,
    @Thumbnailwidth Int,
    @Thumbnailheight Int,
	@Createtime DateTime,
	@Lastuptime DateTime,
	@Cid int
AS
     UPDATE [wapkang_commonclass] SET [Category]=@Category,[State]=@State,[Layercount]=@Layercount,[Name]=@Name,[Description]=@Description,[Logo]=@Logo,[Icon]=@Icon,[Orderid]=@Orderid,[Password]=@Password,[Parentid]=@Parentid,[Parentidlist]=@Parentidlist,[Subidlist]=@Subidlist,[Subcount]=@Subcount,[Viewcount]=@Viewcount,[Postscount]=@Postscount,[Currentposts]=@Currentposts,[Commentcount]=@Commentcount,[Currentcomment]=@Currentcomment,[Seokeywords]=@Seokeywords,[Seodescription]=@Seodescription,[Templateid]=@Templateid,[Postcredits]=@Postcredits,[Replycredits]=@Replycredits,[Postattachcredits]=@Postattachcredits,[Getattachcredits]=@Getattachcredits,[Viewperm]=@Viewperm,[Postperm]=@Postperm,[Replyperm]=@Replyperm,[Getattachperm]=@Getattachperm,[Postattachperm]=@Postattachperm,[Replyauditperm]=@Replyauditperm,[Postauditperm]=@Postauditperm,[Feelitem]=@Feelitem,[Contentstype]=@Contentstype,[Displayalign]=@Displayalign,[Displayviews]=@Displayviews,[Displayorder]=@Displayorder,[Displaytime]=@Displaytime,[Displayimage]=@Displayimage,[Displaysubcls]=@Displaysubcls,[Subcolcount]=@Subcolcount,[Downloadcomment]=@Downloadcomment,[Downloadtrend]=@Downloadtrend,[Viewstrend]=@Viewstrend,[Creditstactics]=@Creditstactics,[Allowtrade]=@Allowtrade,[Allowfeel]=@Allowfeel,[Allowtag]=@Allowtag,[Allowrss]=@Allowrss,[Allowhtml]=@Allowhtml,[Allowubbcode]=@Allowubbcode,[Allowimgcode]=@Allowimgcode,[Allowlinkcode]=@Allowlinkcode,[Allowblog]=@Allowblog,[Recyclebin]=@Recyclebin,[Allowdownload]=@Allowdownload,[Isjammer]=@Isjammer,[Attachextensions]=@Attachextensions,[Applytoplist]=@Applytoplist,[Applyrestype]=@Applyrestype,[Typesitem]=@Typesitem,[Postbyrestype]=@Postbyrestype,[Viewbyrestype]=@Viewbyrestype,[Restypeprefix]=@Restypeprefix,[Moderators]=@Moderators,[Moderatorsperm]=@Moderatorsperm,[Permuserlist]=@Permuserlist,[Autoclose]=@Autoclose,[Allowpoststypes]=@Allowpoststypes,[Attachposttexts]=@Attachposttexts,[Thumbnailicon]=@Thumbnailicon,[Thumbnailrounded]=@Thumbnailrounded,[Thumbnailwidth]=@Thumbnailwidth,[Thumbnailheight]=@Thumbnailheight,[Createtime]=@Createtime,[Lastuptime]=@Lastuptime WHERE [cid]=@Cid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_invitecodeClearexpire]
AS
	DELETE [wapkang_invitation] WHERE [typeid]=3 AND [createdtime]<>[expiretime] AND ([expiretime]-GETDATE())<=0;
	DELETE [wapkang_invitation] WHERE [isdeleted]=1 AND [createdtime]<(GETDATE()-1)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_invitecodeCreateInfo]
	@code char(8),
	@creatorid int,
	@creator nchar(20),
	@createtime smalldatetime,
	@expiretime smalldatetime,
	@maxcount int,
	@typeid int
AS
	INSERT INTO [wapkang_invitation]([code],[creatorid],[creator],[createdtime],[expiretime],[maxcount],[typeid])VALUES(@code,@creatorid,@creator,@createtime,@expiretime,@maxcount,@typeid);
	SELECT SCOPE_IDENTITY()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_invitecodeGetinfo]
	@searchtype nchar(10),
	@searchkey nchar(20)
AS
	BEGIN
	IF @searchtype='uid'
   		SELECT TOP 1 [seqid],[code],[typeid],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM [wapkang_invitation] WHERE [creatorid]=@searchkey AND [typeid]=2 AND [isdeleted]=0 ORDER BY [seqid] DESC
	ELSE IF @searchtype='id'
   		SELECT [seqid],[code],[typeid],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM [wapkang_invitation] WHERE [seqid]=@searchkey AND [isdeleted]=0
	ELSE IF @searchtype='code'
   		SELECT [seqid],[code],[typeid],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM [wapkang_invitation] WHERE [code]=@searchkey AND [isdeleted]=0
	ELSE
   		SELECT (1)
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_invitecodegetListInfo]
	@creatorid int,
	@pageindex int
AS
	DECLARE @startRow int,
		@endRow int
	SET @startRow = (@pageIndex - 1) * 10
	IF @pageindex = 1
		EXEC('SELECT TOP 10 [seqid],[code],[typeid],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM [wapkang_invitation] WHERE [creatorid]='+@creatorid+' AND [typeid]=3 AND [isdeleted]=0 ORDER BY [seqid] DESC')
	ELSE
		EXEC('SELECT TOP 10 [seqid],[code],[typeid],[createdtime],[creator],[creatorid],[expiretime],[maxcount],[successcount] FROM [wapkang_invitation] WHERE [creatorid]='+@creatorid+' AND [typeid]=3 AND [isdeleted]=0 AND [seqid]<(SELECT MIN(seqid) FROM ( SELECT TOP '+@startRow+' [seqid] FROM [wapkang_invitation] WHERE [creatorid]='+@creatorid+' AND [typeid]=3 AND [isdeleted]=0 ORDER BY [seqid] DESC) AS TEMPS) ORDER BY [seqid] DESC')
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_invitecodeisexist]
	@code nchar(8)
AS
	SELECT COUNT(1) FROM [wapkang_invitation] WHERE [code]=@code AND [isdeleted] =0
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_ipdbcreateinfo]
	@currentuserIp Char(15),
	@LinkId Int,
	@lasttimer Int,
	@visitdate Char(10)
AS
	IF NOT EXISTS(SELECT TOP 1 [seqid] FROM [wapkang_commonipdb] WHERE [ip]=@currentuserIp AND [createdate]>=@visitdate)
	BEGIN
		IF NOT EXISTS(SELECT TOP 1 [visitdate] FROM [wapkang_commonvisitlog] WHERE [visitdate]=@visitdate)
			BEGIN
				INSERT INTO [wapkang_commonvisitlog]([visitdate])VALUES(@visitdate)
			END
		ELSE
			BEGIN
				UPDATE [wapkang_commonvisitlog] SET [hitscount]=[hitscount]+1,[ipcount]=[ipcount]+1 WHERE [visitdate]=@visitdate
			END
		INSERT INTO [wapkang_commonipdb]([ip],[expandid],[lasttimer])VALUES(@currentuserIp,@LinkId,@lasttimer)
		SELECT SCOPE_IDENTITY()
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_ipdbupdateinfo]
	@Currentipid int,
	@LastTimer int,
	@Violation int,
	@Expandstate Int,
	@visitdate Char(10)
AS
	IF @Expandstate<>-1
		UPDATE [wapkang_commonipdb] SET [lasttimer]=@LastTimer,[violation]=@Violation,[hits]=[hits]+1,[lastdate]=GETDATE(),[expandstate]=@Expandstate WHERE [seqid]=@Currentipid
	ELSE
		UPDATE [wapkang_commonipdb] SET [lasttimer]=@LastTimer,[violation]=@Violation,[hits]=[hits]+1,[lastdate]=GETDATE() WHERE [seqid]=@Currentipid	
	IF NOT EXISTS(SELECT TOP 1 [visitdate] FROM [wapkang_commonvisitlog] WHERE [visitdate]=@visitdate)
		INSERT INTO [wapkang_commonvisitlog]([visitdate])VALUES(@visitdate)
	ELSE
		UPDATE [wapkang_commonvisitlog] SET [hitscount]=[hitscount]+1 WHERE [visitdate]=@visitdate
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_ipdbupdateinfoByLink]
	@CurrentIpid int,
	@Expandid int,
	@LastTimer int,
	@Expandstate Int,
	@Visitdate Char(10)
AS
	IF @Expandstate<>-1
		UPDATE [wapkang_commonipdb] SET [lasttimer]=@LastTimer,[Expandid]=@Expandid,[hits]=[hits]+1,[lastdate]=GETDATE(),[expandstate]=@Expandstate WHERE [seqid]=@CurrentIpid
	ELSE
		UPDATE [wapkang_commonipdb] SET [lasttimer]=@LastTimer,[Expandid]=@Expandid,[hits]=[hits]+1,[lastdate]=GETDATE() WHERE [seqid]=@CurrentIpid	
	IF NOT EXISTS(SELECT TOP 1 [visitdate] FROM [wapkang_commonvisitlog] WHERE [visitdate]=@Visitdate)
		INSERT INTO [wapkang_commonvisitlog]([visitdate])VALUES(@Visitdate)
	ELSE
		UPDATE [wapkang_commonvisitlog] SET [hitscount]=[hitscount]+1 WHERE [visitdate]=@Visitdate
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_IpdbupHitsCount]
	@Seqid Int,
    @Hits Int,
    @Lastdate datetime,
	@visitdate  Char(10)
AS
	DECLARE @LastHits INT
	SELECT TOP 1 @LastHits=[Hits] FROM [wapkang_commonipdb] WHERE [Seqid]=@Seqid
	IF(@LastHits IS Not Null)
	BEGIN
		SET @LastHits = (@Hits-@LastHits)
		UPDATE [wapkang_commonipdb] SET [Hits]=@Hits,[lastdate]=@Lastdate WHERE [seqid]=@Seqid	
		IF NOT EXISTS(SELECT TOP 1 [visitdate] FROM [wapkang_commonvisitlog] WHERE [visitdate]=@visitdate)
			INSERT INTO [wapkang_commonvisitlog]([visitdate],[hitscount])VALUES(@visitdate,@LastHits)
		ELSE
			UPDATE [wapkang_commonvisitlog] SET [hitscount]=[hitscount]+@LastHits WHERE [visitdate]=@visitdate
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_noticecreateinfo]
	@userid int,
	@type int,
	@new  int,
	@posterid int,
	@poster nchar(20),
	@note ntext,
	@createtime datetime,
	@fromid int
AS
DECLARE @noticesid int
	INSERT INTO [wapkang_notices] ([userid], [type], [new], [posterid], [poster], [note], [createtime],[fromid]) VALUES (@userid, @type, @new, @posterid, @poster, @note, @createtime,@fromid)
	SET @noticesid=SCOPE_IDENTITY()
	IF @@ERROR=0
	BEGIN
        DECLARE @onlineid AS int
        SELECT @onlineid = ISNULL([seqid],0) FROM [wapkang_online] WHERE [userid] = @userid
		IF @onlineid>0
			UPDATE [wapkang_online] SET [newnotices]=(SELECT COUNT(seqid) FROM [wapkang_notices] WHERE [userid] = @userid AND [new] = 1) WHERE [seqid]=@onlineid
	END
	SELECT @noticesid as 'seqid'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_noticegetcount]
	@userid int,
	@type int = -1,
	@state int=-1
AS

	IF @type = -1
		BEGIN
			IF @state = -1
				BEGIN
					SELECT COUNT(seqid) AS [ncount] FROM [wapkang_notices] WHERE [userid]=@userid
				END
			ELSE
				BEGIN
					SELECT COUNT(seqid) AS [ncount] FROM [wapkang_notices] WHERE [userid]=@userid AND [new]=@state
				END
		END
	ELSE
		BEGIN
			IF @state = -1
				BEGIN
					SELECT COUNT(seqid) AS [ncount] FROM [wapkang_notices] WHERE [userid]=@userid AND [type]=@type
				END
			ELSE
				BEGIN
					SELECT COUNT(seqid) AS [ncount] FROM [wapkang_notices] WHERE [userid]=@userid AND [new]=@state AND [type]=@type
				END
		END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olcreateinfo]
	@onlinestate TinyInt,
	@Userid Int,
	@Userip VarChar(15),
	@Username NChar(50),
	@Nickname NChar(50),
	@Password Char(32),
	@Gender TinyInt,
	@Province Int,
	@City Int,
	@District Int,
	@Community Int,
	@Groupid SmallInt,
	@Groupimg VarChar(80),
	@Adminid SmallInt,
	@Invisible TinyInt,
	@LastAction SmallInt,
	@Action SmallInt,
	@Actionuptime DateTime,
	@Boardid Int,
	@BoardName NChar(50),
	@Titleid Int,
	@Title NChar(60),
	@Lastposttime DateTime,
	@Lastpostmsgtime DateTime,
	@Lastsearchtime DateTime,
	@Lastupdatetime DateTime,
	@Newmessage SmallInt,
	@Newnotices SmallInt,
	@Pagesize SmallInt,
	@Wordsize SmallInt,
	@Listsize SmallInt,
	@Verifycode VarChar(10),
	@Postcode VarChar(10),
	@SessionId NChar(32),
	@Mobilestate TinyInt,
	@Templateid SmallInt,
	@Isavatar TinyInt,
	@Extcredits Int,
	@Loginsafety TinyInt,
	@Paysafety TinyInt,
	@Lastverifyip nvarchar(15),
	@Shownews TinyInt,
	@Sceneimg nvarchar(100),
	@Setmagicid Int,
	@Phonemodel Int
AS
	DECLARE @onlineid int
	INSERT INTO [wapkang_online]([Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid])VALUES(@Userid,@Userip,@Username,@Nickname,@Password,@Gender,@Province,@City,@District,@Community,@Groupid,@Groupimg,@Adminid,@Invisible,@LastAction,@Action,@Actionuptime,@Boardid,@BoardName,@Titleid,@Title,@Lastposttime,@Lastpostmsgtime,@Lastsearchtime,@Lastupdatetime,@Newmessage,@Newnotices,@Pagesize,@Wordsize,@Listsize,@Verifycode,@Postcode,@SessionId,@Mobilestate,@Templateid,@Isavatar,@Extcredits,@Loginsafety,@Paysafety,@Lastverifyip,@Shownews,@Sceneimg,@Phonemodel,@Setmagicid);
	SET @onlineid=SCOPE_IDENTITY()
	IF (@userid>0 AND @@ERROR=0)
	BEGIN
		IF (@onlinestate = 0)
			UPDATE [wapkang_user] SET [onlinestate]=1,[Lastactivity]=@Actionuptime WHERE [seqid]=@userid
		IF (@Newnotices <= 0)
			UPDATE [wapkang_online] SET [newnotices]=(SELECT COUNT(seqid) FROM [wapkang_notices] WHERE [userid] = @userid AND [new] = 1) WHERE [seqid]=@onlineid
	END
	SELECT @onlineid as 'seqid'
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_oldeleteusers]
	@olidlist varchar(8000),
	@uidlist varchar(8000)
AS
	IF Len(@olidlist)<500
		EXEC('DELETE FROM [wapkang_online] WHERE [seqid] IN('+@olidlist+')')
	Else
		DELETE FROM [wapkang_online] WHERE CHARINDEX(','+RTRIM([seqid])+',', ','+@olidlist+',') > 0
	IF Len(@uidlist)>0
	BEGIN
		IF Len(@uidlist)<500
			EXEC('UPDATE [wapkang_user] SET [Onlinestate]=0 WHERE [seqid] IN('+@uidlist+')')
		Else
			UPDATE [wapkang_user] SET [Onlinestate]=0 WHERE CHARINDEX(','+RTRIM([seqid])+',', ','+@uidlist+',') > 0
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[wapkang_olgetgroupicontable]
AS
	SELECT [groupid],[displayorder],[title],[img] FROM [wapkang_onlinelist] WHERE [img]<>'' ORDER BY [displayorder]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olgetinfobysessionid]
	@sessionid char(32)
AS
	SELECT TOP 1 [seqid],[Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid] FROM [wapkang_online] WHERE [sessionid]=@sessionid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olgetinfobyuidandip]
	@userid int,
	@userip varchar(15)
AS
	SELECT TOP 1 [seqid],[Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid] FROM [wapkang_online] WHERE [userid]=@userid AND [userip]=@userip
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olgetinfobyuidandpassword]
	@userid int,
	@password char(32)
AS
	SELECT TOP 1 [seqid],[Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid] FROM [wapkang_online] WHERE [userid]=@userid AND [password]=@password
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[wapkang_olgetlistbyfid]
	@boardid int,
	@pagesize int,
	@pageindex int
AS
	IF @pageindex = 1
		BEGIN
			EXEC('SELECT TOP '+@pagesize+' [seqid],[Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid]  FROM [wapkang_online] 
			WHERE [boardid]='+@boardid+' ORDER BY [Actionuptime] DESC')
		END
	ELSE
		BEGIN
			DECLARE @pagetop int
			SET @pagetop = (@pageindex-1)*@pagesize
			EXEC('SELECT TOP '+@pagesize+' [seqid],[Userid],[Userip],[Username],[Nickname],[Password],[Gender],[Province],[City],[District],[Community],[Groupid],[Groupimg],[Adminid],[Invisible],[LastAction],[Action],[Actionuptime],[Boardid],[BoardName],[Titleid],[Title],[Lastposttime],[Lastpostmsgtime],[Lastsearchtime],[Lastupdatetime],[Newmessage],[Newnotices],[Pagesize],[Wordsize],[Listsize],[Verifycode],[Postcode],[SessionId],[Mobilestate],[Templateid],[Isavatar],[Extcredits],[Loginsafety],[paysafety],[lastverifyip],[Shownews],[Sceneimg],[Phonemodel],[Setmagicid]  FROM [wapkang_online]
			WHERE  [boardid]='+@boardid+' AND [Actionuptime] < (SELECT MIN([Actionuptime]) FROM (SELECT TOP '+@pagetop+' [Actionuptime] FROM [wapkang_online] WHERE [boardid]='+@boardid+' ORDER BY [Actionuptime] DESC) AS tblTmp) ORDER BY [Actionuptime] DESC')
		END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olupdatemessageinfo]
	@action NCHAR(30),
	@seqid INT,
	@count SMALLINT
AS
	BEGIN
	IF(@action='newpms')
		UPDATE [wapkang_online] SET [newmessage]=@count WHERE [seqid]=@seqid
	ELSE IF(@action='newnotice')
		IF(@count = 0)
			UPDATE [wapkang_online] SET [newnotices]=(SELECT COUNT(seqid) FROM [wapkang_notices] WHERE [userid] = (SELECT [userid] FROM [wapkang_online] WHERE [seqid]=@seqid)  AND [new] = 1) WHERE [seqid]=@seqid
		ELSE
			UPDATE [wapkang_online] SET [newnotices]=[newnotices]+@count WHERE [seqid]=@seqid
	ELSE
		SELECT 1
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olupdateuseraction]
	@action smallint,
	@actionuptime datetime,
	@boardid int,
	@boardname nvarchar(100),
	@titleid int,
	@title nvarchar(60),
	@uplastaction TinyInt,
	@seqid int
AS
	IF (@titleid>0)
		BEGIN
			IF (@uplastaction=1)
				UPDATE [wapkang_online] SET [lastaction]=[action],[action]=@action,[actionuptime]=@actionuptime,[boardid]=@boardid,[boardname]=@boardname,[titleid]=@titleid,[title]=@title WHERE [seqid]=@seqid
			ELSE
				UPDATE [wapkang_online] SET [action]=@action,[actionuptime]=@actionuptime,[boardid]=@boardid,[boardname]=@boardname,[titleid]=@titleid,[title]=@title WHERE [seqid]=@seqid
		END
	ELSE
		BEGIN
			IF (@uplastaction=1)
				UPDATE [wapkang_online] SET [lastaction]=[action],[action]=@action,[actionuptime]=@actionuptime,[boardid]=@boardid,[boardname]=@boardname WHERE [seqid]=@seqid
			ELSE
				UPDATE [wapkang_online] SET [action]=@action,[actionuptime]=@actionuptime,[boardid]=@boardid,[boardname]=@boardname WHERE [seqid]=@seqid
		END

GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_olupdeteinfo]
	@Userid Int,
	@Userip VarChar(15),
	@Username NChar(50),
	@Nickname NChar(50),
	@Password Char(32),
	@Gender TinyInt,
	@Province Int,
	@City Int,
	@District Int,
	@Community Int,
	@Groupid SmallInt,
	@Groupimg VarChar(80),
	@Adminid SmallInt,
	@Invisible TinyInt,
	@LastAction SmallInt,
	@Action SmallInt,
	@Actionuptime DateTime,
	@Boardid Int,
	@BoardName NChar(50),
	@Titleid Int,
	@Title NChar(60),
	@Lastposttime DateTime,
	@Lastpostmsgtime DateTime,
	@Lastsearchtime DateTime,
	@Lastupdatetime DateTime,
	@Newmessage SmallInt,
	@Newnotices SmallInt,
	@Pagesize SmallInt,
	@Wordsize SmallInt,
	@Listsize SmallInt,
	@Verifycode VarChar(10),
	@Postcode VarChar(10),
	@SessionId NChar(32),
	@Mobilestate TinyInt,
	@Templateid SmallInt,
	@Isavatar TinyInt,
	@Extcredits Int,
	@Loginsafety TinyInt,
	@Paysafety TinyInt,
	@Lastverifyip nvarchar(15),
	@Shownews TinyInt,
	@Sceneimg nvarchar(100),
	@Phonemodel Int,
	@Setmagicid Int,
	@Seqid Int
AS
	UPDATE [wapkang_online] SET [Userid]=@Userid,[Userip]=@Userip,[Username]=@Username,[Nickname]=@Nickname,[Password]=@Password,[Gender]=@Gender,[Province]=@Province,[City]=@City,[District]=@District,[Community]=@Community,[Groupid]=@Groupid,[Groupimg]=@Groupimg,[Adminid]=@Adminid,[Invisible]=@Invisible,[LastAction]=@LastAction,[Action]=@Action,[Actionuptime]=@Actionuptime,[Boardid]=@Boardid,[BoardName]=@BoardName,[Titleid]=@Titleid,[Title]=@Title,[Lastposttime]=@Lastposttime,[Lastpostmsgtime]=@Lastpostmsgtime,[Lastsearchtime]=@Lastsearchtime,[Lastupdatetime]=@Lastupdatetime,[Newmessage]=@Newmessage,[Newnotices]=@Newnotices,[Pagesize]=@Pagesize,[Wordsize]=@Wordsize,[Listsize]=@Listsize,[Verifycode]=@Verifycode,[Postcode]=@Postcode,[SessionId]=@SessionId,[Mobilestate]=@Mobilestate,[Templateid]=@Templateid,[Isavatar]=@Isavatar,[Extcredits]=@Extcredits,[Loginsafety]=@Loginsafety,[Paysafety]=@Paysafety,[Lastverifyip]=@Lastverifyip,[Shownews]=@Shownews,[Sceneimg]=@Sceneimg,[phonemodel]=@Phonemodel,[Setmagicid]=@Setmagicid WHERE [Seqid] = @Seqid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_paymentlogcreateinfo]
	@Userid Int,
	@Username Char(50),
	@Orderid Char(50),
	@Creditsid TinyInt,
	@Paymoney Int,
	@Payamount Float,
	@Cardno Char(50),
	@Cardpwd Char(50),
	@Cardtype Char(20),
	@State TinyInt,
	@Remark NChar(200),
	@Createtime DateTime,
	@Callbacktime DateTime
AS
	INSERT INTO [wapkang_payment]([Userid],[Username],[Orderid],[Creditsid],[Paymoney],[Payamount],[Cardno],[Cardpwd],[Cardtype],[State],[Remark],[Createtime],[Callbacktime])VALUES(@Userid,@Username,@Orderid,@Creditsid,@Paymoney,@Payamount,@Cardno,@Cardpwd,@Cardtype,@State,@Remark,@Createtime,@Callbacktime)
	SELECT SCOPE_IDENTITY()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserRandomUidCreateInfo]
	@Mode int,
    @startId Int,
    @endId Int,
    @IdList NVarChar(4000)
AS
	DELETE FROM [wapkang_userid] WHERE EXISTS (SELECT [seqid] FROM [wapkang_user] where [wapkang_userid].[uid]=[wapkang_user].[seqid])
	IF @Mode=1
		BEGIN
			DECLARE @I INT
			SET @I=@startId
			WHILE @I<=@endId
			BEGIN
			  IF NOT EXISTS(SELECT [seqid] FROM [wapkang_user] WHERE [seqid] = @I) AND NOT EXISTS(SELECT [uid] FROM [wapkang_userid] WHERE [uid] = @I) AND NOT EXISTS(SELECT [item] FROM [getMysplit](@IdList, ',') AS [splitId] WHERE [splitId].[item]=@I)
				INSERT INTO [wapkang_userid]([uid]) VALUES(@I)
			  SET @I=@I+1
			END
		END
	ELSE
		BEGIN
			DECLARE @tempid int
			DECLARE cu_wapkang_idlist CURSOR FOR SELECT [item] FROM [getMysplit](@IdList, ',') AS [splitId]
			OPEN cu_wapkang_idlist
			FETCH NEXT FROM cu_wapkang_idlist into @tempid
			WHILE @@FETCH_STATUS = 0
			BEGIN
				IF @tempid>0 AND NOT EXISTS(SELECT [seqid] FROM [wapkang_user] WHERE [seqid] = @I) AND NOT EXISTS(SELECT [uid] FROM [wapkang_userid] WHERE [uid] = @I) 
					INSERT INTO [wapkang_userid]([uid]) VALUES(@tempid)
			   FETCH NEXT FROM cu_wapkang_idlist into @tempid
			END
			CLOSE cu_wapkang_idlist
			DEALLOCATE cu_wapkang_idlist
		END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_ScheduledupdateexecuteTime]
(
	@schedulekey VARCHAR(100),
	@servername VARCHAR(100),
	@setexecuted DATETIME,
	@updatetype TinyInt
)
AS
	IF NOT EXISTS(SELECT TOP 1 [scheduleID] FROM [wapkang_scheduletask] WHERE [schedulekey] = @schedulekey AND [servername] = @servername)
		INSERT [wapkang_scheduletask] ([schedulekey], [servername], [nextexecuted],[lastexecuted]) Values (@schedulekey, @servername, @setexecuted,@setexecuted)
	ELSE
	BEGIN
		IF @updatetype=1
			UPDATE [wapkang_scheduletask] SET [nextexecuted]=@setexecuted WHERE [schedulekey] = @schedulekey AND [servername] = @servername
		ELSE
			UPDATE [wapkang_scheduletask] SET [lastexecuted]=@setexecuted WHERE [schedulekey] = @schedulekey AND [servername] = @servername
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_Searchcreatecache]
	@keywords varchar(255),
	@condition varchar(1000),
	@postip Char(15),
	@posterid int,
	@groupid int,
	@createtime datetime,
	@expiration datetime,
	@resultcount int,
	@resultid text
AS
INSERT INTO [wapkang_search] 
	([keywords],[condition],[postip],[posterid],[groupid],[createtime],[expiration],[resultcount],[resultid])
VALUES
	(@keywords,@condition,@postip,@posterid,@groupid,@createtime,@expiration,@resultcount,@resultid)
SELECT SCOPE_IDENTITY()  AS 'searchid'
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_sqlpagination]
    @TableName varchar(500),
    @KeyField varchar(50),
    @FilterCondition varchar(4000),
    @OrderField varchar(50),
    @OrderType bit,
    @FilterColumn varchar(4000)= '*',
    @PageSize int,
    
    @PageIndex int
AS
BEGIN
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    SET @PageLowerBound = @PageSize * (@PageIndex-1) + 1
    SET @PageUpperBound = @PageSize * @PageIndex
    DECLARE @SQLString NVARCHAR(4000)
    DECLARE @AOrderString varchar(10)
    DECLARE @BOrderString varchar(10)
    DECLARE @WhereString NVARCHAR(4000)
    IF (@FilterCondition IS NOT NULL AND LEN(@FilterCondition)>0)
		SET @WhereString =' WHERE '+ @FilterCondition
	ELSE
		SET @WhereString =''
	IF (@OrderType =1)
		BEGIN
			SET @AOrderString =' DESC'
			SET @BOrderString =' ASC'
		END
	ELSE
	BEGIN
			SET @AOrderString =' ASC'
			SET @BOrderString =''
		END
	SET TRANSACTION ISOLATION LEVEL READ COMMITTED
	CREATE TABLE [#TempRecord] ([IndexID] int IDENTITY (1,1) NOT NULL,[TempSeqid] int)
	SET @SQLString='SELECT '+ @KeyField +' FROM '+ @TableName +' '+ @WhereString +' ORDER BY '+ @OrderField +' '+ @AOrderString
	Print @SQLString
	INSERT INTO [#TempRecord] ([TempSeqid]) EXEC(@SQLString)
	SET @SQLString='SELECT '+ @FilterColumn +' FROM '+ @TableName +' LEFT JOIN [#TempRecord] on [#TempRecord].[TempSeqid] = '+ @KeyField +' WHERE [#TempRecord].[IndexID] >= '+ STR(@PageLowerBound) +' AND [#TempRecord].[IndexID] <= '+ STR(@PageUpperBound) +' ORDER BY [#TempRecord].[IndexID] '+@BOrderString
	Print @SQLString
	EXEC (@SQLString)
END

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_tagcreatebyuserinterest]
@Tags nvarchar(55),
@Userid int,
@intereststatus TinyInt,
@Createtime datetime
AS
BEGIN
	EXEC [wapkang_tagcreateinfo] @Tags, @Userid, @Createtime
	UPDATE [wapkang_tags] SET [Interestcount]=[Interestcount]+1,[Count]=[Count]+1 WHERE EXISTS (SELECT [item] FROM [getMysplit](@Tags, '<') AS [newtags] WHERE [newtags].[item]=[Tagname])
	INSERT INTO [wapkang_userinterest] ([tagid], [uid]) SELECT tagid, @Userid FROM [wapkang_tags] WHERE EXISTS (SELECT [item] FROM [getMysplit](@Tags, '<') WHERE [item] = [wapkang_tags].[Tagname])
	if(@intereststatus=0)
		UPDATE [wapkang_userfields] SET [Interest]=1 WHERE [userid]=@Userid
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_tagcreateinfo]
@Tags nvarchar(55),
@Userid int,
@Createtime datetime
AS
BEGIN	
	INSERT INTO [wapkang_tags]([Tagname],[Userid],[Orderid],[Color],[Count],[Topiccount],[Forumcount],[Photocount],[Diarycount],[Goodscount],[Articlecount],[Softwarecount],[Musiccount],[Picturecount],[Videocount],[Newscount],[Ebookcount],[Interestcount],[Createtime]) SELECT [item],@Userid,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,@Createtime FROM [getMysplit](@Tags, '<') AS [newtags] WHERE NOT EXISTS (SELECT [Tagname] FROM [wapkang_tags] WHERE [Tagname]=[newtags].[item])
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_tagdeletetagsbyuserinterest]
@userid int
AS
BEGIN
   UPDATE [wapkang_tags] SET [Count]=[Count]-1,[Interestcount]=[Interestcount]-1 WHERE EXISTS (SELECT [tagid] FROM [wapkang_userinterest] WHERE [uid] = @userid AND [tagid] = [wapkang_tags].[tagid])
   DELETE FROM [wapkang_userinterest] WHERE [uid] = @userid
   DELETE FROM [wapkang_tags] WHERE [Count] = 0
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_tagdeletetagsbyuserinterestid]
@userid int,
@tagid int
AS
BEGIN
   UPDATE [wapkang_tags] SET [Count]=[Count]-1,[Interestcount]=[Interestcount]-1 WHERE [tagid]=@tagid /*EXISTS (SELECT [tagid] FROM [wapkang_userinterest] WHERE [uid] = @userid AND [tagid] = @tagid AND [tagid]=[wapkang_tags].[tagid])*/
   DELETE FROM [wapkang_userinterest] WHERE [uid] = @userid AND [tagid] = @tagid
   DELETE FROM [wapkang_tags] WHERE [Count] = 0
   SELECT COUNT(0) AS [tcount] FROM [wapkang_userinterest] WHERE [uid]=@userid
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_updatettrendstat]
	@daytime Int,
	@login Int,
	@register Int,
	@topic Int,
	@post Int,
	@poll Int,
	@bonus Int,
	@debate Int,
	@award Int,
	@speak Int,
	@paypost Int,
	@paysuccess Int,
	@respost Int,
	@rescount Int,
	@signin Int
AS
BEGIN
	IF NOT EXISTS(SELECT [daytime] FROM [wapkang_trendstat] WHERE [daytime]=@daytime)
		INSERT INTO [wapkang_trendstat] ([daytime],[login],[register],[topic],[post],[poll],[bonus],[debate],[award],[speak],[paypost],[paysuccess],[respost],[rescount],[signin]) VALUES(@daytime,@login,@register,@topic,@post,@poll,@bonus,@debate,@award,@speak,@paypost,@paysuccess,@respost,@rescount,@signin)
	ELSE
		UPDATE [wapkang_trendstat] SET [login]=[login]+@login,[register]=[register]+@register,[topic]=[topic]+@topic,[post]=[post]+@post,[poll]=[poll]+@poll,[bonus]=[bonus]+@bonus,[debate]=[debate]+@debate,[award]=[award]+@award,[speak]=[speak]+@speak,[paypost]=[paypost]+@paypost,[paysuccess]=[paysuccess]+@paysuccess,[respost]=[respost]+@respost,[rescount]=[rescount]+@rescount,[signin]=[signin]+@signin WHERE [daytime]=@daytime
END
GO

CREATE PROCEDURE [dbo].[wapkang_userchangenickname]
  @nickname NChar(50),
  @userid Int
AS
	UPDATE [wapkang_user] SET [nickname]=@nickname WHERE [seqid]=@userid
	UPDATE [wapkang_online] SET [nickname]=@nickname WHERE [userid]=@userid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_userchangeuserinfobybyte]
  @model TinyInt,
  @value TinyInt,
  @userid Int
AS
	IF(@model=1)/*头像*/
		BEGIN
		UPDATE [wapkang_userfields] SET [Isavatar]=@value WHERE [userid]=@userid
		UPDATE [wapkang_online] SET [isavatar]=@value  WHERE [userid]=@userid
		END
	ELSE IF(@model=2)/*性别*/
		BEGIN
		UPDATE [wapkang_user] SET [Gender]=@value WHERE [seqid]=@userid
		UPDATE [wapkang_online] SET [Gender]=@value  WHERE [userid]=@userid
		END
	ELSE IF(@model=3)/*血型*/
		UPDATE [wapkang_userfields] SET [Bloodtype]=@value WHERE [userid]=@userid
	ELSE IF(@model=4)/*性格*/
		UPDATE [wapkang_userfields] SET [Disposition]=@value WHERE [userid]=@userid
	ELSE IF(@model=5)/*体型*/
		UPDATE [wapkang_userfields] SET [Bodytype]=@value WHERE [userid]=@userid
	ELSE IF(@model=6)/*学识*/
		UPDATE [wapkang_userfields] SET [Education]=@value WHERE [userid]=@userid
	ELSE IF(@model=7)/*收入状况*/
		UPDATE [wapkang_userfields] SET [Income]=@value WHERE [userid]=@userid
	ELSE IF(@model=8)/*情感状态*/
		UPDATE [wapkang_userfields] SET [Emotion]=@value WHERE [userid]=@userid
	ELSE IF(@model=9)/*职业*/
		UPDATE [wapkang_userfields] SET [Job]=@value WHERE [userid]=@userid
	ELSE IF(@model=10)/*邮箱设置显示状态*/
		UPDATE [wapkang_userfields] SET [Showemail]=@value WHERE [userid]=@userid
	ELSE IF(@model=11)/*登录安全设置*/
		UPDATE [wapkang_userfields] SET [Loginsafety]=@value WHERE [userid]=@userid
	ELSE IF(@model=12)/*登录安全设置*/
		BEGIN
		UPDATE [wapkang_userfields] SET [Loginsafety]=@value WHERE [userid]=@userid
		UPDATE [wapkang_online] SET [Loginsafety]=@value  WHERE [userid]=@userid
		END
	ELSE IF(@model=13)/*加友身份验证*/
		UPDATE [wapkang_user] SET [Friendtype]=@value WHERE [seqid]=@userid
	ELSE IF(@model=14)/*短消息设置*/
		BEGIN
		UPDATE [wapkang_user] SET [Newmsgtype]=@value WHERE [seqid]=@userid
		if(@value>5)
			UPDATE [wapkang_online] SET [Shownews]=1  WHERE [userid]=@userid
		ELSE
			UPDATE [wapkang_online] SET [Shownews]=0  WHERE [userid]=@userid
		END
	ELSE IF(@model=15)/*隐身登录设置*/
		BEGIN
		UPDATE [wapkang_user] SET [Invisible]=@value WHERE [seqid]=@userid
		UPDATE [wapkang_online] SET [invisible]=@value  WHERE [userid]=@userid
		END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserCreateInfo]
     @Seqid Int,
     @Nickname Char(50),
     @Username NChar(50),
     @Password Char(32),
     @Email Char(50),
     @Mobile NChar(11),
     @Mobilestate TinyInt,
     @Secques Char(8),
     @Spaceid Int,
     @Gender TinyInt,
     @Adminid SmallInt,
     @Groupid SmallInt,
     @Groupexpiry Int,
     @Regip Char(15),
     @Lastip Char(15),
     @Joindate DateTime,
     @Lastvisit DateTime,
     @Lastactivity DateTime,
     @Posttopics Int,
     @Supertopics Int,
     @Topicreply Int,
     @Onlinetime Int,
     @Credits Int,
     @Credits1 Float,
     @Credits2 Float,
     @Credits3 Float,
     @Credits4 Float,
     @Credits5 Float,
     @Credits6 Float,
     @Credits7 Float,
     @Credits8 Float,
     @Credits9 Float,
     @Credits10 Float,
     @Newmsg TinyInt,
     @Newmsgcount Int,
     @Newmsgtype TinyInt,
     @Friendtype TinyInt,
     @Invisible TinyInt,
     @Onlinestate TinyInt,
     @Emailstate TinyInt,
     @Templateid SmallInt,
     @Isavatar TinyInt,
     @Birthday DateTime,
     @Astro TinyInt,
     @Userage TinyInt,
     @Height TinyInt,
     @Province int,
     @City int,
     @District int,
     @Community int,
     @House TinyInt,
     @Interest TinyInt,
     @Bloodtype TinyInt,
     @Bodytype TinyInt,
     @Disposition TinyInt,
     @Education TinyInt,
     @Income TinyInt,
     @Emotion TinyInt,
     @Zodiac TinyInt,
     @Marital TinyInt,
     @Job TinyInt,
     @Homeprovince int,
     @Homecity int,
     @Homedistrict int,
     @Homecommunity int,
     @Homebio NVarChar(255),
     @Phonemodel Int,
     @Sceneid TinyInt,
     @Sigstatus TinyInt,
     @Pagesize SmallInt,
     @Wordsize SmallInt,
     @Listsize SmallInt,
     @Showemail TinyInt,
     @Vipupdate Int,
     @Vipgrowing SmallInt,
     @Vipcredits Int,
     @Paysafety TinyInt,
     @Paypassword Char(8),
     @Loginsafety TinyInt,
     @Tencentqq NVarChar(13),
     @Msn NVarChar(40),
     @Customstatus NVarChar(50),
     @Medals NVarChar(300),
     @Userbio NVarChar(500),
     @Signature NVarChar(500),
     @Sigparseresult NVarChar(1000),
     @Authstr NVarChar(20),
     @Authtime DateTime,
     @Authflag TinyInt,
     @Realname NVarChar(10),
     @Idcard NVarChar(20),
     @Phone NVarChar(20),
     @Setmagicid Int,
     @Deleteuid BIT
AS
	INSERT INTO [wapkang_user]([Seqid],[Nickname],[Username],[Password],[Email],[Mobile],[Mobilestate],[Secques],[Spaceid],[Gender],[Adminid],[Groupid],[Groupexpiry],[Regip],[Lastip],[Joindate],[Lastvisit],[Lastactivity],[Posttopics],[Supertopics],[Topicreply],[Onlinetime],[Credits],[Credits1],[Credits2],[Credits3],[Credits4],[Credits5],[Credits6],[Credits7],[Credits8],[Credits9],[Credits10],[Newmsg],[Newmsgcount],[Newmsgtype],[Friendtype],[Invisible],[Onlinestate],[Emailstate])VALUES(@Seqid,@Nickname,@Username,@Password,@Email,@Mobile,@Mobilestate,@Secques,@Spaceid,@Gender,@Adminid,@Groupid,@Groupexpiry,@Regip,@Lastip,@Joindate,@Lastvisit,@Lastactivity,@Posttopics,@Supertopics,@Topicreply,@Onlinetime,@Credits,@Credits1,@Credits2,@Credits3,@Credits4,@Credits5,@Credits6,@Credits7,@Credits8,@Credits9,@Credits10,@Newmsg,@Newmsgcount,@Newmsgtype,@Friendtype,@Invisible,@Onlinestate,@Emailstate)
	IF @@ERROR=0
	BEGIN
		UPDATE [wapkang_statistics] SET [totalusers]=[totalusers] + 1,[lastusername]=@Nickname,[lastuserid]=@Seqid
		INSERT INTO [wapkang_userfields]([userid],[Templateid],[Isavatar],[Birthday],[Astro],[Userage],[Height],[Province],[City],[District],[Community],[House],[Interest],[Bloodtype],[Bodytype],[Disposition],[Education],[Income],[Emotion],[Zodiac],[Marital],[Job],[Homeprovince],[Homecity],[Homedistrict],[Homecommunity],[Homebio],[Phonemodel],[Sceneid],[Sigstatus],[Pagesize],[Wordsize],[Listsize],[Showemail],[Vipupdate],[Vipgrowing],[Vipcredits],[Paysafety],[Paypassword],[Loginsafety],[Tencentqq],[Msn],[Customstatus],[Medals],[Userbio],[Signature],[Sigparseresult],[Authstr],[Authtime],[Authflag],[Realname],[Idcard],[Phone],[setmagicid])VALUES(@Seqid,@Templateid,@Isavatar,@Birthday,@Astro,@Userage,@Height,@Province,@City,@District,@Community,@House,@Interest,@Bloodtype,@Bodytype,@Disposition,@Education,@Income,@Emotion,@Zodiac,@Marital,@Job,@Homeprovince,@Homecity,@Homedistrict,@Homecommunity,@Homebio,@Phonemodel,@Sceneid,@Sigstatus,@Pagesize,@Wordsize,@Listsize,@Showemail,@Vipupdate,@Vipgrowing,@Vipcredits,@Paysafety,@Paypassword,@Loginsafety,@Tencentqq,@Msn,@Customstatus,@Medals,@Userbio,@Signature,@Sigparseresult,@Authstr,@Authtime,@Authflag,@Realname,@Idcard,@Phone,@Setmagicid)
		INSERT INTO [wapkang_userprofile]([userid],[blogupdatetime])VALUES(@Seqid,@Joindate)
	END
	IF @Deleteuid=1
		DELETE FROM [wapkang_userid] WHERE [uid]=@Seqid
GO

CREATE PROCEDURE [dbo].[wapkang_UserDeleteallinf]
	@userid INT,
	@deltopics BIT,
	@delmessage BIT
AS
	DECLARE @existuid INT
	SELECT @existuid = COUNT([seqid]) FROM [wapkang_user] WHERE [seqid]=@userid
	IF @existuid <>0
	BEGIN
	DELETE FROM [wapkang_user] WHERE [seqid]=@userid 
	DELETE FROM [wapkang_userfields] WHERE [userid]=@userid
	DELETE FROM [wapkang_userprofile] WHERE [userid]=@userid
	DELETE FROM [wapkang_onlinetime] WHERE [userid]=@userid        
	DELETE FROM [wapkang_consumelog] WHERE [userid]=@userid
	DELETE FROM [wapkang_notices] WHERE [userid]=@userid
	DELETE FROM [wapkang_online] WHERE [userid]=@userid
	DELETE FROM [wapkang_payment] WHERE [userid]=@userid
	DELETE FROM [wapkang_userinterest] WHERE [uid]=@userid
	UPDATE [wapkang_statistics] SET [totalusers]=[totalusers]-1
	DECLARE @lastuserid INT,@lastusername VARCHAR(50)
	SELECT TOP 1 @lastuserid=[seqid],@lastusername=[nickname] FROM [wapkang_user] ORDER BY [seqid] DESC
	IF @lastuserid IS NOT NULL
		UPDATE [wapkang_statistics] SET [lastuserid]=@lastuserid, [lastusername]=@lastusername
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_usergetlistbyinterest]	
	@interestid int,
	@pageindex int,
	@pagesize int
AS
BEGIN
	IF @pageindex = 1
	BEGIN
		EXEC('SELECT TOP '+@pagesize+' 
		[u].[Seqid], 
		[u].[Nickname], 
		[u].[Username], 
		[u].[Gender], 
		[u].[Groupid], 
		[u].[Lastactivity], 
		[u].[Invisible], 
		[u].[Onlinestate], 
		[uf].[Province],
		[uf].[City],
		[uf].[District],
		[uf].[Community],
		[uf].[Isavatar],
		[uf].[Vipcredits]
		FROM [wapkang_userinterest] AS [ui] LEFT JOIN [wapkang_user] AS [u] ON [u].[seqid] = [ui].[uid] LEFT JOIN [wapkang_userfields] AS [uf] ON [uf].[userid] = [ui].[uid]
		WHERE [ui].[tagid] = '+@interestid+'
		ORDER BY [u].[Seqid] DESC')
	END
	ELSE
	BEGIN
		DECLARE @topsize int;
		SET @topsize = (@pageindex-1)*@pagesize;
		EXEC('SELECT TOP '+@pagesize+' 
		[u].[Seqid], 
		[u].[Nickname], 
		[u].[Username], 
		[u].[Gender], 
		[u].[Groupid], 
		[u].[Lastactivity], 
		[u].[Invisible], 
		[u].[Onlinestate], 
		[uf].[Province],
		[uf].[City],
		[uf].[District],
		[uf].[Community],
		[uf].[Isavatar],
		[uf].[Vipcredits]
		FROM [wapkang_userinterest] AS [ui] LEFT JOIN [wapkang_user] AS [u] ON [u].[seqid] = [ui].[uid] LEFT JOIN [wapkang_userfields] AS [uf] ON [uf].[userid] = [ui].[uid]
		WHERE [ui].[tagid] = '+@interestid+' AND [u].[Seqid] < (SELECT MIN([Seqid]) 
		FROM (SELECT TOP '+@topsize+' [u].[Seqid] FROM [wapkang_userinterest] AS [ui] LEFT JOIN [wapkang_user] AS [u] ON [u].[seqid] = [ui].[uid] WHERE [ui].[tagid] = '+@interestid+'
		ORDER BY [u].[seqid] DESC) as tblTmp) ORDER BY [u].[seqid] DESC')
	END
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserGroupCreateInfo]
	@Radminid INT,
	@Grouptitle NVARCHAR(50),
	@Creditshigher INT,
	@Creditslower INT,
	@Stars INT,
	@Color CHAR(7),
	@Groupavatar NVARCHAR(60), 
	@Readaccess INT,
	@Allowvisit INT,
	@Allowpost INT,
	@Allowreply INT,
	@Allowpostpoll INT,
	@Allowcallubb INT,
	@Allowgetattach INT,
	@Allowpostattach INT,
	@Allowvote INT,
	@Allowmultigroups INT, 
	@Allowsearch INT,
	@Allowavatar INT,
	@Allowcstatus INT,
	@Allowuseblog INT,
	@Allowinvisible INT,
	@Allowtransfer INT,
	@Allowsetreadperm INT, 
	@Allowsetattachperm INT,
	@Allowhidecode INT,
	@Allowhtml INT,
	@Allowhtmltitle INT,
	@Allowubbcode INT,
	@Allowubbimgcode INT,
	@Allowsigubbcode INT,
	@Allowsigimgcode INT,
	@Allowviewpro INT,
	@Allowviewstats INT,
	@Allowloginsafety Int,
	@Allowsaveaction Int,
	@Allowtrade INT,
	@Allowubblinkcode INT,
	@Allowdebate INT,
	@Allowbonus INT,
	@Minbonusprice INT,
	@Maxbonusprice INT,
	@Disableperiodctrl INT, 
	@Reasonpm INT,
	@Maxprice SMALLINT,
	@Maxpmnum SMALLINT,
	@Maxsigsize SMALLINT,
	@Maxattachsize INT,
	@Maxsizeperday INT,
	@Attachextensions CHAR(100),
	@Maxspaceattachsize INT,
	@Maxspacephotosize INT, 
	@Raterange NVARCHAR(500),
	@ModNewTopics SMALLINT,
	@ModNewPosts SMALLINT,
	@Ignoreseccode INT,
	@Allowsetnotice INT
AS
	INSERT INTO [wapkang_usergroups]  ([radminid],[grouptitle],[creditshigher],[creditslower],
	[stars] ,[color], [groupavatar],[readaccess], [allowvisit],[allowpost],[allowreply],
	[allowpostpoll], [allowcallubb],[allowgetattach],[allowpostattach],[allowvote],[allowmultigroups],
	[allowsearch],[allowavatar],[allowcstatus],[allowuseblog],[allowinvisible],[allowtransfer],
	[allowsetreadperm],[allowsetattachperm],[allowhidecode],[allowhtml],[allowhtmltitle],[allowubbcode],[allowubbimgcode],
	[allowsigubbcode],[allowsigimgcode],[allowviewpro],[allowviewstats],[allowloginsafety],[allowsaveaction],[allowtrade],[allowubblinkcode],[disableperiodctrl],[reasonpm],
	[maxprice],[maxpmnum],[maxsigsize],[maxattachsize],[maxsizeperday],[attachextensions],[raterange],[maxspaceattachsize],
	[maxspacephotosize],[allowdebate],[allowbonus],[minbonusprice],[maxbonusprice],[modnewtopics],[modnewposts],[ignoreseccode],[Allowsetnotice]) 
	VALUES(
	@Radminid,@Grouptitle,@Creditshigher,@Creditslower,@Stars,@Color,@Groupavatar,@Readaccess,@Allowvisit,@Allowpost,@Allowreply,
	@Allowpostpoll,@Allowcallubb,@Allowgetattach,@Allowpostattach,@Allowvote,@Allowmultigroups,@Allowsearch,@Allowavatar,@Allowcstatus,
	@Allowuseblog,@Allowinvisible,@Allowtransfer,@Allowsetreadperm,@Allowsetattachperm,@Allowhidecode,@Allowhtml,@Allowhtmltitle,@Allowubbcode,@Allowubbimgcode,
	@Allowsigubbcode,@Allowsigimgcode,@Allowviewpro,@Allowviewstats,@Allowloginsafety,@Allowsaveaction,@Allowtrade,@Allowubblinkcode,@Disableperiodctrl,@Reasonpm,@Maxprice,@Maxpmnum,@Maxsigsize,@Maxattachsize, 
	@Maxsizeperday,@Attachextensions,@Raterange,@Maxspaceattachsize,@Maxspacephotosize,@Allowdebate,@Allowbonus,@Minbonusprice,@Maxbonusprice,@ModNewTopics,@ModNewPosts,@Ignoreseccode,@Allowsetnotice)
	SELECT SCOPE_IDENTITY()
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserGroupUpdateInfo]
	@Radminid INT,
	@Grouptitle NVARCHAR(50),
	@Creditshigher INT,
	@Creditslower INT, 
	@Stars INT,
	@Color CHAR(7),
	@Groupavatar NVARCHAR(60),
	@Readaccess INT,
	@Allowvisit INT,
	@Allowpost INT,
	@Allowreply INT,
	@Allowpostpoll INT,
	@Allowcallubb INT,
	@Allowgetattach INT,
	@Allowpostattach INT,
	@Allowvote INT,
	@Allowmultigroups INT,
	@Allowsearch INT,
	@Allowavatar INT,
	@Allowcstatus INT,
	@Allowuseblog INT,
	@Allowinvisible INT,
	@Allowtransfer INT,
	@Allowsetreadperm INT,
	@Allowsetattachperm INT,
	@Allowhidecode INT,
	@Allowhtml INT,
	@Allowhtmltitle INT,
	@Allowubbcode INT,
	@Allowubbimgcode INT,
	@Allowsigubbcode INT,
	@Allowsigimgcode INT,
	@Allowviewpro INT,
	@Allowviewstats INT,
	@Allowloginsafety Int,
	@Allowsaveaction Int,
	@Allowtrade INT,
	@Allowubblinkcode INT,
	@Disableperiodctrl INT,
	@Allowdebate INT,
	@Allowbonus INT,
	@Minbonusprice INT,
	@Maxbonusprice INT,
	@Reasonpm INT,
	@Maxprice SMALLINT,
	@Maxpmnum SMALLINT,
	@Maxsigsize SMALLINT,
	@Maxattachsize INT,
	@Maxsizeperday INT,
	@Attachextensions CHAR(100),
	@Maxspaceattachsize INT,
	@Maxspacephotosize INT,
	@Groupid INT,
	@ModNewTopics SMALLINT,
	@ModNewPosts SMALLINT,
	@Ignoreseccode INT,
	@Raterange NVARCHAR(500),
	@Allowsetnotice INT
AS
	UPDATE [wapkang_usergroups]  
	SET [radminid]=@Radminid,[grouptitle]=@Grouptitle,[creditshigher]=@Creditshigher,[creditslower]=@Creditslower,
	[stars]=@Stars,[color]=@Color,[groupavatar]=@Groupavatar,[readaccess]=@Readaccess, 
	[allowvisit]=@Allowvisit,[allowpost]=@Allowpost,[allowreply]=@Allowreply,[allowpostpoll]=@Allowpostpoll, 
	[allowcallubb]=@Allowcallubb,[allowgetattach]=@Allowgetattach,[allowpostattach]=@Allowpostattach,
	[allowvote]=@Allowvote,[allowmultigroups]=@Allowmultigroups,[allowsearch]=@Allowsearch,[allowavatar]=@Allowavatar,
	[allowcstatus]=@Allowcstatus,[allowuseblog]=@Allowuseblog,[allowinvisible]=@Allowinvisible,
	[allowtransfer]=@Allowtransfer,[allowsetreadperm]=@Allowsetreadperm,[allowsetattachperm]=@Allowsetattachperm,
	[allowhidecode]=@Allowhidecode,[allowhtml]=@Allowhtml,[allowhtmltitle]=@Allowhtmltitle,[allowubbcode]=@Allowubbcode,
	[allowubbimgcode]=@Allowubbimgcode,[allowsigubbcode]=@Allowsigubbcode,[allowsigimgcode]=@Allowsigimgcode,
	[allowviewpro]=@Allowviewpro,[allowviewstats]=@Allowviewstats,[allowloginsafety]=@Allowloginsafety,[allowsaveaction]=@Allowsaveaction,
	[allowtrade]=@Allowtrade,[allowubblinkcode]=@Allowubblinkcode,
	[disableperiodctrl]=@Disableperiodctrl,[allowdebate]=@Allowdebate,[allowbonus]=@Allowbonus,
	[minbonusprice]=@Minbonusprice,[maxbonusprice]=@Maxbonusprice,[reasonpm]=@Reasonpm,[maxprice]=@Maxprice,
	[maxpmnum]=@Maxpmnum,[maxsigsize]=@Maxsigsize,[maxattachsize]=@Maxattachsize,[maxsizeperday]=@Maxsizeperday,
	[attachextensions]=@Attachextensions,[maxspaceattachsize]=@Maxspaceattachsize,
	[maxspacephotosize]=@Maxspacephotosize,[modnewtopics]=@ModNewTopics,[modnewposts]=@ModNewPosts,[ignoreseccode]=@Ignoreseccode,[Raterange]=@Raterange,[Allowsetnotice]=@Allowsetnotice
	WHERE [groupid]=@Groupid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserUpdateCredits]
    @seqid INT
    AS
    UPDATE [wapkang_user] SET [credits] = topicreply*0.2+posttopics*0.5+supertopics*10+onlinetime*10+credits1*2+credits10 WHERE [seqid] = @seqid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[wapkang_UserUpdateGrouAuthstr]
	@seqid int,
	@groupid int
AS
	BEGIN
	UPDATE [wapkang_user] SET [groupid]=@groupid WHERE [seqid]=@seqid
	UPDATE [wapkang_userfields] SET [authstr]='' WHERE [userid]=@seqid
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserUpdateInfo]
     @Nickname Char(50),
     @Username NChar(50),
     @Password Char(32),
     @Email Char(50),
     @Mobile NChar(11),
     @Mobilestate TinyInt,
     @Secques Char(8),
     @Spaceid Int,
     @Gender TinyInt,
     @Adminid SmallInt,
     @Groupid SmallInt,
     @Groupexpiry Int,
     @Regip Char(15),
     @Lastip Char(15),
     @Joindate DateTime,
     @Lastvisit DateTime,
     @Lastactivity DateTime,
     @Posttopics Int,
     @Supertopics Int,
     @Topicreply Int,
     @Onlinetime Int,
     @Credits Int,
     @Credits1 Float,
     @Credits2 Float,
     @Credits3 Float,
     @Credits4 Float,
     @Credits5 Float,
     @Credits6 Float,
     @Credits7 Float,
     @Credits8 Float,
     @Credits9 Float,
     @Credits10 Float,
     @Newmsg TinyInt,
     @Newmsgcount Int,
     @Newmsgtype TinyInt,
     @Friendtype TinyInt,
     @Invisible TinyInt,
     @Onlinestate TinyInt,
     @Emailstate TinyInt,
     @Templateid SmallInt,
     @Isavatar TinyInt,
     @Birthday DateTime,
     @Astro TinyInt,
     @Userage TinyInt,
     @Height TinyInt,
     @Province int,
     @City int,
     @District int,
     @Community int,
     @House TinyInt,
     @Interest TinyInt,
     @Bloodtype TinyInt,
     @Bodytype TinyInt,
     @Disposition TinyInt,
     @Education TinyInt,
     @Income TinyInt,
     @Emotion TinyInt,
     @Zodiac TinyInt,
     @Marital TinyInt,
     @Job TinyInt,
     @Homeprovince int,
     @Homecity int,
     @Homedistrict int,
     @Homecommunity int,
     @Homebio NVarChar(255),
     @Phonemodel Int,
     @Sceneid TinyInt,
     @Sigstatus TinyInt,
     @Pagesize SmallInt,
     @Wordsize SmallInt,
     @Listsize SmallInt,
     @Showemail TinyInt,
     @Vipupdate Int,
     @Vipgrowing SmallInt,
     @Vipcredits Int,
     @Paysafety TinyInt,
     @Paypassword Char(8),
     @Loginsafety TinyInt,
     @Tencentqq NVarChar(13),
     @Msn NVarChar(40),
     @Customstatus NVarChar(50),
     @Medals NVarChar(300),
     @Userbio NVarChar(500),
     @Signature NVarChar(500),
     @Sigparseresult NVarChar(1000),
     @Authstr NVarChar(20),
     @Authtime DateTime,
     @Authflag TinyInt,
     @Realname NVarChar(10),
     @Idcard NVarChar(20),
     @Phone NVarChar(20),
     @Setmagicid Int,
     @seqid Int
AS
	DECLARE @Shownews TinyInt
	IF @Newmsgtype>=5
		SET @Shownews =1
	Else
		SET @Shownews =0
	UPDATE [wapkang_user] SET [Nickname]=@Nickname,[Username]=@Username,[Password]=@Password,[Email]=@Email,[Mobile]=@Mobile,[Mobilestate]=@Mobilestate,[Secques]=@Secques,[Spaceid]=@Spaceid,[Gender]=@Gender,[Adminid]=@Adminid,[Groupid]=@Groupid,[Groupexpiry]=@Groupexpiry,[Regip]=@Regip,[Lastip]=@Lastip,[Joindate]=@Joindate,[Lastvisit]=@Lastvisit,[Lastactivity]=@Lastactivity,[Posttopics]=@Posttopics,[Supertopics]=@Supertopics,[Topicreply]=@Topicreply,[Onlinetime]=@Onlinetime,[Credits]=@Credits,[Credits1]=@Credits1,[Credits2]=@Credits2,[Credits3]=@Credits3,[Credits4]=@Credits4,[Credits5]=@Credits5,[Credits6]=@Credits6,[Credits7]=@Credits7,[Credits8]=@Credits8,[Credits9]=@Credits9,[Credits10]=@Credits10,[Newmsg]=@Newmsg,[Newmsgcount]=@Newmsgcount,[Newmsgtype]=@Newmsgtype,[Friendtype]=@Friendtype,[Invisible]=@Invisible,[Onlinestate]=@Onlinestate,[Emailstate]=@Emailstate WHERE [seqid]=@seqid
	UPDATE [wapkang_userfields] SET [Templateid]=@Templateid,[Isavatar]=@Isavatar,[Birthday]=@Birthday,[Astro]=@Astro,[Userage]=@Userage,[Height]=@Height,[Province]=@Province,[City]=@City,[District]=@District,[Community]=@Community,[House]=@House,[Interest]=@Interest,[Bloodtype]=@Bloodtype,[Bodytype]=@Bodytype,[Disposition]=@Disposition,[Education]=@Education,[Income]=@Income,[Emotion]=@Emotion,[Zodiac]=@Zodiac,[Marital]=@Marital,[Job]=@Job,[Homeprovince]=@Homeprovince,[Homecity]=@Homecity,[Homedistrict]=@Homedistrict,[Homecommunity]=@Homecommunity,[Homebio]=@Homebio,[Phonemodel]=@Phonemodel,[Sceneid]=@Sceneid,[Sigstatus]=@Sigstatus,[Pagesize]=@Pagesize,[Wordsize]=@Wordsize,[Listsize]=@Listsize,[Showemail]=@Showemail,[Vipupdate]=@Vipupdate,[Vipgrowing]=@Vipgrowing,[Vipcredits]=@Vipcredits,[Paysafety]=@Paysafety,[Paypassword]=@Paypassword,[Loginsafety]=@Loginsafety,[Tencentqq]=@Tencentqq,[Msn]=@Msn,[Customstatus]=@Customstatus,[Medals]=@Medals,[Userbio]=@Userbio,[Signature]=@Signature,[Sigparseresult]=@Sigparseresult,[Authstr]=@Authstr,[Authtime]=@Authtime,[Authflag]=@Authflag,[Realname]=@Realname,[Idcard]=@Idcard,[Phone]=@Phone,[Setmagicid]=@Setmagicid WHERE [userid]=@seqid
	UPDATE [wapkang_online] SET [username]=@Username,[nickname]=@Nickname,[password]=@Password,[gender]=@Gender,[province]=@Province,[city]=@City,[district]=@District,[community]=@Community,[groupid]=@Groupid ,[adminid]=@Adminid,[pagesize]=@Pagesize,[wordsize]=@Wordsize,[listsize]=@Listsize,[Mobilestate]=@Mobilestate,[templateid]=@Templateid,[isavatar]=@Isavatar,[extcredits]=@Vipcredits,[paysafety]=@Paysafety,[Loginsafety]=@Loginsafety,[Shownews]=@Shownews,[Phonemodel]=@Phonemodel,[invisible]=@Invisible,[Setmagicid]=@Setmagicid  WHERE [userid]=@seqid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserUpdateonlinestates]
	@uidlist varchar(5000) = '' 
AS
	UPDATE [wapkang_user] SET [onlinestate]=0 WHERE CHARINDEX(','+RTRIM([seqid])+',', ','+@uidlist+',') > 0
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserUpdatepassword]
	@uid Int,
	@password Char(32),
	@mobilestate TinyInt,
	@resetnick TinyInt,
	@nickname Char(50)
AS
	IF @mobilestate=88 and @resetnick=0
	BEGIN
		UPDATE [wapkang_user] SET [password]=@password WHERE [seqid]=@uid
		UPDATE [wapkang_online] SET [password]=@password WHERE [userid]=@uid
	END
	Else
	BEGIN
		IF @resetnick=1
		BEGIN
			UPDATE [wapkang_user] SET [password]=@password,[nickname]=@nickname WHERE [seqid]=@uid
			UPDATE [wapkang_online] SET [password]=@password,[nickname]=@nickname WHERE [userid]=@uid
		END
		Else
		BEGIN
			UPDATE [wapkang_user] SET [password]=@password,[mobilestate]=@mobilestate WHERE [seqid]=@uid
			UPDATE [wapkang_online] SET [password]=@password,[mobilestate]=@mobilestate WHERE [userid]=@uid
		END
	END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[wapkang_UserUpdateProfileInfo]
  @Nickname Char(50),
  @Gender SmallInt,
  @Email Char(50), 
  @Newmsgtype TinyInt,
  @Friendtype TinyInt,
  @Invisible TinyInt,
  @Templateid  SmallInt,
  @Isavatar TinyInt,
  @Birthday DateTime,
  @Astro  TinyInt,
  @Userage  TinyInt,
  @Height  TinyInt,
  @Province int,
  @City int,
  @District int,
  @Community int,
  @House TinyInt,
  @Interest TinyInt,
  @Bloodtype TinyInt,
  @Bodytype  TinyInt,
  @Disposition  TinyInt,
  @Education  TinyInt,
  @Income  TinyInt,
  @Emotion  TinyInt,
  @Zodiac  TinyInt,
  @Marital  TinyInt,
  @Job  TinyInt,
  @Homeprovince int,
  @Homecity int,
  @Homedistrict int,
  @Homecommunity int,
  @Homebio  NVarChar(255),
  @Phonemodel Int,
  @Sceneid  TinyInt,
  @Sigstatus  TinyInt,
  @Pagesize  SmallInt,
  @Wordsize  SmallInt,
  @Listsize  SmallInt,
  @Showemail  TinyInt,
  @Vipupdate  Int,
  @Vipgrowing  SmallInt,
  @Vipcredits  Int,
  @Paysafety  TinyInt,
  @Paypassword  Char(8),	
  @Loginsafety  TinyInt,
  @Tencentqq  NVarChar(13),	
  @Msn  NVarChar(40),	
  @Customstatus  NVarChar(50),	
  @Medals  NVarChar(300),	
  @Userbio  NVarChar(500),	
  @Signature  NVarChar(500),	
  @Sigparseresult  NVarChar(1000),	
  @Authstr  NVarChar(20),	
  @Authtime  DateTime,	
  @Authflag  TinyInt,
  @Realname  NVarChar,
  @Idcard  NVarChar(20),	
  @Phone  NVarChar(20),	
  @Setmagicid  Int,
  @seqid Int
AS
	DECLARE @Shownews TinyInt
	IF @Newmsgtype>=5
		SET @Shownews =1
	Else
		SET @Shownews =0
	UPDATE [wapkang_user] SET [nickname]=@Nickname, [gender]=@Gender ,[email]=@Email,[newmsgtype]=@Newmsgtype,[friendtype]=@Friendtype,[invisible]=@Invisible WHERE [seqid]=@seqid
	UPDATE [wapkang_userfields] SET [Templateid]=@Templateid,[Isavatar]=@Isavatar,[Birthday]=@Birthday,[Astro]=@Astro,[Userage]=@Userage,[Height]=@Height,[Province]=@Province,[City]=@City,[District]=@District,[Community]=@Community,[House]=@House,[Interest]=@Interest,[Bloodtype]=@Bloodtype,[Bodytype]=@Bodytype,[Disposition]=@Disposition,[Education]=@Education,[Income]=@Income,[Emotion]=@Emotion,[Zodiac]=@Zodiac,[Marital]=@Marital,[Job]=@Job,[Homeprovince]=@Homeprovince,[Homecity]=@Homecity,[Homedistrict]=@Homedistrict,[Homecommunity]=@Homecommunity,[Homebio]=@Homebio,[Phonemodel]=@Phonemodel,[Sceneid]=@Sceneid,[Sigstatus]=@Sigstatus,[Pagesize]=@Pagesize,[Wordsize]=@Wordsize,[Listsize]=@Listsize,[Showemail]=@Showemail,[Vipupdate]=@Vipupdate,[Vipgrowing]=@Vipgrowing,[Vipcredits]=@Vipcredits,[Paysafety]=@Paysafety,[Paypassword]=@Paypassword,[Loginsafety]=@Loginsafety,[Tencentqq]=@Tencentqq,[Msn]=@Msn,[Customstatus]=@Customstatus,[Medals]=@Medals,[Userbio]=@Userbio,[Signature]=@Signature,[Sigparseresult]=@Sigparseresult,[Authstr]=@Authstr,[Authtime]=@Authtime,[Authflag]=@Authflag,[Realname]=@Realname,[Idcard]=@Idcard,[Phone]=@Phone,[Setmagicid]=@Setmagicid WHERE [userid]=@seqid
	UPDATE [wapkang_online] SET [nickname]=@Nickname,[gender]=@Gender,[province]=@Province,[city]=@City,[district]=@District,[community]=@Community,[pagesize]=@Pagesize,[wordsize]=@Wordsize,[listsize]=@Listsize,[templateid]=@Templateid,[isavatar]=@Isavatar,[extcredits]=@Vipcredits,[paysafety]=@Paysafety,[Loginsafety]=@Loginsafety,[Shownews]=@Shownews,[Phonemodel]=@Phonemodel,[invisible]=@Invisible,[Setmagicid]=@Setmagicid  WHERE [userid]=@seqid
GO