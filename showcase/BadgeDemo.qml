import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Badge"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Small labels for status, categories, and counts"
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
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdBadge {
                    text: "Default"
                }
                
                Lsd.LsdBadge {
                    text: "Status"
                }
                
                Lsd.LsdBadge {
                    text: "Category"
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
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Outlined"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdBadge {
                        text: "React"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Design"
                        variant: "outlined"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdBadge {
                        text: "Filled"
                        variant: "filled"
                    }
                    
                    Lsd.LsdBadge {
                        text: "Active"
                        variant: "filled"
                    }
                    
                    Lsd.LsdBadge {
                        text: "New"
                        variant: "filled"
                    }
                }
            }
        }
        
        // Sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Lsd.LsdBadge {
                    text: "Small"
                    size: "small"
                }
                
                Lsd.LsdBadge {
                    text: "Large"
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Lsd.LsdBadge {
                    text: "Normal"
                }
                
                Lsd.LsdBadge {
                    text: "Disabled"
                    disabled: true
                }
            }
        }
    }
}
