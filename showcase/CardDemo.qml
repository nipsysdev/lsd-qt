import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Cards"
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
            
            Lsd.LsdCard {
                width: 280
                height: 160
                size: "large"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdText {
                        text: "Card Title"
                        variant: "h3"
                    }
                    
                    Lsd.LsdText {
                        text: "This is a large card with some content. It has generous padding and clean borders following the LSD design system."
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                        wrapMode: Text.WordWrap
                    }
                    
                    Lsd.LsdButton {
                        text: "Action"
                        variant: "outlined"
                        size: "small"
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 280
                height: 120
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium Card"
                        variant: "body1"
                    }
                    
                    Lsd.LsdText {
                        text: "A card with medium padding for more compact layouts."
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                        wrapMode: Text.WordWrap
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
                        text: "Compact card"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 220
                height: 100
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium"
                        variant: "body1"
                    }
                    
                    Lsd.LsdText {
                        text: "Balanced padding"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 260
                height: 100
                size: "large"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdText {
                        text: "Large"
                        variant: "body1"
                    }
                    
                    Lsd.LsdText {
                        text: "Generous spacing"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                }
            }
        }
    }
    
    // Complex content
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Complex Content"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Lsd.LsdCard {
                width: 320
                height: 200
                size: "large"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[3] // 24px
                    width: parent.width
                    
                    Row {
                        width: parent.width
                        
                        Column {
                            width: parent.width - 80
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Lsd.LsdText {
                                text: "Component Library"
                                variant: "h3"
                            }
                            
                            Lsd.LsdText {
                                text: "A collection of reusable UI components following the Logos Design System principles."
                                variant: "body2"
                                colorVariant: "tertiary"
                                width: parent.width
                                wrapMode: Text.WordWrap
                            }
                        }
                        
                        Lsd.LsdBadge {
                            text: "New"
                            variant: "filled"
                            size: "small"
                            anchors.top: parent.top
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        
                        Lsd.LsdButton {
                            text: "Get Started"
                            variant: "filled"
                            size: "small"
                        }
                        
                        Lsd.LsdButton {
                            text: "Learn More"
                            variant: "outlined"
                            size: "small"
                        }
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 280
                height: 200
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Settings"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdTextField {
                            width: parent.width
                            label: "Display Name"
                            text: "User Name"
                            variant: "outlined"
                            size: "small"
                        }
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[2] // 16px
                            
                            Lsd.LsdBadge {
                                text: "Pro"
                                variant: "outlined"
                                size: "small"
                            }
                            
                            Lsd.LsdBadge {
                                text: "Admin"
                                variant: "filled"
                                size: "small"
                            }
                        }
                    }
                }
            }
        }
    }
    
    // Enhanced cards with CardHeader and CardBody
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Enhanced Cards"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Lsd.LsdCard {
                width: 320
                height: 240
                size: "large"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[3] // 24px
                    width: parent.width
                    
                    Lsd.LsdCardHeader {
                        title: "User Profile"  
                        subtitle: "Personal information and settings"
                        size: "large"
                        width: parent.width
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[2] // 16px
                            
                            Lsd.LsdBadge {
                                text: "Premium"
                                variant: "filled"
                            }
                            
                            Lsd.LsdTag {
                                text: "Verified"
                                variant: "filled"
                            }
                        }
                    }
                    
                    Lsd.LsdCardBody {
                        size: "large"
                        width: parent.width
                        
                        Column {
                            spacing: Theme.LsdTheme.spacing[2] // 16px
                            
                            Lsd.LsdText {
                                text: "Email: user@example.com"
                                variant: "body2"
                            }
                            
                            Lsd.LsdText {
                                text: "Joined: March 2024"
                                variant: "body2"
                                colorVariant: "tertiary"
                            }
                            
                            Row {
                                spacing: Theme.LsdTheme.spacing[2] // 16px
                                
                                Lsd.LsdButton {
                                    text: "Edit Profile"
                                    variant: "filled"
                                    size: "small"
                                }
                                
                                Lsd.LsdButton {
                                    text: "Settings"
                                    variant: "outlined"
                                    size: "small"
                                }
                            }
                        }
                    }
                }
            }
            
            Lsd.LsdCard {
                width: 280
                height: 180
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdCardHeader {
                        title: "Quick Stats"
                        size: "medium"
                        width: parent.width
                    }
                    
                    Lsd.LsdCardBody {
                        size: "medium"
                        width: parent.width
                        
                        Column {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Row {
                                width: parent.width
                                
                                Lsd.LsdText {
                                    text: "Active Users:"
                                    variant: "body2"
                                    width: parent.width * 0.6
                                }
                                
                                Lsd.LsdText {
                                    text: "1,234"
                                    variant: "body2"
                                    colorVariant: "primary"
                                }
                            }
                            
                            Row {
                                width: parent.width
                                
                                Lsd.LsdText {
                                    text: "Revenue:"
                                    variant: "body2"
                                    width: parent.width * 0.6
                                }
                                
                                Lsd.LsdText {
                                    text: "$45,678"
                                    variant: "body2"
                                    colorVariant: "primary"
                                }
                            }
                            
                            Row {
                                width: parent.width
                                
                                Lsd.LsdText {
                                    text: "Growth:"
                                    variant: "body2"
                                    width: parent.width * 0.6
                                }
                                
                                Lsd.LsdText {
                                    text: "+12%"
                                    variant: "body2"
                                    colorVariant: "primary"
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
