import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Checkbox"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Binary selection controls for forms and settings"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic checkboxes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Default checkbox"
                    onToggled: console.log("Default checkbox:", checked)
                }
                
                Lsd.LsdCheckbox {
                    text: "Pre-checked"
                    checked: true
                    onToggled: console.log("Pre-checked:", checked)
                }
                
                Lsd.LsdCheckbox {
                    text: "Disabled"
                    disabled: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Disabled checked"
                    checked: true
                    disabled: true
                }
            }
        }
        
        // Checkbox sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Small checkbox"
                    size: "small"
                }
                
                Lsd.LsdCheckbox {
                    text: "Medium checkbox (default)"
                    size: "medium"
                }
                
                Lsd.LsdCheckbox {
                    text: "Large checkbox"
                    size: "large"
                }
            }
        }
        
        // Form example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Form Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 400
                height: 200
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Account Settings"
                        variant: "body1"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Email notifications"
                        checked: true
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "SMS notifications"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Marketing emails"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Weekly digest"
                        checked: true
                    }
                }
            }
        }
    }
}
