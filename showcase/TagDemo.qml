import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Tag"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Small labels for categorizing and organizing content"
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdTag {
                    text: "JavaScript"
                }
                
                Lsd.LsdTag {
                    text: "React"
                }
                
                Lsd.LsdTag {
                    text: "TypeScript"
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
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Outlined:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        variant: "outlined"
                        text: "Frontend"
                    }
                    
                    Lsd.LsdTag {
                        variant: "outlined"
                        text: "Backend"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Filled:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        variant: "filled"
                        text: "Design"
                    }
                    
                    Lsd.LsdTag {
                        variant: "filled"
                        text: "UX"
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
                    
                    Lsd.LsdTag {
                        size: "small"
                        text: "Bug"
                    }
                    
                    Lsd.LsdTag {
                        size: "small"
                        text: "Feature"
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
                    
                    Lsd.LsdTag {
                        size: "large"
                        text: "Priority"
                    }
                    
                    Lsd.LsdTag {
                        size: "large"
                        text: "Urgent"
                    }
                }
            }
        }
        
        // Interactive tags
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Interactive Tags"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Clickable:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Web Development"
                        clickable: true
                        onClicked: console.log("Tag clicked:", text)
                    }
                    
                    Lsd.LsdTag {
                        text: "Mobile"
                        clickable: true
                        onClicked: console.log("Tag clicked:", text)
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Removable:"
                        variant: "body3"
                        colorVariant: "tertiary"
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Marketing"
                        removable: true
                        onRemoveClicked: console.log("Remove clicked:", text)
                    }
                    
                    Lsd.LsdTag {
                        text: "Sales"
                        removable: true
                        onRemoveClicked: console.log("Remove clicked:", text)
                    }
                }
            }
        }
        
        // Disabled state
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Disabled State"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdTag {
                    text: "Enabled"
                }
                
                Lsd.LsdTag {
                    text: "Disabled"
                    disabled: true
                }
            }
        }
    }
}
