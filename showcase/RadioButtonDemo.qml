import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Radio Button"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Single selection controls for mutually exclusive options"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic radio buttons
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdRadioButton {
                    text: "Option 1"
                    group: "demo1"
                    checked: true
                    onToggled: console.log("Option 1 selected:", checked)
                }
                
                Lsd.LsdRadioButton {
                    text: "Option 2"
                    group: "demo1"
                    onToggled: console.log("Option 2 selected:", checked)
                }
                
                Lsd.LsdRadioButton {
                    text: "Option 3"
                    group: "demo1"
                    onToggled: console.log("Option 3 selected:", checked)
                }
            }
        }
        
        // Radio button sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Small"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Small option"
                        size: "small"
                        group: "sizeDemo"
                        checked: true
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Medium option"
                        size: "medium"
                        group: "sizeDemo2"
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Large"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Large option"
                        size: "large"
                        group: "sizeDemo3"
                    }
                }
            }
        }
        
        // Disabled states
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Disabled States"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdRadioButton {
                    text: "Disabled unchecked"
                    disabled: true
                    group: "disabled"
                }
                
                Lsd.LsdRadioButton {
                    text: "Disabled checked"
                    disabled: true
                    checked: true
                    group: "disabled"
                }
            }
        }
        
        // Form example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Survey Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 400
                height: 240
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "How did you hear about us?"
                        variant: "body1"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Search engine"
                        group: "survey"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Social media"
                        group: "survey"
                        checked: true
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Friend recommendation"
                        group: "survey"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Advertisement"
                        group: "survey"
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Other"
                        group: "survey"
                    }
                }
            }
        }
    }
}
