import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Collapse"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Expandable content areas with smooth animations"
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
            
            Lsd.LsdCollapse {
                width: parent.width
                label: "Click to expand"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "This content is hidden by default and can be toggled by clicking the header."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                    
                    Lsd.LsdText {
                        text: "You can put any content inside a collapse component."
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                        wrapMode: Text.WordWrap
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
                width: parent.width
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Small collapse"
                    size: "small"
                    
                    Lsd.LsdText {
                        text: "Small collapse with compact padding and typography."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Medium collapse"
                    size: "medium"
                    
                    Lsd.LsdText {
                        text: "Medium collapse with balanced spacing."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Large collapse (default)"
                    size: "large"
                    
                    Lsd.LsdText {
                        text: "Large collapse with generous padding and typography."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
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
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                width: parent.width
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Default (closed)"
                    
                    Lsd.LsdText {
                        text: "This collapse starts closed by default."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Initially open"
                    open: true
                    
                    Lsd.LsdText {
                        text: "This collapse starts open by setting the open property to true."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "Disabled collapse"
                    disabled: true
                    
                    Lsd.LsdText {
                        text: "This content cannot be toggled when disabled."
                        variant: "body2"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }
    }
}
