import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Icon Button Group"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Grouped icon buttons for related actions"
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
            
            Lsd.LsdIconButtonGroup {
                onButtonClicked: function(index) {
                    console.log("Button clicked:", index)
                }
                
                Lsd.LsdIconButton {
                    Text {
                        text: "⬅️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    Text {
                        text: "⬆️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    Text {
                        text: "⬇️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
                
                Lsd.LsdIconButton {
                    Text {
                        text: "➡️"
                        anchors.centerIn: parent
                        font.pixelSize: 16
                    }
                }
            }
        }
        
        // Variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Outlined (default)"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdIconButtonGroup {
                        variant: "outlined"
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "✏️"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📋"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🗑️"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Filled"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdIconButtonGroup {
                        variant: "filled"
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📁"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📄"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🔗"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
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
                    
                    Lsd.LsdIconButtonGroup {
                        size: "small"
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "⭐"
                                anchors.centerIn: parent
                                font.pixelSize: 14
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "❤️"
                                anchors.centerIn: parent
                                font.pixelSize: 14
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "👍"
                                anchors.centerIn: parent
                                font.pixelSize: 14
                            }
                        }
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
                    
                    Lsd.LsdIconButtonGroup {
                        size: "medium"
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🔍"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "⚙️"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📊"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
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
                    
                    Lsd.LsdIconButtonGroup {
                        size: "large"
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🏠"
                                anchors.centerIn: parent
                                font.pixelSize: 18
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🔔"
                                anchors.centerIn: parent
                                font.pixelSize: 18
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "👤"
                                anchors.centerIn: parent
                                font.pixelSize: 18
                            }
                        }
                    }
                }
            }
        }
        
        // With selection
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "With Selection"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Single select"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdIconButtonGroup {
                        selectedIndex: 1
                        onSelectionChanged: function(indices) {
                            console.log("Single selection changed:", indices)
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📝"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📋"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "📊"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Multi select"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdIconButtonGroup {
                        multiSelect: true
                        selectedIndices: [0, 2]
                        onSelectionChanged: function(indices) {
                            console.log("Multi selection changed:", indices)
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🔴"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🟡"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                        
                        Lsd.LsdIconButton {
                            Text {
                                text: "🟢"
                                anchors.centerIn: parent
                                font.pixelSize: 16
                            }
                        }
                    }
                }
            }
        }
    }
}
