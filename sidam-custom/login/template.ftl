<#macro registrationLayout bodyClass="" displayInfo=false displayMessage=true>
<!DOCTYPE 
  html
  PUBLIC 
  "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="robots" content="noindex, nofollow">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>시담 - 힐링을 위한 시 공유 플랫폼</title>
    <link href="${url.resourcesPath}/img/sidam_logo.png" rel="icon"/>
    <#-- CSS 파일 추가 -->
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    <style>
      body {
        font-family: 'Nanum Gothic', sans-serif;
        background: #f8f0e3;
        color: #3c3c3c;
      }
      .login-form-wrapper {
        max-width: 400px;
        margin: 50px auto;
        background: #fff9f4;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        padding: 30px;
      }
      .login-form-inner {
        display: flex;
        flex-direction: column;
      }
    </style>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
</head>
<body class="${bodyClass}">
    <#nested "header">
    <div class="login-form-wrapper">
      <div class="login-form-inner">
        <#nested "app-head">
        <#if displayMessage && message?has_content>
          <#nested "message">
        </#if>
        <#nested "form">
      </div>
    </div>
</body>
</html>
</#macro>