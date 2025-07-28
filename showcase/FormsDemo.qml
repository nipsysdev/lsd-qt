import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Forms & Interactive Elements"
        variant: "h2"
    }
    
    // Form example
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Contact Form"
            variant: "h3"
        }
        
        Lsd.LsdCard {
            width: 500
            height: 420
            size: "large"
            
            Column {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                width: parent.width
                
                Lsd.LsdText {
                    text: "Get in touch"
                    variant: "h3"
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdTextField {
                        width: parent.width
                        label: "Name"
                        placeholderText: "Your full name"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdTextField {
                        width: parent.width
                        label: "Email"
                        placeholderText: "your@email.com"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdTextField {
                        width: parent.width
                        label: "Message"
                        placeholderText: "What would you like to tell us?"
                        variant: "outlined"
                        // Note: For a real multiline input, we'd need a TextArea component
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdCheckbox {
                        text: "I agree to the terms and conditions"
                        size: "medium"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Send me updates about new features"
                        size: "medium"
                        checked: true
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdButton {
                        text: "Send Message"
                        variant: "filled"
                        size: "medium"
                    }
                    
                    Lsd.LsdButton {
                        text: "Cancel"
                        variant: "outlined"
                        size: "medium"
                    }
                }
            }
        }
    }
    
    // Settings panel
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Settings Panel"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[4] // 32px
            
            Lsd.LsdCard {
                width: 320
                height: 280
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Row {
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Preferences"
                            variant: "body1"
                            width: parent.width - 60
                        }
                        
                        Lsd.LsdBadge {
                            text: "Pro"
                            variant: "filled"
                            size: "small"
                        }
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdCheckbox {
                            text: "Enable notifications"
                            checked: true
                            size: "medium"
                        }
                        
                        Lsd.LsdCheckbox {
                            text: "Auto-save changes"
                            checked: false
                            size: "medium"
                        }
                        
                        Lsd.LsdCheckbox {
                            text: "Dark mode"
                            checked: Theme.LsdTheme.currentTheme === "dark"
                            size: "medium"
                            onToggled: function(checked) {
                                if (checked !== (Theme.LsdTheme.currentTheme === "dark")) {
                                    Theme.LsdTheme.toggleTheme()
                                }
                            }
                        }
                        
                        Lsd.LsdCheckbox {
                            text: "Advanced features (disabled)"
                            disabled: true
                            size: "medium"
                        }
                        
                        Lsd.LsdCheckbox {
                            text: "Maybe enabled"
                            indeterminate: true
                            size: "medium"
                        }
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 280
                height: 280
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Account Info"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdTextField {
                            width: parent.width
                            label: "Username"
                            text: "user123"
                            variant: "outlined"
                            size: "small"
                        }
                        
                        Lsd.LsdTextField {
                            width: parent.width
                            label: "Display Name"
                            text: "John Doe"
                            variant: "outlined"
                            size: "small"
                        }
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            width: parent.width
                            
                            Lsd.LsdText {
                                text: "Role:"
                                variant: "body2"
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            
                            Lsd.LsdBadge {
                                text: "Admin"
                                variant: "outlined"
                                size: "small"
                            }
                            
                            Lsd.LsdBadge {
                                text: "Developer"
                                variant: "outlined"
                                size: "small"
                            }
                        }
                        
                        Lsd.LsdButton {
                            text: "Update Profile"
                            variant: "outlined" 
                            size: "small"
                        }
                    }
                }
            }
        }
    }
}
