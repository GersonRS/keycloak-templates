<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false>

<div class="modern-gitops-container">
    <!-- Animated Background -->
    <div class="animated-background">
        <div class="grid-pattern"></div>
        <div class="gradient-orb gradient-orb-1"></div>
        <div class="gradient-orb gradient-orb-2"></div>
        <div class="gradient-orb gradient-orb-3"></div>
        <div class="floating-nodes">
            <div class="node node-1"></div>
            <div class="node node-2"></div>
            <div class="node node-3"></div>
            <div class="node node-4"></div>
            <div class="node node-5"></div>
        </div>
    </div>

    <!-- Branding Section -->
    <div class="modern-gitops-branding">
        <div class="branding-content">
            <div class="terminal-header">
                <div class="terminal-buttons">
                    <span class="terminal-btn red"></span>
                    <span class="terminal-btn yellow"></span>
                    <span class="terminal-btn green"></span>
                </div>
                <span class="terminal-title">error.sh</span>
            </div>
            <div class="terminal-body">
                <span class="terminal-prompt">$</span>
                <span class="terminal-command">handle_error</span>
                <span class="terminal-cursor">_</span>
            </div>
            
            <h1 class="brand-title">
                <span class="brand-modern">Modern</span>
                <span class="brand-gitops">GitOps</span>
                <span class="brand-stack">Stack</span>
            </h1>
            
            <p class="brand-description">
                An error has occurred during authentication
            </p>
        </div>
    </div>

    <!-- Error Section -->
    <div class="modern-gitops-login">
        <div class="login-card">
            <div class="login-header">
                <h2 class="login-title">Error</h2>
                <p class="login-subtitle">${(realm.displayName!'')}</p>
            </div>

            <div class="login-form">
                <div class="alert alert-error">
                    <svg class="alert-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="12" cy="12" r="10"></circle>
                        <line x1="12" y1="8" x2="12" y2="12"></line>
                        <line x1="12" y1="16" x2="12.01" y2="16"></line>
                    </svg>
                    <span class="alert-message">
                        <#if message?has_content>
                            ${kcSanitize(message.summary)?no_esc}
                        <#else>
                            An unexpected error occurred
                        </#if>
                    </span>
                </div>

                <#if skipLink??>
                <#else>
                    <#if client?? && client.baseUrl?has_content>
                        <a href="${client.baseUrl}" class="btn btn-primary" style="margin-top: 1.5rem; display: block; text-align: center; text-decoration: none;">
                            Back to Application
                        </a>
                    </#if>
                </#if>
            </div>
        </div>

        <div class="login-footer">
            <p>Powered by Modern GitOps Stack</p>
        </div>
    </div>
</div>

</@layout.registrationLayout>
