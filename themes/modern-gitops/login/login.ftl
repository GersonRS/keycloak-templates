<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','password') displayInfo=realm.password && realm.registrationAllowed && !registrationDisabled??>
    <div class="modern-gitops-container">
        <!-- Animated Background -->
        <div class="animated-background">
            <div class="grid-pattern"></div>
            <div class="gradient-orb gradient-orb-1"></div>
            <div class="gradient-orb gradient-orb-2"></div>
            <div class="gradient-orb gradient-orb-3"></div>
            <div class="floating-node floating-node-1"></div>
            <div class="floating-node floating-node-2"></div>
            <div class="floating-node floating-node-3"></div>
            <div class="floating-node floating-node-4"></div>
        </div>
        
        <!-- Left Panel - Branding -->
        <div class="modern-gitops-branding">
            <!-- Logo -->
            <div class="brand-logo">
                <svg width="48" height="48" viewBox="0 0 48 48" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M24 4L42 14V34L24 44L6 34V14L24 4Z" stroke="hsl(207 90% 54%)" stroke-width="1.5" fill="none"/>
                    <path d="M24 16V32M16 20L24 16L32 20M16 28L24 32L32 28" stroke="hsl(187 100% 42%)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                </svg>
                <div class="brand-text">
                    <span class="brand-name">Modern <span class="highlight">GitOps</span></span>
                    <span class="brand-stack">STACK</span>
                </div>
            </div>
            
            <!-- Content -->
            <div class="brand-content">
                <div>
                    <h1 class="brand-title">
                        Cloud-Native<br>
                        <span class="text-gradient">Infrastructure</span><br>
                        Made Simple
                    </h1>
                    <p class="brand-description">
                        Standardized Kubernetes platform with automated provisioning, continuous delivery, and pre-configured cloud-native tools.
                    </p>
                </div>
                
                <!-- Features -->
                <ul class="brand-features">
                    <li>
                        <div class="feature-icon-wrapper">
                            <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M17.5 19H9a7 7 0 1 1 6.71-9h1.79a4.5 4.5 0 1 1 0 9Z"/>
                            </svg>
                        </div>
                        <span>Multi-cloud ready: AWS EKS, Azure AKS, Local KinD</span>
                    </li>
                    <li>
                        <div class="feature-icon-wrapper secondary">
                            <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <path d="M13 2L3 14h9l-1 8 10-12h-9l1-8z"/>
                            </svg>
                        </div>
                        <span>Automated GitOps & MLOps pipelines</span>
                    </li>
                    <li>
                        <div class="feature-icon-wrapper accent">
                            <svg class="feature-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                            </svg>
                        </div>
                        <span>Enterprise-grade security with Keycloak SSO</span>
                    </li>
                </ul>
            </div>
            
            <!-- Tech Stack -->
            <div class="brand-footer">
                <span class="powered-text">Powered by</span>
                <div class="tech-stack-icons">
                    <svg class="kubernetes" viewBox="0 0 32 32" fill="currentColor">
                        <path d="M15.9.476a2.14 2.14 0 0 0-.823.218L3.932 6.01c-.582.277-1.005.804-1.15 1.432L.054 19.373c-.13.56-.025 1.147.3 1.627l6.93 10.2c.395.59 1.027.97 1.737.99l12.658.26c.708.025 1.39-.29 1.835-.83l7.525-9.56c.357-.49.506-1.09.417-1.67L29.2 8.32c-.104-.63-.47-1.18-.995-1.5L16.85.55c-.255-.16-.544-.24-.838-.25a2 2 0 0 0-.112.176z"/>
                    </svg>
                    <svg class="argocd" viewBox="0 0 32 32" fill="currentColor">
                        <circle cx="16" cy="16" r="14"/>
                    </svg>
                    <svg class="terraform" viewBox="0 0 32 32" fill="currentColor">
                        <path d="M12.042 6.858v8.088l6.996 4.053V10.91l-6.996-4.053zm7.622 0L12.67 10.91v8.088l6.996-4.053V6.858zm.626 8.676v8.088l6.996-4.053v-8.088l-6.996 4.053zm-15.576-4.51v8.089l6.996 4.052v-8.088l-6.996-4.052z"/>
                    </svg>
                    <svg class="grafana" viewBox="0 0 32 32" fill="currentColor">
                        <circle cx="16" cy="16" r="12" fill="none" stroke="currentColor" stroke-width="3"/>
                    </svg>
                </div>
            </div>
        </div>
        
        <!-- Right Panel - Login Form -->
        <div class="modern-gitops-login">
            <div class="login-wrapper">
                <!-- Mobile logo -->
                <div class="mobile-logo">
                    <div class="brand-logo">
                        <svg width="48" height="48" viewBox="0 0 48 48" fill="none">
                            <path d="M24 4L42 14V34L24 44L6 34V14L24 4Z" stroke="hsl(207 90% 54%)" stroke-width="1.5" fill="none"/>
                            <path d="M24 16V32M16 20L24 16L32 20M16 28L24 32L32 28" stroke="hsl(187 100% 42%)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                        <div class="brand-text">
                            <span class="brand-name">Modern <span class="highlight">GitOps</span></span>
                            <span class="brand-stack">STACK</span>
                        </div>
                    </div>
                </div>
                
                <!-- Login Card -->
                <div class="login-card">
                    <div class="login-header">
                        <h2 class="login-title">Welcome back</h2>
                        <p class="login-subtitle">Sign in to access your GitOps dashboard</p>
                    </div>
                    
                    <#if message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                        <div class="alert alert-${message.type}">
                            ${kcSanitize(message.summary)?no_esc}
                        </div>
                    </#if>
                    
                    <#if realm.password>
                    <!-- Terminal header -->
                    <div class="terminal-header">
                        <svg class="terminal-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                            <polyline points="4 17 10 11 4 5"/>
                            <line x1="12" y1="19" x2="20" y2="19"/>
                        </svg>
                        <span class="terminal-prompt">$</span>
                        <span>authenticate</span>
                        <span class="terminal-cursor">_</span>
                    </div>
                    
                    <form id="kc-form-login" class="login-form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                        <!-- Username field -->
                        <div class="form-group">
                            <label for="username" class="form-label">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
                                    <circle cx="12" cy="7" r="4"/>
                                </svg>
                                <span><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></span>
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

                        <!-- Password field -->
                        <div class="form-group">
                            <label for="password" class="form-label">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                    <rect x="3" y="11" width="18" height="11" rx="2" ry="2"/>
                                    <path d="M7 11V7a5 5 0 0 1 10 0v4"/>
                                </svg>
                                <span>${msg("password")}</span>
                            </label>
                            <input tabindex="2" id="password" class="form-input" name="password" type="password" autocomplete="current-password"
                                   aria-invalid="<#if messagesPerField.existsError('username','password')>true</#if>"
                                   placeholder="Enter your password"/>
                        </div>

                        <!-- Remember me & Forgot password -->
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

                        <!-- Submit button -->
                        <div class="form-submit">
                            <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                            <button tabindex="4" class="submit-button" name="login" id="kc-login" type="submit">
                                <span>${msg("doLogIn")}</span>
                                <svg class="button-arrow" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                                    <path d="M5 12h14M12 5l7 7-7 7"/>
                                </svg>
                            </button>
                        </div>
                    </form>
                    </#if>
                    
                    <#if realm.password && social.providers??>
                    <!-- Social login -->
                    <div class="social-login">
                        <div class="social-divider">
                            <span>or continue with</span>
                        </div>
                        
                        <div class="social-buttons">
                            <#list social.providers as p>
                            <a id="social-${p.alias}" class="social-button" href="${p.loginUrl}">
                                <#if p.alias == "github">
                                <svg class="social-icon" viewBox="0 0 24 24" fill="currentColor">
                                    <path d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"/>
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
                                <span>${p.displayName!}</span>
                                </#if>
                            </a>
                            </#list>
                        </div>
                    </div>
                    </#if>
                    
                    <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
                    <div class="register-link">
                        <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
                    </div>
                    </#if>
                </div>
                
                <!-- Footer -->
                <div class="login-footer">
                    <span class="footer-text">By signing in, you agree to our <a href="#" class="footer-link">Terms of Service</a> and <a href="#" class="footer-link">Privacy Policy</a></span>
                </div>
            </div>
        </div>
    </div>
</@layout.registrationLayout>
