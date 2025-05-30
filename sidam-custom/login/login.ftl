<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
  <#if section == "title">
    시담 로그인
  <#elseif section == "header">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

  <#elseif section == "app-head">
    <div class="app-name-wrapper" style="text-align:center; margin-bottom: 20px;">
      <img src="${url.resourcesPath}/img/sidam_logo.png" alt="시담 로고" style="width: 273px;"/>
      <p>시를 쓰고, 공유하며 힐링하는 공간</p>
    </div>

  <#elseif section == "message">
    <div class="alert alert-${message.type}" style="text-align: center; margin:13px;">
      <span class="message-text">${message.summary?no_esc}</span>
    </div>

  <#elseif section == "form">
    <#if realm.password>
      <div class="app-form-wrapper">
        <form id="kc-form-login" class="app-form" onsubmit="return true;" action="${url.loginAction}" method="post">
          <label>
            <div>이메일 또는 아이디</div>
            <input id="username" class="login-field" type="text" name="username" required autofocus>
          </label>

          <label>
            <div>비밀번호</div>
            <input id="password" class="login-field" type="password" name="password" required>
          </label>

          <div class="form-actions">
            <a href="${url.loginResetCredentialsUrl}"
              style="color: #b5651d; font-size: 0.9rem; text-decoration: underline; transition: color 0.3s;">
              비밀번호 찾기
            </a>

            <button class="submit" type="submit"
                    style="background-color: #b5651d; color: white; border: none; padding: 10px 20px;
                          border-radius: 6px; font-weight: bold; cursor: pointer;">
              로그인
            </button>
          </div>
        </form>

        <hr class="divider" />

        <div class="links">
          계정이 없으신가요?
          <a href="${url.registrationUrl}">회원가입</a>
        </div>
      </div>
    </#if>
  </#if>
</@layout.registrationLayout>