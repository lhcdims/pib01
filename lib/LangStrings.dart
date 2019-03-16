// This file contains ALL Strings in ALL Languages
// import 'LangStrings.dart' in order to use it
// To add other languages, you have to
// 1. Include another element in listLang
// 2. Create another static const listStrings_XX, in which XX is the language code defined by YOU
// 3. Modify the function gs()


import 'GlobalVariables.dart';
import 'Utilities.dart';

class ls {
  // strLang is the Current Language selected by the User
  // *** NOT by the system locale of the mobile phone ***
  // e.g. You can use LangStrings.setLang('EN') to set Current Language to English
  static var strLang = '';

  // List of Language
  static const listLang = [
    // List of Languages available
    { 'Lang':'EN', 'LangDesc':'English'},
    { 'Lang':'SC', 'LangDesc':'简体中文'},
    { 'Lang':'TC', 'LangDesc':'繁體中文'},
  ];

  // vars for English
  static var listStrings_EN = [
    // General
    { 'Title':'AccountDisabled', 'Content':'Account Disabled: Pls. contact us'},
    { 'Title':'Activate', 'Content':'Activate'},
    { 'Title':'ActivateAccount', 'Content':'Activate Account'},
    { 'Title':'ActivateAlready', 'Content':'Activate has been activated before'},
    { 'Title':'ActivateError', 'Content':'Activation Code is not correct'},
    { 'Title':'ActivateErrorTimeout', 'Content':'Activation Failed: Timeout, pls. try again later'},
    { 'Title':'ActivateSuccess', 'Content':'Activate Success'},
    { 'Title':'ActivationCode', 'Content':'Activation Code'},
    { 'Title':'ActivationCodeWarning', 'Content':'Activation Email might be inside TRASH BIN'},
    { 'Title':'ActivationEmailSent', 'Content':'Activation Email Sent'},
    { 'Title':'Admin', 'Content':'Admin'},
    { 'Title':'AdminVideo', 'Content':'Admin Video'},
    { 'Title':'AreYouSure', 'Content':'Are You Sure'},
    { 'Title':'Cancel', 'Content':'Cancel'},
    { 'Title':'CannotDeletePlayingVideo', 'Content':'Cannot delete video being played'},
    { 'Title':'Change', 'Content':'Change'},
    { 'Title':'ChangeEmailNeedActivateAgain', 'Content':'Need to Re-Activate if email is changed'},
    { 'Title':'ChangePassword', 'Content':'Change Password'},
    { 'Title':'CheckPassword', 'Content':'Check Password'},
    { 'Title':'Confirm', 'Content':'Confirm'},
    { 'Title':'DecryptVideo', 'Content':'Decrypt Video'},
    { 'Title':'DecryptVideoWarning1', 'Content':'Decrypted Video will be copied to your photo gallery, are you sure'},
    { 'Title':'DeleteVideo', 'Content':'Delete Video'},
    { 'Title':'DeleteVideoWarning1', 'Content':'Video will be deleted permanently (Video decrypted and copied to Photo Gallery will not be affected), are you sure'},
    { 'Title':'Download', 'Content':'Download'},
    { 'Title':'DownloadNewVersion', 'Content':'Download New Version'},
    { 'Title':'DownloadNewVersionContent01', 'Content':'New Version of MMS Available, you must download and install the new version to continue!!!'},
    { 'Title':'DownloadNewVersionContent02', 'Content':'If the below Download button does not work, you may also copy and paste the following url into a browser to download and install the app manually.'},
    { 'Title':'DownloadNewVersionContent03', 'Content':'You may find the downloaded apk in your file explorer'},
    { 'Title':'DownloadNewVersionError', 'Content':'Unable to launch Browser, pls. download manually'},
    { 'Title':'Duration', 'Content':'Duration'},
    { 'Title':'EmailAddress', 'Content':'Email Address'},
    { 'Title':'EmailAddressFormatError', 'Content':'Email Address is not in the correct format'},
    { 'Title':'EmailAddressRegisterWarning', 'Content':'An Activation Code will be sent to you via Email'},
    { 'Title':'EmailChangedNeedActivateAgain', 'Content':'Email Changed, you need to activate again'},
    { 'Title':'EmailNotFound', 'Content':'Email Not Found'},
    { 'Title':'FreeModeExpiryDate', 'Content':'Free Mode Expiry Date'},
    { 'Title':'ForgetPassword', 'Content':'Forget Password'},
    { 'Title':'Help', 'Content':'Help'},
    { 'Title':'Home', 'Content':'Home'},
    { 'Title':'LeavePrivate', 'Content':'Leave Private'},
    { 'Title':'Login', 'Content':'Login'},
    { 'Title':'LoginErrorLoginAgain', 'Content':'Login Failed: Pls. login again'},
    { 'Title':'LoginErrorReLogin', 'Content':'Another user login your account. Pls. login again'},
    { 'Title':'LoginErrorSystem', 'Content':'Login Failed: System Error, pls. try again later'},
    { 'Title':'LoginErrorTimeout', 'Content':'Login Failed: Timeout'},
    { 'Title':'LoginErrorUserIDPassword', 'Content':'Login Failed: User ID & Password does not match'},
    { 'Title':'LoginSuccess', 'Content':'Login Success'},
    { 'Title':'Logout', 'Content':'Logout'},
    { 'Title':'MoreVideos', 'Content':'More Videos'},
    { 'Title':'NetworkConnected', 'Content':'Network Connected'},
    { 'Title':'NetworkDisconnected', 'Content':'Network Disonnected'},
    { 'Title':'NetworkDisconnectedTryLater', 'Content':'Network Disonnected, try again later'},
    { 'Title':'No', 'Content':'No'},
    { 'Title':'NothingChanged', 'Content':'Nothing Changed'},
    { 'Title':'NoMoreVideos', 'Content':'No More Videos'},
    { 'Title':'NoVideoFound', 'Content':'No Video Found'},
    { 'Title':'NoVideoRecordingInPrivateMode', 'Content':'No Video Recording in Private Mode'},
    { 'Title':'OldPasswordCannotBeTheSameAsNewPassword', 'Content':'Old Password cannot be the same as New Password'},
    { 'Title':'OldPasswordIsNotCorrect', 'Content':'Old Password is not correct'},
    { 'Title':'PasswordChanged', 'Content':'Password Changed'},
    { 'Title':'PasswordIsNotCorrect', 'Content':'Password is not Correct'},
    { 'Title':'PasswordNew', 'Content':'New Password'},
    { 'Title':'PasswordOld', 'Content':'Old Password'},
    { 'Title':'PayModeMinLeft', 'Content':'Pay Mode Minute Left'},
    { 'Title':'PermissionAudio', 'Content':'Pls. grant Audio Permission'},
    { 'Title':'PermissionCamera', 'Content':'Pls. grant Camera Permission'},
    { 'Title':'PermissionExternal', 'Content':'Pls. grant Storage Permission'},
    { 'Title':'PersonalInformation', 'Content':'Personal Information'},
    { 'Title':'PersonalInformationChanged', 'Content':'Personal Information Changed'},
    { 'Title':'Player', 'Content':'Player'},
    { 'Title':'PlsCheckEmailForIDAndPasword', 'Content':'Pls. check Eamil for ID and Password'},
    { 'Title':'PlsLoginFirst', 'Content':'Pls. Login First'},
    { 'Title':'Private', 'Content':'Private'},
    { 'Title':'PrivateMode', 'Content':'Private Mode'},
    { 'Title':'Register', 'Content':'Register'},
    { 'Title':'RegisterErrorConfirmPassword', 'Content':'Confirm Password must be the same as Password'},
    { 'Title':'RegisterErrorSystem', 'Content':'Register Failed: System Error, pls. try again later'},
    { 'Title':'RegisterErrorTimeout', 'Content':'Register Failed: Timeout'},
    { 'Title':'RegisterErrorUserIDExist', 'Content':'Register Failed: User ID already exist'},
    { 'Title':'RegisterSuccess', 'Content':'Register Success, pls. check your Activation Email'},
    { 'Title':'Return', 'Content':'Return'},
    { 'Title':'SelectLanguage', 'Content':'Select Language'},
    { 'Title':'Send', 'Content':'Send'},
    { 'Title':'SendActivationEmailAgain', 'Content':'Send Activation Email Again'},
    { 'Title':'SelectVideo', 'Content':'Select Video'},
    { 'Title':'Settings', 'Content':'Settings'},
    { 'Title':'SystemError', 'Content':'System Error: Pls. try again later'},
    { 'Title':'SystemErrorOpenAgain', 'Content':'System Error: Close and Re-Open App!!!'},
    { 'Title':'TimeoutError', 'Content':'Timeout Error: Pls. try again later'},
    { 'Title':'UserID', 'Content':'User ID'},
    { 'Title':'UserIDErrorAllowedChars', 'Content':"User ID only allows lower cases, numbers and '_'"},
    { 'Title':'UserIDErrorMinMaxLen', 'Content':'User ID should be between ' + gv.intDefUserIDMinLen.toString() + ' and ' + gv.intDefUserIDMaxLen.toString() + ' bytes'},
    { 'Title':'UserNick', 'Content':'Nick Name'},
    { 'Title':'UserNickErrorMinMaxLen', 'Content':'Nick Name should be between ' + gv.intDefUserNickMinLen.toString() + ' and ' + gv.intDefUserNickMaxLen.toString() + ' bytes'},
    { 'Title':'UserPW', 'Content':'User Password'},
    { 'Title':'UserPWConfirm', 'Content':'Confirm Password'},
    { 'Title':'UserPWErrorMinMaxLen', 'Content':'User Password should be between ' + gv.intDefUserPWMinLen.toString() + ' and ' + gv.intDefUserPWMaxLen.toString() + ' bytes'},
    { 'Title':'Videos', 'Content':'Videos'},
    { 'Title':'VideoDecrypted', 'Content':'Video copied to Photo Gallery'},
    { 'Title':'VideoDeleted', 'Content':'Video Deleted'},
    { 'Title':'VideoErrorUnsupport', 'Content':'Unsupported Video File'},
    { 'Title':'Yes', 'Content':'Yes'},
    { 'Title':'YourAccountHasBeenDisabled', 'Content':'Your account has been disabled'},

    { 'Title':'HelpFreeModeTitle', 'Content':'Help'},
    { 'Title':'HelpFreeModeTitle00', 'Content':'How to go back to this Help page'},
    { 'Title':'HelpFreeModeTitle10', 'Content':'1. What is MMS Player'},
    { 'Title':'HelpFreeModeTitle20', 'Content':'2. Where are the Recorded Videos Stored?'},
    { 'Title':'HelpFreeModeTitle30', 'Content':'3. What is Free Mode'},
    { 'Title':'HelpFreeModeTitle40', 'Content':'4. Extend Free Mode Expiry Date'},
    { 'Title':'HelpFreeModeTitle50', 'Content':'5. What happen when Free Mode Expires?'},
    { 'Title':'HelpFreeModeTitle60', 'Content':'6. Buy [Pay Mode Minutes]'},
    { 'Title':'HelpFreeModeContent00', 'Content':'After Login, click [Personal Information], enter your password again, then click [Help]'},
    { 'Title':'HelpFreeModeContent10', 'Content':'MMS Player is a SECRET Video Recorder.  When you press the [Play] buttun in the [Player] Tab after you select a Video file in your mobile phone, while the video is playing, your mobile will record video SECRETLY using the FRONT CAMERA of your mobile phone.  To stop the video playing AND RECORDING, simply press the [Pause] button.'},
    { 'Title':'HelpFreeModeContent20', 'Content':"The Videos Recorded are stored and encrpted inside your mobile phone's secret storage area, you can only see those videos while you are in [Private Mode], you can enter [Private Mode] inside the [Settings]/[Personal Information].  You may also decrypt the Videos, decrypted videos will be copied into your Photo Gallery."},
    { 'Title':'HelpFreeModeContent30', 'Content':'In Free Mode, you can record video endlessly, but the video is divided in 60 seconds each.  For example, a 2 minutes 30 seconds video, will be divided into 3 separate files, with the first 2 files one minute each, the last file 30 seconds.  There is a gap of around 3 seconds between each video file, which is the time needed to save that video file.'},
    { 'Title':'HelpFreeModeContent40', 'Content':'The default Expiry Date for Free Mode is 30 days from the day of Registration, you can extend this expiry date by charging your A/C, the current rate is RMB10 per year!!!'},
    { 'Title':'HelpFreeModeContent50', 'Content':'When Free Mode expires, you can only record 1 minute video each time you press the [Play] button in the [Player] Tab.  After 1 minute, the video continues to play, but the recording will be stopped.  You can always record another 1 minute video by pausing the playing video and press the [Play] button again.'},
    { 'Title':'HelpFreeModeContent60', 'Content':'To record video continously, you can pay to buy [Pay Mode Minutes], which will charge you at the rate of RMB 0.1 per minute.  In [Pay Mode], you can record long video file limited by your [Pay Mode Minutes Left], the first minute of recording is free of charge, e.g. recording a 2 minutes 30 seconds video, will only charge you 2 minutes.'},
  ];

  // vars for Simplified Chinese
  static var listStrings_SC = [
    // General
    { 'Title':'AccountDisabled', 'Content':'账户已被冻结，请联系我们'},
    { 'Title':'Activate', 'Content':'激活'},
    { 'Title':'ActivateAccount', 'Content':'激活账户'},
    { 'Title':'ActivateAlready', 'Content':'账户之前已经激活成功'},
    { 'Title':'ActivateError', 'Content':'激活码不正确'},
    { 'Title':'ActivateErrorTimeout', 'Content':'激活失败：超时，请稍后再试'},
    { 'Title':'ActivateSuccess', 'Content':'账户激活成功'},
    { 'Title':'ActivationCode', 'Content':'激活码'},
    { 'Title':'ActivationCodeWarning', 'Content':'激活电邮可能在垃圾邮箱里'},
    { 'Title':'ActivationEmailSent', 'Content':'已发送激活电邮'},
    { 'Title':'Admin', 'Content':'Admin'},
    { 'Title':'AdminVideo', 'Content':'Admin Video'},
    { 'Title':'AreYouSure', 'Content':'确定吗'},
    { 'Title':'Cancel', 'Content':'取消'},
    { 'Title':'CannotDeletePlayingVideo', 'Content':'不能删除正在播放的视频'},
    { 'Title':'Change', 'Content':'更改'},
    { 'Title':'ChangeEmailNeedActivateAgain', 'Content':'若更改电邮需要重新激活账户'},
    { 'Title':'ChangePassword', 'Content':'更改密码'},
    { 'Title':'CheckPassword', 'Content':'检查密码'},
    { 'Title':'Confirm', 'Content':'确定'},
    { 'Title':'DecryptVideo', 'Content':'解密视频'},
    { 'Title':'DecryptVideoWarning1', 'Content':'解密的视频将会被拷贝到相册，您确定吗'},
    { 'Title':'DeleteVideo', 'Content':'删除视频'},
    { 'Title':'DeleteVideoWarning1', 'Content':'私密模式里的视频将永远被删除（已经解密并保存到相册的视频不会被影响），您确定吗'},
    { 'Title':'Download', 'Content':'下载'},
    { 'Title':'DownloadNewVersion', 'Content':'下载新版本'},
    { 'Title':'DownloadNewVersionContent01', 'Content':'有新的 App 版本，您必须下载并安装新版本才能继续！！！'},
    { 'Title':'DownloadNewVersionContent02', 'Content':'如果下面的【下载】键不能下载新版本，请手动拷贝以下网址到浏览器，并且下载及安装新版本。'},
    { 'Title':'DownloadNewVersionContent03', 'Content':'下载的 apk 应该可以在【文件管理器】找到'},
    { 'Title':'DownloadNewVersionError', 'Content':'无法启动浏览器，请自行下载'},
    { 'Title':'Duration', 'Content':'时长'},
    { 'Title':'EmailAddress', 'Content':'电邮地址'},
    { 'Title':'EmailAddressFormatError', 'Content':'电邮地址格式不正确'},
    { 'Title':'EmailAddressRegisterWarning', 'Content':'激活码将会透过电邮发送给您'},
    { 'Title':'EmailChangedNeedActivateAgain', 'Content':'已更改电邮，您需要重新激活账户'},
    { 'Title':'EmailNotFound', 'Content':'电邮地址不存在'},
    { 'Title':'FreeModeExpiryDate', 'Content':'免费模式到期日'},
    { 'Title':'ForgetPassword', 'Content':'忘记密码'},
    { 'Title':'Help', 'Content':'帮助'},
    { 'Title':'Home', 'Content':'首页'},
    { 'Title':'LeavePrivate', 'Content':'离开私密'},
    { 'Title':'Login', 'Content':'登录'},
    { 'Title':'LoginErrorLoginAgain', 'Content':'登入失败：请重新登入'},
    { 'Title':'LoginErrorReLogin', 'Content':'另一用户登入了您的账户，请重新登入'},
    { 'Title':'LoginErrorSystem', 'Content':'登入失败：系统错误，请稍后再试'},
    { 'Title':'LoginErrorTimeout', 'Content':'登入失败：超时'},
    { 'Title':'LoginErrorUserIDPassword', 'Content':'登入失败：账号 及 密码不匹配'},
    { 'Title':'LoginSuccess', 'Content':'登入成功'},
    { 'Title':'Logout', 'Content':'登出'},
    { 'Title':'MoreVideos', 'Content':'更多视频'},
    { 'Title':'NetworkConnected', 'Content':'已连接网络'},
    { 'Title':'NetworkDisconnected', 'Content':'网络已断开'},
    { 'Title':'NetworkDisconnectedTryLater', 'Content':'网络已断开，请稍后再试'},
    { 'Title':'No', 'Content':'否'},
    { 'Title':'NothingChanged', 'Content':'没有任何改变'},
    { 'Title':'NoMoreVideos', 'Content':'没有更多视频了'},
    { 'Title':'NoVideoFound', 'Content':'没有视频档案'},
    { 'Title':'NoVideoRecordingInPrivateMode', 'Content':'私密模式下不再录像'},
    { 'Title':'OldPasswordCannotBeTheSameAsNewPassword', 'Content':'旧密码不能和新密码一样'},
    { 'Title':'OldPasswordIsNotCorrect', 'Content':'旧密码不正确'},
    { 'Title':'PasswordChanged', 'Content':'密码已更改'},
    { 'Title':'PasswordIsNotCorrect', 'Content':'密码不正确'},
    { 'Title':'PasswordNew', 'Content':'新密码'},
    { 'Title':'PasswordOld', 'Content':'旧密码'},
    { 'Title':'PayModeMinLeft', 'Content':'收费模式余下分钟'},
    { 'Title':'PermissionAudio', 'Content':'请先允许录音权限'},
    { 'Title':'PermissionCamera', 'Content':'请先允许相机权限'},
    { 'Title':'PermissionExternal', 'Content':'请先允许读写权限'},
    { 'Title':'PersonalInformation', 'Content':'个人资料'},
    { 'Title':'PersonalInformationChanged', 'Content':'个人资料已更改'},
    { 'Title':'Player', 'Content':'播放器'},
    { 'Title':'PlsCheckEmailForIDAndPasword', 'Content':'账号及密码已发送到您的电邮'},
    { 'Title':'PlsLoginFirst', 'Content':'请先登录'},
    { 'Title':'Private', 'Content':'私密'},
    { 'Title':'PrivateMode', 'Content':'私密模式'},
    { 'Title':'Register', 'Content':'注册'},
    { 'Title':'RegisterErrorConfirmPassword', 'Content':'确认密码必须和密码一样'},
    { 'Title':'RegisterErrorSystem', 'Content':'注册失败：系统错误，请稍后再试'},
    { 'Title':'RegisterErrorTimeout', 'Content':'注册失败：超时'},
    { 'Title':'RegisterErrorUserIDExist', 'Content':'注册失败：账号已存在'},
    { 'Title':'RegisterSuccess', 'Content':'注册成功，请检查激活电邮'},
    { 'Title':'Return', 'Content':'返回'},
    { 'Title':'SelectLanguage', 'Content':'选择语言'},
    { 'Title':'Send', 'Content':'发送'},
    { 'Title':'SendActivationEmailAgain', 'Content':'重新发送激活电邮'},
    { 'Title':'SelectVideo', 'Content':'选择视频'},
    { 'Title':'Settings', 'Content':'设置'},
    { 'Title':'SystemError', 'Content':'系统错误，请稍后再试'},
    { 'Title':'SystemErrorOpenAgain', 'Content':'系统错误，请关闭并重启 App!!!'},
    { 'Title':'TimeoutError', 'Content':'超时错误，请稍后再试'},
    { 'Title':'UserID', 'Content':'账号'},
    { 'Title':'UserIDErrorAllowedChars', 'Content':"账号只允许小写英文字，数字及 '_'"},
    { 'Title':'UserIDErrorMinMaxLen', 'Content':'账号 应在 ' + gv.intDefUserIDMinLen.toString() + ' 至 ' + gv.intDefUserIDMaxLen.toString() + ' 位元以内'},
    { 'Title':'UserNick', 'Content':'账户昵称'},
    { 'Title':'UserNickErrorMinMaxLen', 'Content':'账户昵称 应在 ' + gv.intDefUserNickMinLen.toString() + ' 至 ' + gv.intDefUserNickMaxLen.toString() + ' 位元以内'},
    { 'Title':'UserPW', 'Content':'账户密碼'},
    { 'Title':'UserPWConfirm', 'Content':'确认密码'},
    { 'Title':'UserPWErrorMinMaxLen', 'Content':'账户密码 应在 ' + gv.intDefUserPWMinLen.toString() + ' 至 ' + gv.intDefUserPWMaxLen.toString() + ' 位元以内'},
    { 'Title':'Videos', 'Content':'视频'},
    { 'Title':'VideoDecrypted', 'Content':'视频已解密并拷贝到相册'},
    { 'Title':'VideoDeleted', 'Content':'视频已被删除'},
    { 'Title':'VideoErrorUnsupport', 'Content':'不支持的视频档案'},
    { 'Title':'Yes', 'Content':'是'},
    { 'Title':'YourAccountHasBeenDisabled', 'Content':'您的账户已被冻结'},

    { 'Title':'HelpFreeModeTitle', 'Content':'帮助'},
    { 'Title':'HelpFreeModeTitle00', 'Content':'如何回到本【帮助】页面'},
    { 'Title':'HelpFreeModeTitle10', 'Content':'1. 什么是 MMS 播放器'},
    { 'Title':'HelpFreeModeTitle20', 'Content':'2. 秘密录像的视频储存在那里？'},
    { 'Title':'HelpFreeModeTitle30', 'Content':'3. 什么是免费模式'},
    { 'Title':'HelpFreeModeTitle40', 'Content':'4. 延长免费模式'},
    { 'Title':'HelpFreeModeTitle50', 'Content':'5. 免费模式到期会发生什么事？'},
    { 'Title':'HelpFreeModeTitle60', 'Content':'6. 购买【收费模式分钟】'},
    { 'Title':'HelpFreeModeContent00', 'Content':'登录后，点击【个人资料】，再输入一次密码，然后点击【帮助】'},
    { 'Title':'HelpFreeModeContent10', 'Content':'MMS 播放器是一个【秘密录像机】，当您在【播放器】页选择了一个在您手机里的视频，并按下【播放】键后，手机在播放视频的同时，会使用手机的前摄像头【秘密录像】，要停止播放视频和录像，只需要按【暂停】键。'},
    { 'Title':'HelpFreeModeContent20', 'Content':"秘密录像的视频加密并储存在您手机的秘密储存区，您只可以在【私密模式】下查看这些视频，请在【设置】／【个人资料】里进入【私密模式】。您也可以在【私密模式】里解密视频，解密的视频将会被拷贝到手机相册里。"},
    { 'Title':'HelpFreeModeContent30', 'Content':'在免费模式，您可以无限录制视频，但是视频会被分割为每个档案最长 1 分钟。举例，一个 2 分 30 秒的视频，会被分割为 3 个档案，头两个档案 1 分钟，最后一个档案 30 秒。档案和档案之间有 3 秒左右的间隔，就是储存该视频的时间。'},
    { 'Title':'HelpFreeModeContent40', 'Content':'免费模式为期 30 天，由注册日起算，您可以付费延期，现在的费率是每年 10 元人民币！！！'},
    { 'Title':'HelpFreeModeContent50', 'Content':'当免费期结束后，您每次在【播放器】页面里按【播放】视频键，系统只会录制 1 分钟的视频。1 分钟后，视频会继续播放，但录像会结束。如果需要继续录像，您需要先暂停视频播放，并重新按【播放】键，又可以再录 1 分钟。'},
    { 'Title':'HelpFreeModeContent60', 'Content':'您可以付费购买【收费模式分钟】，每分钟只需要 0.1 元人民币。在【收费模式】下，您可以录制长视频，视频长度只受您的【收费模式余下分钟】限制，收费模式下首分钟的录制是免费的，举例：录制一个 2 分 30 秒的视频，只会计算 2 分钟的时间。'},
  ];

  // vars for Traditional Chinese
  static var listStrings_TC = [
    // General
    { 'Title':'AccountDisabled', 'Content':'賬戶已被凍結，請聯繫我們'},
    { 'Title':'Activate', 'Content':'激活'},
    { 'Title':'ActivateAccount', 'Content':'激活賬戶'},
    { 'Title':'ActivateAlready', 'Content':'賬戶之前已經激活成功'},
    { 'Title':'ActivateError', 'Content':'激活碼不正確'},
    { 'Title':'ActivateErrorTimeout', 'Content':'激活失敗：超時，請稍後再試'},
    { 'Title':'ActivateSuccess', 'Content':'賬戶激活成功'},
    { 'Title':'ActivationCode', 'Content':'激活碼'},
    { 'Title':'ActivationCodeWarning', 'Content':'激活電郵可能在垃圾郵箱裏'},
    { 'Title':'ActivationEmailSent', 'Content':'已發送激活電郵'},
    { 'Title':'Admin', 'Content':'Admin'},
    { 'Title':'AdminVideo', 'Content':'Admin Video'},
    { 'Title':'AreYouSure', 'Content':'確定嗎'},
    { 'Title':'CannotDeletePlayingVideo', 'Content':'不能刪除正在播放的視頻'},
    { 'Title':'Cancel', 'Content':'取消'},
    { 'Title':'Change', 'Content':'更改'},
    { 'Title':'ChangeEmailNeedActivateAgain', 'Content':'若更改電郵需要重新激活賬戶'},
    { 'Title':'ChangePassword', 'Content':'更改密碼'},
    { 'Title':'CheckPassword', 'Content':'檢查密碼'},
    { 'Title':'Confirm', 'Content':'確定'},
    { 'Title':'DecryptVideo', 'Content':'解密視頻'},
    { 'Title':'DecryptVideoWarning1', 'Content':'解密的視頻將會被拷貝到相冊，您確定嗎'},
    { 'Title':'DeleteVideo', 'Content':'刪除視頻'},
    { 'Title':'DeleteVideoWarning1', 'Content':'私密模式里的視頻將永遠被刪除（已經解密並保存到相冊的視頻不會被影響），您確定嗎'},
    { 'Title':'Download', 'Content':'下載'},
    { 'Title':'DownloadNewVersion', 'Content':'下載新版本'},
    { 'Title':'DownloadNewVersionContent01', 'Content':'有新的 App 版本，您必須下載並安裝新版本才能繼續！！！'},
    { 'Title':'DownloadNewVersionContent02', 'Content':'如果下面的【下載】鍵不能下載新版本，請手動拷貝以下網址到瀏覽器，並且下載及安裝新版本。'},
    { 'Title':'DownloadNewVersionContent03', 'Content':'下載的 apk 應該可以在【文件管理器】找到'},
    { 'Title':'DownloadNewVersionError', 'Content':'無法啟動瀏覽器，請自行下載'},
    { 'Title':'Duration', 'Content':'時長'},
    { 'Title':'EmailAddress', 'Content':'電郵地址'},
    { 'Title':'EmailAddressFormatError', 'Content':'電郵地址格式不正確'},
    { 'Title':'EmailAddressRegisterWarning', 'Content':'激活碼將會透過電郵發送給您'},
    { 'Title':'EmailChangedNeedActivateAgain', 'Content':'已更改電郵，您需要重新激活賬戶'},
    { 'Title':'EmailNotFound', 'Content':'電郵地址不存在'},
    { 'Title':'FreeModeExpiryDate', 'Content':'免費模式到期日'},
    { 'Title':'ForgetPassword', 'Content':'忘記密碼'},
    { 'Title':'Help', 'Content':'幫助'},
    { 'Title':'Home', 'Content':'首頁'},
    { 'Title':'LeavePrivate', 'Content':'離開私密'},
    { 'Title':'Login', 'Content':'登錄'},
    { 'Title':'LoginErrorLoginAgain', 'Content':'登入失敗：請重新登入'},
    { 'Title':'LoginErrorReLogin', 'Content':'另一用戶登入了您的賬戶，請重新登入'},
    { 'Title':'LoginErrorSystem', 'Content':'登入失敗：系統錯誤，請稍後再試'},
    { 'Title':'LoginErrorTimeout', 'Content':'登入失敗：超時'},
    { 'Title':'LoginErrorUserIDPassword', 'Content':'登入失敗：賬號 及 密碼不匹配'},
    { 'Title':'LoginSuccess', 'Content':'登入成功'},
    { 'Title':'Logout', 'Content':'登出'},
    { 'Title':'MoreVideos', 'Content':'更多視頻'},
    { 'Title':'NetworkConnected', 'Content':'已連接網絡'},
    { 'Title':'NetworkDisconnected', 'Content':'網絡已斷開'},
    { 'Title':'NetworkDisconnectedTryLater', 'Content':'網絡已斷開，請稍後再試'},
    { 'Title':'No', 'Content':'否'},
    { 'Title':'NothingChanged', 'Content':'沒有任何改變'},
    { 'Title':'NoMoreVideos', 'Content':'沒有更多視頻了'},
    { 'Title':'NoVideoFound', 'Content':'沒有視頻檔案'},
    { 'Title':'NoVideoRecordingInPrivateMode', 'Content':'私密模式下不再錄像'},
    { 'Title':'OldPasswordCannotBeTheSameAsNewPassword', 'Content':'舊密碼不能和新密碼一樣'},
    { 'Title':'OldPasswordIsNotCorrect', 'Content':'舊密碼不正確'},
    { 'Title':'PasswordChanged', 'Content':'密碼已更改'},
    { 'Title':'PasswordIsNotCorrect', 'Content':'密碼不正確'},
    { 'Title':'PasswordNew', 'Content':'新密碼'},
    { 'Title':'PasswordOld', 'Content':'舊密碼'},
    { 'Title':'PayModeMinLeft', 'Content':'收費模式餘下分鐘'},
    { 'Title':'PermissionAudio', 'Content':'請先允許錄音權限'},
    { 'Title':'PermissionCamera', 'Content':'請先允許相機權限'},
    { 'Title':'PermissionExternal', 'Content':'請先允許讀寫權限'},
    { 'Title':'PersonalInformation', 'Content':'個人資料'},
    { 'Title':'PersonalInformationChanged', 'Content':'個人資料已更改'},
    { 'Title':'Player', 'Content':'播放器'},
    { 'Title':'PlsCheckEmailForIDAndPasword', 'Content':'賬號及密碼已發送到您的電郵'},
    { 'Title':'PlsLoginFirst', 'Content':'請先登錄'},
    { 'Title':'Private', 'Content':'私密'},
    { 'Title':'PrivateMode', 'Content':'私密模式'},
    { 'Title':'Register', 'Content':'註冊'},
    { 'Title':'RegisterErrorConfirmPassword', 'Content':'確認密碼必須和密碼一樣'},
    { 'Title':'RegisterErrorSystem', 'Content':'註冊失敗：系統錯誤，請稍後再試'},
    { 'Title':'RegisterErrorTimeout', 'Content':'註冊失敗：超時'},
    { 'Title':'RegisterErrorUserIDExist', 'Content':'註冊失敗：賬號已存在'},
    { 'Title':'RegisterSuccess', 'Content':'註冊成功，請檢查激活電郵'},
    { 'Title':'Return', 'Content':'返回'},
    { 'Title':'SelectLanguage', 'Content':'選擇語言'},
    { 'Title':'Send', 'Content':'發送'},
    { 'Title':'SendActivationEmailAgain', 'Content':'重新發送激活電郵'},
    { 'Title':'SelectVideo', 'Content':'選擇視頻'},
    { 'Title':'Settings', 'Content':'設置'},
    { 'Title':'SystemError', 'Content':'系統錯誤，請稍後再試'},
    { 'Title':'SystemErrorOpenAgain', 'Content':'系統錯誤，請關閉並重啟 App!!!'},
    { 'Title':'TimeoutError', 'Content':'超時錯誤，請稍後再試'},
    { 'Title':'UserID', 'Content':'賬號'},
    { 'Title':'UserIDErrorAllowedChars', 'Content':"賬戶只允許小寫英文字，數字及 '_'"},
    { 'Title':'UserIDErrorMinMaxLen', 'Content':'賬號 應在 ' + gv.intDefUserIDMinLen.toString() + ' 至 ' + gv.intDefUserIDMaxLen.toString() + ' 位元以內'},
    { 'Title':'UserNick', 'Content':'賬戶暱稱'},
    { 'Title':'UserNickErrorMinMaxLen', 'Content':'賬號 應在 ' + gv.intDefUserNickMinLen.toString() + ' 至 ' + gv.intDefUserNickMaxLen.toString() + ' 位元以內'},
    { 'Title':'UserPW', 'Content':'賬戶密碼'},
    { 'Title':'UserPWConfirm', 'Content':'確認密碼'},
    { 'Title':'UserPWErrorMinMaxLen', 'Content':'賬戶密碼 應在' + gv.intDefUserPWMinLen.toString() + ' 至 ' + gv.intDefUserPWMaxLen.toString() + ' 位元以內'},
    { 'Title':'Videos', 'Content':'視頻'},
    { 'Title':'VideoDecrypted', 'Content':'視頻已解密並拷貝到相冊'},
    { 'Title':'VideoDeleted', 'Content':'視頻已被刪除'},
    { 'Title':'VideoErrorUnsupport', 'Content':'不支持的視頻檔案'},
    { 'Title':'Yes', 'Content':'是'},
    { 'Title':'YourAccountHasBeenDisabled', 'Content':'您的賬戶已被凍結'},

    { 'Title':'HelpFreeModeTitle', 'Content':'幫助'},
    { 'Title':'HelpFreeModeTitle00', 'Content':'如何回到本【幫助】頁面'},
    { 'Title':'HelpFreeModeTitle10', 'Content':'1. 什麼是 MMS 播放器'},
    { 'Title':'HelpFreeModeTitle20', 'Content':'2. 秘密錄像的視頻儲存在那裡？'},
    { 'Title':'HelpFreeModeTitle30', 'Content':'3. 什麼是免費模式'},
    { 'Title':'HelpFreeModeTitle40', 'Content':'4. 延長免費模式'},
    { 'Title':'HelpFreeModeTitle50', 'Content':'5. 免費模式到期會發生什麼事？'},
    { 'Title':'HelpFreeModeTitle60', 'Content':'6. 購買【收費模式分鐘】'},
    { 'Title':'HelpFreeModeContent00', 'Content':'登錄後，點擊【個人資料】，再輸入一次密碼，然後點擊【幫助】'},
    { 'Title':'HelpFreeModeContent10', 'Content':'MMS 播放器是一個【秘密錄像機】，當您在【播放器】頁選擇了一個在您手機里的視頻，并按下【播放】鍵後，手機在播放視頻的同時，會使用手機的前攝像頭【秘密錄像】，要停止播放視頻和錄像，只需要按【暫停】鍵。'},
    { 'Title':'HelpFreeModeContent20', 'Content':"秘密錄像的視頻加密並儲存在您手機的秘密儲存區，您只可以在【私密模式】下查看這些視頻，請在【設置】／【個人資料】里進入【私密模式】。您也可以在【私密模式】里解密視頻，解密的視頻將會被拷貝到手機的相冊里。"},
    { 'Title':'HelpFreeModeContent30', 'Content':'在免費模式，您可以無限錄製視頻，但是視頻會被分割為每個檔案最長 1 分鐘。舉例，一個 2 分 30 秒的視頻，會被分割為 3 個檔案，頭兩個檔案 1 分鐘，最後一個檔案 30 秒。檔案和檔案之間有 3 秒左右的間隔，就是儲存該視頻的時間。'},
    { 'Title':'HelpFreeModeContent40', 'Content':'免費模式為期 30 天，由註冊日起算，您可以付費延期，現在的費率是每年 10 元人民幣！！！'},
    { 'Title':'HelpFreeModeContent50', 'Content':'當免費期結束後，您每次在【播放器】頁面里按【播放】視頻鍵，系統只會錄製 1 分鐘的視頻。1 分鐘後，視頻會繼續播放，但錄像會結束。如果需要繼續錄像，您需要先暫停視頻播放，並重新按【播放】鍵，又可以再錄 1 分鐘。'},
    { 'Title':'HelpFreeModeContent60', 'Content':'您可以付費購買【收費模式分鐘】，每分鐘只需要 0.1 元人民幣。在【收費模式】下，視頻長度只受您的【收費模式餘下分鐘】限制，收費模式下首分鐘的錄製是免費的，舉例：錄製一個 2 分 30 秒的視頻，只會計算 2 分鐘的時間。'},

  ];

  // To set Current Language
  static void setLang(strLangParm) {
    if (strLangParm == '') {
      strLang = 'EN';
    } else {
      strLang = strLangParm;
    }
  }

  // Get a string by 'Title', and return 'Content',
  // According to the Current Language strLang
  static String gs(strKey) {
    switch (strLang) {
      case 'EN':
        for (var i=0; i< listStrings_EN.length; i++) {
          if (listStrings_EN[i]['Title'] == strKey) {
            return listStrings_EN[i]['Content'];
          }
        }
        ut.showToast('LangStrings Empty');
        return '';
      case 'SC':
        for (var i=0; i< listStrings_SC.length; i++) {
          if (listStrings_SC[i]['Title'] == strKey) {
            return listStrings_SC[i]['Content'];
          }
        }
        ut.showToast('LangStrings Empty');
        return '';
      case 'TC':
        for (var i=0; i< listStrings_TC.length; i++) {
          if (listStrings_TC[i]['Title'] == strKey) {
            return listStrings_TC[i]['Content'];
          }
        }
        ut.showToast('LangStrings Empty');
        return '';
    }
  }


  static var listZFB = [
    // General
    { 'Title':0.0, 'Content':'https://qr.alipay.com/fkx095563fjb3q2jfcklbf6'},
    { 'Title':10.0, 'Content':'https://qr.alipay.com/fkx04431fbpxncaurvsse7e'},
  ];

  static String gzfb(double dblAmt) {
    for (var i=0; i< listStrings_EN.length; i++) {
      if (listZFB[i]['Title'] == dblAmt) {
        return listZFB[i]['Content'];
      }
    }
    return '';
  }
}
