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
        text: "Single-choice selection controls"
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
                
                Lsd.LsdRadioButton {
                    text: "Option 1"
                    value: "opt1"
                    name: "basic"
                    checked: true
                    onSelected: function(value) {
                        console.log("Selected:", value)
                    }
                }
                
                Lsd.LsdRadioButton {
                    text: "Option 2"
                    value: "opt2"
                    name: "basic"
                    onSelected: function(value) {
                        console.log("Selected:", value)
                    }
                }
                
                Lsd.LsdRadioButton {
                    text: "Option 3"
                    value: "opt3"
                    name: "basic"
                    onSelected: function(value) {
                        console.log("Selected:", value)
                    }
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
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Small:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Small radio"
                        size: "small"
                        value: "small"
                        name: "sizes"
                        checked: true
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Medium radio"
                        size: "medium"
                        value: "medium"
                        name: "sizes"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Large:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Large radio (default)"
                        size: "large"
                        value: "large"
                        name: "sizes"
                    }
                }
            }
        }
        
        // With disabled state
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Disabled State"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdRadioButton {
                    text: "Available option"
                    value: "available"
                    name: "disabled"
                    checked: true
                }
                
                Lsd.LsdRadioButton {
                    text: "Disabled option"
                    value: "disabled"
                    name: "disabled"
                    disabled: true
                }
                
                Lsd.LsdRadioButton {
                    text: "Another disabled option"
                    value: "disabled2"
                    name: "disabled"
                    disabled: true
                }
            }
        }
    }
}
