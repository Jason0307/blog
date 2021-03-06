<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset = "utf-8">
<title>腾讯微博登录组件</title>
<style type="text/css">
.login_btn{display:inline-block;background-repeat:no-repeat;font-size:12px;text-decoration:none;color:#055675;}
.login_btn00{width:230px;height:48px;background-image:url(http://mat1.gtimg.com/app/opent/images/websites/login/login_icon_1.png);}
.login_btn01{width:170px;height:32px;background-image:url(http://mat1.gtimg.com/app/opent/images/websites/login/login_icon_2.png);}
.login_btn02{width:120px;height:24px;background-image:url(http://mat1.gtimg.com/app/opent/images/websites/login/login_icon_3.png);}
.login_btn03{width:105px;height:16px;background-image:url(http://mat1.gtimg.com/app/opent/images/websites/login/login_icon_4.png);}
        .login_btn10{padding-left:20px;background-image:url(http://mat1.gtimg.com/app/opent/images/websites/share/weiboicon16.png);}
        .login_btn20{}
        img{border:none;vertical-align:middle;}
        .logout_btn{display:none;margin:0px;padding:0px;font-size:12px;line-height:1.75;font-family:Arial,Helvetica,sans-serif;vertical-align:middle;color:rgb(100,100,100,);}
        .head_img{display:inline-block;vertical-align:middle;}
        .head_img img{vertical-align:middle;}
        .logout_right{display:inline-block;vertical-align:middle;}
        .nick_text{display:inline-block;margin-left:4px;text-decoration:initial;color:rgb(0,120,182);}
        .logout_text{margin-left:5px;vertical-align:middle;text-decoration:initial;color:rgb(153,153,153);cursor:pointer;}
      </style>
      <script src="http://mat1.gtimg.com/app/openjs/openjs.js"></script>
    </head>
    <body>
      <div class="qq_account_log" id="qq_account_log">
        <a class="login_btn login_btn10" id="login_btn" href="javascript:;">
		微博登录        </a>
        <div class="logout_btn" id="logout_btn"></div>
</div>
<script defer="defer">
var login_btn = document.getElementById("login_btn"),
logout_btn = document.getElementById("logout_btn");
function login(){
T.login(function(loginStatus){
getUserInfo();
login_btn.style.display = "none"
logout_btn.style.display = "inline-block";
},function(loginError){
alert(loginError.message);
});
}
function logout(){
logout_btn.style.display = "none";
login_btn.style.display = "inline-block";
T.logout();
}
function getUserInfo(){
T.api("/user/info")
.success(function(response){
if(response.ret === 0){
var html="",imgsrc="",data=response.data;
html = '<a class="head_img" href="http://t.qq.com/'+ data.name +'" target="_blank"><img src="'+ imgsrc +'" /></a><span class="logout_right"><a class="nick_text" href="http://t.qq.com/' + data.name +'" target="_blank" title="'+data.nick +'">'+ data.nick +'</a><a class="logout_text" id="logout_text"　href="javascript:void(0);">退出</a></span>';
logout_btn.innerHTML = html;
var logout_text = document.getElementById("logout_text");
logout_text.onclick = logout;
}else{
}
})
.error(function(code,message){
alert(message);
});
}
function init(){
T.init({appkey:801425297});
if(!T.loginStatus()){
login_btn.style.display = "inline-block";
logout_btn.style.display = "none";
}else{
getUserInfo();
login_btn.style.display = "none";
logout_btn.style.display = "inline-block";
}
login_btn.onclick = login;
}
init();
</script>
</body>
</html>