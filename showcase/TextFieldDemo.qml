import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Text Fields"
        variant: "h2"
    }
    
    // Basic examples
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Basic Usage"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[4] // 32px
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                width: 300
                
                Lsd.LsdText {
                    text: "Outlined"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Email"
                    placeholderText: "Enter your email"
                    variant: "outlined"
                }
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Password"
                    placeholderText: "Enter password"
                    variant: "outlined"
                    echoMode: TextInput.Password
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                width: 300
                
                Lsd.LsdText {
                    text: "Underlined"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Name"
                    placeholderText: "Your name"
                    variant: "underlined"
                }
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Company"
                    placeholderText: "Company name"
                    variant: "underlined"
                }
            }
        }
    }
    
    // Sizes
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Sizes"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Lsd.LsdTextField {
                width: 200
                label: "Large"
                placeholderText: "Large input"
                size: "large"
                variant: "outlined"
            }
            
            Lsd.LsdTextField {
                width: 200
                label: "Medium"
                placeholderText: "Medium input"
                size: "medium"
                variant: "outlined"
            }
            
            Lsd.LsdTextField {
                width: 200
                label: "Small"
                placeholderText: "Small input"
                size: "small"
                variant: "outlined"
            }
        }
    }
    
    // States
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "States"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Lsd.LsdTextField {
                width: 200
                label: "Error"
                text: "Invalid input"
                error: true
                supportingText: "This field has an error"
                variant: "outlined"
            }
            
            Lsd.LsdTextField {
                width: 200
                label: "Disabled"
                text: "Can't edit this"
                disabled: true
                variant: "outlined"
            }
            
            Lsd.LsdTextField {
                width: 200
                label: "Read Only"
                text: "View only"
                readOnly: true
                variant: "outlined"
            }
        }
    }
    
    // With supporting text
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "With Supporting Text"
            variant: "h3"
        }
        
        Lsd.LsdTextField {
            width: 400
            label: "Username"
            placeholderText: "Choose a username"
            supportingText: "Must be at least 3 characters long"
            variant: "outlined"
        }
    }
}
