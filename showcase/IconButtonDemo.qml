import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Icon Button"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Compact square buttons with icon-only content"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic icon buttons
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdIconButton {
                    onClicked: console.log("Settings clicked")
                    
                    Text {
                        text: "⚙️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    onClicked: console.log("Search clicked")
                    
                    Text {
                        text: "🔍"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    onClicked: console.log("Like clicked")
                    
                    Text {
                        text: "❤️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
            }
        }
        
        // Icon button variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdIconButton {
                    variant: "outlined"
                    onClicked: console.log("Edit clicked")
                    
                    Text {
                        text: "✏️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    variant: "filled"
                    onClicked: console.log("Save clicked")
                    
                    Text {
                        text: "💾"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
            }
        }
        
        // Icon button sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdIconButton {
                    size: "small"
                    onClicked: console.log("Small clicked")
                    
                    Text {
                        text: "🏠"
                        anchors.centerIn: parent
                        font.pixelSize: 14
                    }
                }
                
                Lsd.LsdIconButton {
                    size: "medium"
                    onClicked: console.log("Medium clicked")
                    
                    Text {
                        text: "🔔"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    size: "large"
                    onClicked: console.log("Large clicked")
                    
                    Text {
                        text: "📊"
                        anchors.centerIn: parent
                        font.pixelSize: 18
                    }
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdIconButton {
                    disabled: true
                    onClicked: console.log("This shouldn't fire")
                    
                    Text {
                        text: "🔒"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
            }
        }
    }
}
