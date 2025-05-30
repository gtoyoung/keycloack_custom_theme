<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
  <#if section == "title">
    시담 비밀번호 재설정

  <#elseif section == "header">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

  <#elseif section == "message">
    <#if message?has_content>
      <div class="alert alert-${message.type}">
        <span class="message-text">${message.summary?no_esc}</span>
      </div>
    </#if>

  <#elseif section == "app-head">
    <div class="app-name-wrapper" style="text-align:center; margin-bottom: 20px;">
      <img src="${url.resourcesPath}/img/sidam_logo.png" alt="시담 로고" style="width: 273px;"/>
      <p style="color: #6f4e37; font-size: 0.95rem;">비밀번호를 잊으셨나요?<br/>이메일로 재설정 링크를 보내드립니다.</p>
    </div>

  <#elseif section == "form">
    <form id="kc-reset-password-form" action="${url.loginResetCredentialsUrl}" method="post" style="display: flex; flex-direction: column; gap: 1rem;">
      <label style="display: flex; flex-direction: column; gap: 0.5rem;">
        <span style="font-weight: bold;">등록된 이메일 주소</span>
        <input type="email" id="email" name="email" required autofocus
               style="padding: 0.5rem; border: 1px solid #ccc; border-radius: 4px; font-family: 'Nanum Gothic';" />
      </label>

      <button type="submit" class="submit"
              style="background-color:#b5651d; color:#fff; border:none; padding:10px 20px; border-radius:4px; font-weight:bold; cursor: pointer;">
        재설정 링크 받기
      </button>
    </form>

    <p style="margin-top: 15px; font-size: 0.9em; text-align: center;">
      기억나셨나요? <a href="${url.loginUrl}" style="color: #b5651d; text-decoration: underline;">로그인</a>
    </p>
  </#if>
</@layout.registrationLayout>
