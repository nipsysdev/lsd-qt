import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Button Group"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Groups of connected buttons"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic button groups
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButtonGroup {
                    Lsd.LsdButton {
                        text: "Left"
                        onClicked: console.log("Left clicked")
                    }
                    Lsd.LsdButton {
                        text: "Center"
                        onClicked: console.log("Center clicked")
                    }
                    Lsd.LsdButton {
                        text: "Right"
                        onClicked: console.log("Right clicked")
                    }
                }
                
                Lsd.LsdButtonGroup {
                    variant: "filled"
                    Lsd.LsdButton {
                        text: "Bold"
                        onClicked: console.log("Bold clicked")
                    }
                    Lsd.LsdButton {
                        text: "Italic"
                        onClicked: console.log("Italic clicked")
                    }
                    Lsd.LsdButton {
                        text: "Underline"
                        onClicked: console.log("Underline clicked")
                    }
                }
            }
        }
        
        // Button group sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButtonGroup {
                    size: "small"
                    Lsd.LsdButton {
                        text: "Small"
                        onClicked: console.log("Small clicked")
                    }
                    Lsd.LsdButton {
                        text: "Group"
                        onClicked: console.log("Group clicked")
                    }
                }
                
                Lsd.LsdButtonGroup {
                    size: "medium"
                    Lsd.LsdButton {
                        text: "Medium"
                        onClicked: console.log("Medium clicked")
                    }
                    Lsd.LsdButton {
                        text: "Group"
                        onClicked: console.log("Group clicked")
                    }
                }
                
                Lsd.LsdButtonGroup {
                    size: "large"
                    Lsd.LsdButton {
                        text: "Large"
                        onClicked: console.log("Large clicked")
                    }
                    Lsd.LsdButton {
                        text: "Group"
                        onClicked: console.log("Group clicked")
                    }
                }
            }
        }
    }
}
