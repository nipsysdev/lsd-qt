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
        spacing: Theme.LsdTheme.spacing[4] // 32px
        
        // Basic usage
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Default checkbox"
                }
                
                Lsd.LsdCheckbox {
                    text: "Pre-checked"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Indeterminate state"
                    indeterminate: true
                }
            }
        }
        
        // Size variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Size Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Small checkbox"
                    size: "small"
                }
                
                Lsd.LsdCheckbox {
                    text: "Medium checkbox"
                    size: "medium"
                }
                
                Lsd.LsdCheckbox {
                    text: "Large checkbox (default)"
                    size: "large"
                }
            }
        }
        
        // States
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "States"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Enabled checkbox"
                }
                
                Lsd.LsdCheckbox {
                    text: "Disabled unchecked"
                    disabled: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Disabled checked"
                    checked: true
                    disabled: true
                }
            }
        }
    }
}
