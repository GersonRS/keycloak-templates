# Keycloak Templates

Custom Keycloak themes for the Modern GitOps Stack.

## Themes

### Modern GitOps Login Theme

A modern, dark-themed login page designed for cloud-native infrastructure platforms.

![Modern GitOps Login Theme](docs/images/login-preview.png)

#### Features

- **Dark Mode Design**: Professional dark color scheme with cyan accents
- **Split Layout**: Branding information on the left, login form on the right
- **Animated Particles**: Subtle floating particle effects for a modern feel
- **Responsive**: Adapts to mobile and tablet screens
- **Social Login**: Styled buttons for GitHub, Google, and other providers
- **Accessibility**: ARIA attributes and keyboard navigation support

#### Theme Structure

```
themes/
└── modern-gitops/
    └── login/
        ├── theme.properties      # Theme configuration
        ├── login.ftl             # FreeMarker login template
        └── resources/
            └── css/
                └── modern-gitops.css  # Custom styles
```

## Usage

### With Keycloak Operator (Kubernetes)

The theme can be loaded using an initContainer that clones this repository:

```yaml
apiVersion: k8s.keycloak.org/v2alpha1
kind: Keycloak
metadata:
  name: keycloak
spec:
  instances: 1
  additionalOptions:
    - name: spi-theme-default
      value: "modern-gitops"
  unsupported:
    podTemplate:
      spec:
        initContainers:
          - name: git-clone-theme
            image: alpine/git
            securityContext:
              runAsUser: 1000
              runAsGroup: 1000
              runAsNonRoot: true
            command:
              - /bin/sh
              - -c
            args:
              - >-
                cd /tmp &&
                git clone --branch=main https://github.com/GersonRS/keycloak-templates.git &&
                cp -r keycloak-templates/themes/modern-gitops/* /theme
            volumeMounts:
              - name: theme-volume
                mountPath: /theme
        containers:
          - name: keycloak
            volumeMounts:
              - name: theme-volume
                mountPath: /opt/keycloak/themes/modern-gitops
        volumes:
          - name: theme-volume
            emptyDir: {}
```

### With Terraform (Modern GitOps Stack Module)

```hcl
module "keycloak" {
  source = "github.com/GersonRS/modern-gitops-stack-module-keycloak"
  
  enable_custom_theme = true
  theme_config = {
    name              = "modern-gitops"
    repository_url    = "https://github.com/GersonRS/keycloak-templates.git"
    repository_branch = "main"
    repository_path   = "themes/modern-gitops"
  }
}
```

### Standalone Keycloak

Copy the theme folder to your Keycloak installation:

```bash
cp -r themes/modern-gitops /opt/keycloak/themes/
```

Then configure the theme in the Admin Console:
1. Go to **Realm Settings** > **Themes**
2. Select **modern-gitops** for the Login Theme
3. Save

## Customization

### Colors

Edit the CSS variables in `themes/modern-gitops/login/resources/css/modern-gitops.css`:

```css
:root {
  --mg-bg-primary: #0a0e17;      /* Main background */
  --mg-bg-secondary: #111827;    /* Secondary background */
  --mg-bg-card: #1a2332;         /* Card background */
  --mg-text-primary: #ffffff;    /* Primary text */
  --mg-text-secondary: #9ca3af;  /* Secondary text */
  --mg-accent-cyan: #00d4ff;     /* Accent color */
  --mg-accent-blue: #3b82f6;     /* Secondary accent */
}
```

### Branding

Modify the `login.ftl` template to update:
- Logo SVG
- Brand name
- Feature list
- Footer logos

## Development

### Testing Locally

1. Run Keycloak with theme caching disabled:

```bash
bin/kc.sh start-dev \
  --spi-theme-static-max-age=-1 \
  --spi-theme-cache-themes=false \
  --spi-theme-cache-templates=false
```

2. Copy your theme to the `themes/` directory
3. Select the theme in Admin Console
4. Changes will be reflected on page refresh

## License

Apache License 2.0
