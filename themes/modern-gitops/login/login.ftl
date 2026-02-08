<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??>
    <div class="modern-gitops-container">
        <!-- Animated background particles -->
        <div class="particles">
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
            <div class="particle"></div>
        </div>
        <!-- Left Side - Branding -->
        <div class="modern-gitops-branding">
            <div class="brand-logo">
                <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="20" cy="20" r="18" stroke="#00D4FF" stroke-width="2" fill="none"/>
                    <circle cx="20" cy="20" r="8" fill="#00D4FF"/>
                </svg>
                <span class="brand-text">Modern <span class="brand-highlight">GitOps</span></span>
            </div>
            
            <div class="brand-content">
                <h1 class="brand-title">
                    Cloud-Native<br>
                    <span class="brand-title-highlight">Infrastructure</span><br>
                    Made Simple
                </h1>
                
                <p class="brand-description">
                    Standardized Kubernetes platform with automated provisioning, continuous delivery, and pre-configured cloud-native tools.
                </p>
                
                <ul class="brand-features">
                    <li>
                        <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <circle cx="12" cy="12" r="10"/>
                            <path d="M12 6v6l4 2"/>
                        </svg>
                        <span>Multi-cloud ready: AWS EKS, Azure AKS, Local KinD</span>
                    </li>
                    <li>
                        <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="#00D4FF" stroke-width="2">
                            <path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/>
                        </svg>
                        <span>Automated GitOps & MLOps pipelines</span>
                    </li>
                    <li>
                        <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="#FF6B6B" stroke-width="2">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                            <path d="M7 11V7a5 5 0 0110 0v4"/>
                        </svg>
                        <span>Enterprise-grade security with Keycloak SSO</span>
                    </li>
                </ul>
            </div>
            
            <div class="brand-footer">
                <span class="footer-text">POWERED BY</span>
                <div class="footer-logos">
                    <!-- Kubernetes -->
                    <svg class="footer-logo" viewBox="0 0 32 32" fill="#326CE5">
                        <path d="M15.9.476a2.14 2.14 0 0 0-.823.218L3.932 6.01c-.582.277-1.005.804-1.15 1.432L.054 19.373c-.13.56-.025 1.147.3 1.627l6.93 10.2c.395.59 1.027.97 1.737.99l12.658.26c.708.025 1.39-.29 1.835-.83l7.525-9.56c.357-.49.506-1.09.417-1.67L29.2 8.32c-.104-.63-.47-1.18-.995-1.5L16.85.55c-.255-.16-.544-.24-.838-.25a2 2 0 0 0-.112.176zm.07 2.63c.064.002.127.023.18.06l5.275 3.74c.136.096.196.266.148.42l-1.453 6.05c-.048.16-.18.29-.35.33l-5.49 1.38c-.16.04-.333-.01-.436-.13l-3.39-4.06c-.108-.13-.14-.31-.076-.46l2.24-6.22c.054-.16.19-.28.36-.3l2.992-.81zm.078.59l-2.75.6-2.08 5.67 3.12 3.73 5.05-1.27 1.34-5.56-4.68-3.17zm.39.46l3.88 2.63-.52 2.2-3.38-4.83zm-3.903.91l-.09.46 1.62 2.27-.57-2.53-.96-.2zm4.622 1.09l1.462 2.07-2.16.74.698-2.81zm-5.296.46l.63 2.82-2.29-.2 1.66-2.62zm3.27 1.15l.18 2.73-2.42.6.13-2.55 2.11-.78zm-2.69 1.11l-.12 2.35-2.27-.8 2.39-.55zm-.074 3.363l5.09-1.28-.07.49-4.56 2.86-.46-2.07zm-4.625 2.18l.577 1.29 3.72 1.32-3.22-2.14-1.077-.47zm11.47.59l-.238 1.21-1.932-1.42 2.17.21zm-4.612.188l3.016 2.17-4.476 2.59.53-4.11.93-.65zm-1.812 1.272l-.454 3.5-2.78-3.1 3.234-.4zm5.294.92l-3.62 2.09 4.034.09-.414-2.18zm-9.193.13l2.78 3.14-3.706.15.926-3.29zm5.012 2.97l-4.03-.09 4.09.86-.06-.77zm11.37-5.29c.15.03.24.18.21.33l-1.13 5.12c-.03.13-.14.24-.27.27l-5.23.95c-.08.014-.16 0-.23-.04l.2-1.03 4.555-.83.86-3.97 1.04.21zm-22.405.18l.895 1.94 4.89 2.3-.64.26-5.09-2.34-.058-2.16zm22.15 1.39l-.567 2.62-3.04.55 1.32-.98 2.287-2.19zm-21.4.63l.04 1.46 3.037 1.55-3.077-3.01zm4.49 1.67l.142.08.23 1.05-1.22-1.01.848-.12zm12.14.57l-1.62 1.2h-3.27l5.02-.82-.13-.38zm-4.27 1.72l.19.49 2.097.42-2.287-.91zm-6.4.14l2.33 1.95.98-.4-3.31-1.55zm6.68 1.22l-2.21-.45 2.71.89-.5-.44z"/>
                    </svg>
                    <!-- ArgoCD -->
                    <svg class="footer-logo" viewBox="0 0 32 32" fill="#EF7B4D">
                        <circle cx="16" cy="16" r="14"/>
                    </svg>
                    <!-- Terraform -->
                    <svg class="footer-logo" viewBox="0 0 32 32" fill="#7B42BC">
                        <path d="M12.042 6.858v8.088l6.996 4.053V10.91l-6.996-4.053zm7.622 0L12.67 10.91v8.088l6.996-4.053V6.858zm.626 8.676v8.088l6.996-4.053v-8.088l-6.996 4.053zm-15.576-4.51v8.089l6.996 4.052v-8.088l-6.996-4.052z"/>
                    </svg>
                    <!-- Grafana -->
                    <svg class="footer-logo" viewBox="0 0 32 32" fill="#F46800">
                        <path d="M16 2C8.268 2 2 8.268 2 16s6.268 14 14 14 14-6.268 14-14S23.732 2 16 2zm0 24c-5.523 0-10-4.477-10-10S10.477 6 16 6s10 4.477 10 10-4.477 10-10 10z"/>
                    </svg>
                </div>
            </div>
        </div>
        
        <!-- Right Side - Login Form -->
        <div class="modern-gitops-login">
            <div class="login-card">
                <div class="login-header">
                    <h2 class="login-title">Welcome back</h2>
                    <p class="login-subtitle">Sign in to access your GitOps dashboard</p>
                </div>
                
                <#if realm.password>
                <div class="login-auth-type">
                    <span class="auth-indicator">›_ $ authenticate _</span>
                </div>
                
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="form-group">
                        <label for="username" class="form-label">
                            <svg class="label-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M20 21v-2a4 4 0 00-4-4H8a4 4 0 00-4 4v2"/>
                                <circle cx="12" cy="7" r="4"/>
                            </svg>
                            <#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>
                        </label>
                        <input tabindex="1" id="username" class="form-input" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="username" 
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                               placeholder="Enter your username"/>
                        <#if messagesPerField.existsError('username','password')>
                            <span class="form-error" aria-live="polite">
                                ${kcSanitize(messagesPerField.getFirstError('username','password'))?no_esc}
                            </span>
                        </#if>
                    </div>

                    <div class="form-group">
                        <label for="password" class="form-label">
                            <svg class="label-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                                <path d="M7 11V7a5 5 0 0110 0v4"/>
                            </svg>
                            ${msg("password")}
                        </label>
                        <input tabindex="2" id="password" class="form-input" name="password" type="password" autocomplete="current-password"
                               aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                               placeholder="Enter your password"/>
                    </div>

                    <div class="form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                        <div class="remember-me">
                            <label class="checkbox-label">
                                <#if login.rememberMe??>
                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked>
                                <#else>
                                <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox">
                                </#if>
                                <span class="checkbox-text">${msg("rememberMe")}</span>
                            </label>
                        </div>
                        </#if>
                        
                        <#if realm.resetPasswordAllowed>
                        <a tabindex="5" class="forgot-password" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
                        </#if>
                    </div>

                    <div class="form-submit">
                        <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                        <button tabindex="4" class="submit-button" name="login" id="kc-login" type="submit">
                            ${msg("doLogIn")}
                            <svg class="button-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M5 12h14M12 5l7 7-7 7"/>
                            </svg>
                        </button>
                    </div>
                </form>
                </#if>
                
                <#if realm.password && social.providers??>
                <div class="social-login">
                    <div class="social-divider">
                        <span>or continue with</span>
                    </div>
                    
                    <div class="social-buttons">
                        <#list social.providers as p>
                        <a id="social-${p.alias}" class="social-button social-${p.alias}" type="button" href="${p.loginUrl}">
                            <#if p.alias == "github">
                            <svg class="social-icon" viewBox="0 0 24 24" fill="currentColor">
                                <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                            </svg>
                            <span>GitHub</span>
                            <#elseif p.alias == "google">
                            <svg class="social-icon" viewBox="0 0 24 24">
                                <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                                <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                                <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                                <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                            </svg>
                            <span>Google</span>
                            <#else>
                            <span class="social-icon-placeholder">${p.displayName!}</span>
                            <span>${p.displayName!}</span>
                            </#if>
                        </a>
                        </#list>
                    </div>
                </div>
                </#if>
                
                <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                <div id="kc-registration" class="register-link">
                    <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
                </div>
                </#if>
                
                <div class="login-footer">
                    <span class="footer-text">By signing in, you agree to our <a href="#" class="footer-link">Terms of Service</a> and <a href="#" class="footer-link">Privacy Policy</a></span>
                </div>
            </div>
        </div>
    </div>
</@layout.registrationLayout>
