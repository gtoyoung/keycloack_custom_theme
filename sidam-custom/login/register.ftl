<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
  <#if section == "title">
    시담 회원 등록

  <#elseif section == "app-head">
    <div class="app-name-wrapper" style="text-align:center; margin-bottom: 30px;">
      <img src="${url.resourcesPath}/img/sidam_logo.png" alt="시담 로고" style="width: 273px;" />
      <p style="color: #6f4e37; font-size: 0.95rem; margin-top: 10px;">
        시를 쓰고, 공유하며 힐링하는 공간
      </p>
    </div>

  <#elseif section == "form">
    <form id="kc-register-form" action="${url.registrationAction}" method="post"
          style="display: flex; flex-direction: column; gap: 1.2rem;">

      <div class="form-group" style="display: flex; flex-direction: column; gap: 0.5rem;">
        <label for="email" style="font-weight: bold;">${msg("email")}</label>
        <input type="email" id="email" name="email"
               value="${(register.formData.email!'')}" required
               style="padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-family: 'Nanum Gothic';" />
      </div>

      <#if !realm.registrationEmailAsUsername>
        <div class="form-group" style="display: flex; flex-direction: column; gap: 0.5rem;">
          <label for="username" style="font-weight: bold;">${msg("username")}</label>
          <input type="text" id="username" name="username"
                 value="${(register.formData.username!'')}" required autofocus
                 style="padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-family: 'Nanum Gothic';" />
        </div>
      </#if>

      <div class="form-group" style="display: flex; flex-direction: column; gap: 0.5rem;">
        <label for="password" style="font-weight: bold;">${msg("password")}</label>
        <input type="password" id="password" name="password" required
               style="padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-family: 'Nanum Gothic';" />
      </div>

      <div class="form-group" style="display: flex; flex-direction: column; gap: 0.5rem;">
        <label for="password-confirm" style="font-weight: bold;">${msg("passwordConfirm")}</label>
        <input type="password" id="password-confirm" name="password-confirm" required
               style="padding: 10px; border: 1px solid #ccc; border-radius: 4px; font-family: 'Nanum Gothic';" />
      </div>

      <div class="form-footer" style="margin-top: 10px;">
        <button type="submit"
                style="background-color:#b5651d; color:#fff; border:none; padding:10px; width:100%; border-radius:6px; font-weight: bold; cursor: pointer;">
          ${msg("doRegister")}
        </button>
      </div>
    </form>

    <div class="form-divider" style="margin: 20px 0; text-align: center; color: #aaa; font-size: 0.85rem;">
      <span>${msg("or")}</span>
    </div>

    <div class="form-alt-link" style="text-align: center; font-size: 0.9rem;">
      <a href="${url.loginUrl}" style="color: #b5651d; text-decoration: underline;">로그인으로 돌아가기</a>
    </div>

  </#if>
</@layout.registrationLayout>
