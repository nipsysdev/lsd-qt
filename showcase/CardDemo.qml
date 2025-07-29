import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Card"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Content containers with clean borders and consistent padding"
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
            
            Lsd.LsdCard {
                width: 320
                height: 140
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdText {
                        text: "Card Title"
                        variant: "h3"
                    }
                    
                    Lsd.LsdText {
                        text: "This is a basic card with some content. Cards provide clean containers with consistent borders and padding."
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Lsd.LsdCard {
                    width: 180
                    height: 100
                    size: "small"
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdText {
                            text: "Small"
                            variant: "body2"
                        }
                        
                        Lsd.LsdText {
                            text: "16px padding"
                            variant: "body3"
                            colorVariant: "tertiary"
                        }
                    }
                }
                
                Lsd.LsdCard {
                    width: 200
                    height: 100
                    size: "medium"
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdText {
                            text: "Medium"
                            variant: "body2"
                        }
                        
                        Lsd.LsdText {
                            text: "24px padding"
                            variant: "body3"
                            colorVariant: "tertiary"
                        }
                    }
                }
                
                Lsd.LsdCard {
                    width: 220
                    height: 100
                    size: "large"
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdText {
                            text: "Large"
                            variant: "body2"
                        }
                        
                        Lsd.LsdText {
                            text: "32px padding"
                            variant: "body3"
                            colorVariant: "tertiary"
                        }
                    }
                }
            }
        }
    }
}
