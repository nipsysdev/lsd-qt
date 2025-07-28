import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Tooltip"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Contextual information displayed on hover"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic tooltips
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdButton {
                    text: "Hover me"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "This is a helpful tooltip"
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdIconButton {
                    icon: "❓"
                    
                    Lsd.LsdTooltip {
                        text: "Click for help documentation"
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdIconButton {
                    icon: "⚙️"
                    
                    Lsd.LsdTooltip {
                        text: "Open settings panel"
                        visible: parent.hovered
                    }
                }
            }
        }
        
        // Tooltip positions
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Positioning"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[4] // 32px
                    anchors.horizontalCenter: parent.horizontalCenter
                    
                    Lsd.LsdButton {
                        text: "Top"
                        variant: "outlined"
                        
                        Lsd.LsdTooltip {
                            text: "Tooltip above"
                            position: "top"
                            visible: parent.hovered
                        }
                    }
                    
                    Lsd.LsdButton {
                        text: "Bottom"
                        variant: "outlined"
                        
                        Lsd.LsdTooltip {
                            text: "Tooltip below"
                            position: "bottom"
                            visible: parent.hovered
                        }
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[4] // 32px
                    anchors.horizontalCenter: parent.horizontalCenter
                    
                    Lsd.LsdButton {
                        text: "Left"
                        variant: "outlined"
                        
                        Lsd.LsdTooltip {
                            text: "Tooltip to the left"
                            position: "left"
                            visible: parent.hovered
                        }
                    }
                    
                    Lsd.LsdButton {
                        text: "Right"
                        variant: "outlined"
                        
                        Lsd.LsdTooltip {
                            text: "Tooltip to the right"
                            position: "right"
                            visible: parent.hovered
                        }
                    }
                }
            }
        }
        
        // Tooltip variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdButton {
                    text: "Default"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "Default tooltip styling"
                        variant: "default"
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdButton {
                    text: "Dark"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "Dark tooltip styling"
                        variant: "dark"
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdButton {
                    text: "Light"
                    variant: "filled"
                    
                    Lsd.LsdTooltip {
                        text: "Light tooltip styling"
                        variant: "light"
                        visible: parent.hovered
                    }
                }
            }
        }
        
        // Tooltip delays
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Timing"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdButton {
                    text: "Instant"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "Shows immediately"
                        delay: 0
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdButton {
                    text: "Fast (500ms)"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "Shows after 500ms"
                        delay: 500
                        visible: parent.hovered
                    }
                }
                
                Lsd.LsdButton {
                    text: "Slow (1000ms)"
                    variant: "outlined"
                    
                    Lsd.LsdTooltip {
                        text: "Shows after 1 second"
                        delay: 1000
                        visible: parent.hovered
                    }
                }
            }
        }
    }
}
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Form Helper Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 500
                height: 320
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "User Registration"
                        variant: "body1"
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdTextField {
                            width: parent.width - 30
                            label: "Password"
                            placeholderText: "Enter password"
                            variant: "outlined"
                            echoMode: TextInput.Password
                        }
                        
                        Lsd.LsdIconButton {
                            icon: "❓"
                            size: "small"
                            anchors.verticalCenter: parent.verticalCenter
                            
                            Lsd.LsdTooltip {
                                text: "Password must be at least 8 characters with uppercase, lowercase, and numbers"
                                visible: parent.hovered
                                maxWidth: 200
                            }
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdTextField {
                            width: parent.width - 30
                            label: "Email"
                            placeholderText: "Enter email address"
                            variant: "outlined"
                        }
                        
                        Lsd.LsdIconButton {
                            icon: "ℹ️"
                            size: "small"
                            anchors.verticalCenter: parent.verticalCenter
                            
                            Lsd.LsdTooltip {
                                text: "We'll send a verification email to this address"
                                visible: parent.hovered
                            }
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdDropdown {
                            width: parent.width - 30
                            label: "Country"
                            model: ["United States", "Canada", "United Kingdom", "Australia"]
                        }
                        
                        Lsd.LsdIconButton {
                            icon: "🌍"
                            size: "small"
                            anchors.verticalCenter: parent.verticalCenter
                            
                            Lsd.LsdTooltip {
                                text: "Select your country for localized content and currency"
                                visible: parent.hovered
                            }
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdCheckbox {
                            text: "Subscribe to newsletter"
                        }
                        
                        Lsd.LsdIconButton {
                            icon: "📧"
                            size: "small"
                            anchors.verticalCenter: parent.verticalCenter
                            
                            Lsd.LsdTooltip {
                                text: "Get weekly updates about new features and tips"
                                visible: parent.hovered
                            }
                        }
                    }
                    
                    Lsd.LsdButton {
                        text: "Create Account"
                        variant: "filled"
                        onClicked: console.log("Account created")
                    }
                }
            }
        }
        
        // Dashboard tooltips example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Dashboard Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 200
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Row {
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Analytics Dashboard"
                            variant: "body1"
                        }
                        
                        Item { 
                            width: parent.width - 400
                            height: 1
                        }
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Lsd.LsdIconButton {
                                icon: "🔄"
                                size: "small"
                                
                                Lsd.LsdTooltip {
                                    text: "Refresh data (last updated 5 minutes ago)"
                                    visible: parent.hovered
                                }
                            }
                            
                            Lsd.LsdIconButton {
                                icon: "📊"
                                size: "small"
                                
                                Lsd.LsdTooltip {
                                    text: "View detailed analytics report"
                                    visible: parent.hovered
                                }
                            }
                            
                            Lsd.LsdIconButton {
                                icon: "📤"
                                size: "small"
                                
                                Lsd.LsdTooltip {
                                    text: "Export data as CSV or PDF"
                                    visible: parent.hovered
                                }
                            }
                            
                            Lsd.LsdIconButton {
                                icon: "⚙️"
                                size: "small"
                                
                                Lsd.LsdTooltip {
                                    text: "Configure dashboard widgets and filters"
                                    visible: parent.hovered
                                }
                            }
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[4] // 32px
                        width: parent.width
                        
                        Column {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Row {
                                spacing: Theme.LsdTheme.spacing[1] // 8px
                                
                                Lsd.LsdText {
                                    text: "Users: 1,247"
                                    variant: "body2"
                                }
                                
                                Lsd.LsdIconButton {
                                    icon: "ℹ️"
                                    size: "small"
                                    
                                    Lsd.LsdTooltip {
                                        text: "Active users in the last 30 days. +12% from last month"
                                        visible: parent.hovered
                                    }
                                }
                            }
                        }
                        
                        Column {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Row {
                                spacing: Theme.LsdTheme.spacing[1] // 8px
                                
                                Lsd.LsdText {
                                    text: "Revenue: $45,231"
                                    variant: "body2"
                                }
                                
                                Lsd.LsdIconButton {
                                    icon: "💰"
                                    size: "small"
                                    
                                    Lsd.LsdTooltip {
                                        text: "Total revenue this month. Target: $50,000 (90% achieved)"
                                        visible: parent.hovered
                                    }
                                }
                            }
                        }
                        
                        Column {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Row {
                                spacing: Theme.LsdTheme.spacing[1] // 8px
                                
                                Lsd.LsdText {
                                    text: "Conversion: 3.2%"
                                    variant: "body2"
                                }
                                
                                Lsd.LsdIconButton {
                                    icon: "📈"
                                    size: "small"
                                    
                                    Lsd.LsdTooltip {
                                        text: "Conversion rate from visitor to customer. Industry average: 2.8%"
                                        visible: parent.hovered
                                    }
                                }
                            }
                        }
                    }
                    
                    Lsd.LsdText {
                        text: "💡 Hover over the info icons to see detailed explanations"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                }
            }
        }
    }
}
