import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Badges"
        variant: "h2"
    }
    
    // Basic usage
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Basic Usage"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Outlined"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Default"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Status"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Category"
                        variant: "outlined"
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Filled"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Active"
                        variant: "filled"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Important"
                        variant: "filled"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Featured"
                        variant: "filled"
                    }
                }
            }
        }
    }
    
    // Size variants
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Sizes"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Large"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Large Outlined"
                        variant: "outlined"
                        size: "large"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Large Filled"
                        variant: "filled"
                        size: "large"
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Small"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Small Outlined"
                        variant: "outlined"
                        size: "small"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Small Filled"
                        variant: "filled"
                        size: "small"
                    }
                }
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
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdBadge {
                text: "Normal"
                variant: "outlined"
            }
            
            Lsd.LsdBadge {
                text: "Disabled"
                variant: "outlined"
                disabled: true
            }
            
            Lsd.LsdBadge {
                text: "Normal Filled"
                variant: "filled"
            }
            
            Lsd.LsdBadge {
                text: "Disabled Filled"
                variant: "filled"
                disabled: true
            }
        }
    }
    
    // Use cases
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Common Use Cases"
            variant: "h3"
        }
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            // Status indicators
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Status:"
                    variant: "body2"
                    anchors.verticalCenter: parent.verticalCenter
                    width: 60
                }
                
                Lsd.LsdBadge {
                    text: "Online"
                    variant: "filled"
                    size: "small"
                }
                
                Lsd.LsdBadge {
                    text: "Offline"
                    variant: "outlined"
                    size: "small"
                }
                
                Lsd.LsdBadge {
                    text: "Away"
                    variant: "outlined"
                    size: "small"
                }
            }
            
            // Categories
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Tags:"
                    variant: "body2"
                    anchors.verticalCenter: parent.verticalCenter
                    width: 60
                }
                
                Lsd.LsdBadge {
                    text: "React"
                    variant: "outlined"
                    size: "small"
                }
                
                Lsd.LsdBadge {
                    text: "Qt"
                    variant: "outlined"
                    size: "small"
                }
                
                Lsd.LsdBadge {
                    text: "Design System"
                    variant: "outlined"
                    size: "small"
                }
            }
            
            // Counts
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Notifications"
                    variant: "body2"
                    anchors.verticalCenter: parent.verticalCenter
                }
                
                Lsd.LsdBadge {
                    text: "3"
                    variant: "filled"
                    size: "small"
                }
            }
        }
    }
}
