IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_admingroups]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_admingroups];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_adminlog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_adminlog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachments]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_attachments];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_award]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_award];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_awardlog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_awardlog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_bannedip]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_bannedip];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_commonclass]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_commonclass];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_commondistrict]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_commondistrict];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_commonipdb]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_commonipdb];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_commonvisitlog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_commonvisitlog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_consumelog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_consumelog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_downloadlog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_downloadlog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_favorites]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_favorites];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitation]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_invitation];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_loginlogs]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_loginlogs];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_medals]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_medals];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_medalslog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_medalslog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_notices]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_notices];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_online]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_online];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_onlinelist]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_onlinelist];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_onlinetime]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_onlinetime];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_payment]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_payment];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_safety]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_safety];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_scheduletask]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_scheduletask];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_search]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_search];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_smilie]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_smilie];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_statistics]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_statistics];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_stats]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_stats];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_statvalue]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_statvalue];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_tags]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_tags];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_trendstat]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_trendstat];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_user]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_user];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userfields]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_userfields];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_usergroups]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_usergroups];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userid]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_userid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userinterest]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_userinterest];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userpaylog]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_userpaylog];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userprofile]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_userprofile];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_viplevel]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_viplevel];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_words]') AND OBJECTPROPERTY(ID, N'IsUserTable') = 1) 
	DROP TABLE [wapkang_words];

/****** 存储过程 ******/
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_admingroupcreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_admingroupcreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_admingroupupdateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_admingroupupdateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentscreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentscreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsDeletebycommentid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsDeletebycommentid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsdeletebytid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsdeletebytid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsgetlistbyall]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsgetlistbyall];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsGetlistbycid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsGetlistbycid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsGetlistbycommentcondition]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsGetlistbycommentcondition];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsGetlistbycommentid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsGetlistbycommentid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsgetlistbytid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsgetlistbytid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_attachmentsmodifyinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_attachmentsmodifyinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_consumeCreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_consumeCreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_favoritescreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_favoritescreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_functionclassCreatebyidentityinsert]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_functionclassCreatebyidentityinsert];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_favoritesgetcount]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_favoritesgetcount];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_functionclassCreate]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_functionclassCreate];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_functionclassDelete]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_functionclassDelete];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_functionclassMerge]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_functionclassMerge];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_functionclassUpdate]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_functionclassUpdate];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitecodeClearexpire]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_invitecodeClearexpire];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitecodeCreateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_invitecodeCreateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitecodeGetinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_invitecodeGetinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitecodegetListInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_invitecodegetListInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_invitecodeisexist]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_invitecodeisexist];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_ipdbcreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_ipdbcreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_ipdbupdateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_ipdbupdateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_ipdbupdateinfoByLink]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_ipdbupdateinfoByLink];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_IpdbupHitsCount]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_IpdbupHitsCount];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_noticecreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_noticecreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_noticegetcount]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_noticegetcount];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olcreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olcreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_oldeleteusers]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_oldeleteusers];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olgetgroupicontable]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olgetgroupicontable];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olgetinfobysessionid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olgetinfobysessionid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olgetinfobyuidandip]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olgetinfobyuidandip];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olgetinfobyuidandpassword]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olgetinfobyuidandpassword];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olgetlistbyfid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olgetlistbyfid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olupdatemessageinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olupdatemessageinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olupdateuseraction]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olupdateuseraction];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_olupdeteinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_olupdeteinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_paymentlogcreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_paymentlogcreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserRandomUidCreateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserRandomUidCreateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_ScheduledupdateexecuteTime]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_ScheduledupdateexecuteTime];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_Searchcreatecache]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_Searchcreatecache];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_sqlpagination]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_sqlpagination];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_tagcreatebyuserinterest]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_tagcreatebyuserinterest];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_tagcreateinfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_tagcreateinfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_tagdeletetagsbyuserinterest]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_tagdeletetagsbyuserinterest];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_tagdeletetagsbyuserinterestid]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_tagdeletetagsbyuserinterestid];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_updatettrendstat]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_updatettrendstat];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userchangenickname]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_userchangenickname];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_userchangeuserinfobybyte]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_userchangeuserinfobybyte];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserCreateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserCreateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserDeleteallinf]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserDeleteallinf];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserGetlistbyinterest]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserGetlistbyinterest];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserGroupCreateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserGroupCreateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserGroupUpdateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserGroupUpdateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdateCredits]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdateCredits];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdateGrouAuthstr]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdateGrouAuthstr];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdateInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdateInfo];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdateonlinestates]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdateonlinestates];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdatepassword]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdatepassword];
IF EXISTS(SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID(N'[wapkang_UserUpdateProfileInfo]') AND OBJECTPROPERTY(ID, N'IsProcedure') = 1) 
	DROP PROCEDURE [wapkang_UserUpdateProfileInfo];

IF EXISTS(SELECT * FROM dbo.sysobjects where id = object_id(N'[getMysplit]') and xtype in (N'FN', N'IF', N'TF')) DROP FUNCTION [getMysplit];
IF OBJECT_ID (N'[getMysplit]') IS NOT NULL DROP FUNCTION [getMysplit];