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
        text: "Expandable sections for progressive disclosure of content"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic collapse
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "What is LSD Design System?"
                    
                    Lsd.LsdText {
                        text: "LSD (Logos Design System) is a minimal, content-focused design system that challenges conventional UI clutter. It uses pure black and white aesthetics with clean typography and intentional spacing to create interfaces that let content shine."
                        variant: "body2"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    label: "How do I get started?"
                    open: true
                    
                    Lsd.LsdText {
                        text: "Getting started is simple! Import the components you need, follow the spacing and typography guidelines, and focus on creating clean, minimal interfaces. Check our documentation for detailed examples and best practices."
                        variant: "body2"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Is it compatible with Qt?"
                    content: "Yes! LSD-Qt is specifically designed for Qt Quick applications. All components are built with QML and follow Qt's architectural patterns while maintaining the LSD design principles."
                }
            }
        }
        
        // Different variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Bordered Collapse"
                    variant: "bordered"
                    content: "This collapse section has a border around it to clearly separate it from other content. Useful when you need more visual distinction."
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Minimal Collapse"
                    variant: "minimal"
                    content: "This is a minimal collapse with subtle styling. Perfect for FAQ sections or when you want the content to be the focus."
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Highlighted Collapse"
                    variant: "highlighted"
                    content: "This collapse has enhanced visual emphasis. Great for important information or featured content sections."
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
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Small Collapse Section"
                    size: "small"
                    content: "This is a small collapse section with compact spacing and smaller text. Good for secondary information."
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Medium Collapse Section"
                    size: "medium"
                    content: "This is the default medium size collapse section. It provides a good balance of space and readability for most use cases."
                }
                
                Lsd.LsdCollapse {
                    width: parent.width
                    title: "Large Collapse Section"
                    size: "large"
                    content: "This is a large collapse section with generous spacing and larger text. Perfect for important content that needs emphasis."
                }
            }
        }
    }
}
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "FAQ Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 460
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Frequently Asked Questions"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "How do I install LSD-Qt components?"
                            content: "You can install LSD-Qt by cloning the repository and importing the components into your QML project. Make sure to add the components directory to your import path and register the qmldir file. See our installation guide for detailed steps."
                            size: "small"
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Can I customize the theme colors?"
                            content: "Yes! LSD-Qt supports light and dark themes out of the box. You can customize colors by modifying the LsdTheme singleton. The design system is built around property bindings, so theme changes automatically propagate to all components."
                            size: "small"
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "What Qt versions are supported?"
                            content: "LSD-Qt is compatible with Qt 5.15+ and Qt 6.x. We recommend using the latest stable version for the best experience. All components are built with standard QML without external dependencies."
                            size: "small"
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "How do I report bugs or request features?"
                            content: "You can report bugs and request features through our GitHub repository. Please provide detailed information about your environment and steps to reproduce any issues. We welcome contributions from the community!"
                            size: "small"
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Is there commercial support available?"
                            content: "LSD-Qt is open source and free to use in both personal and commercial projects. For commercial support, training, or custom development services, please contact our team through the official channels."
                            size: "small"
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Can I use LSD-Qt with other UI frameworks?"
                            content: "LSD-Qt is specifically designed for Qt Quick applications. However, the design principles and patterns can be adapted to other frameworks. Check out LSD-React for React applications or implement the design tokens in your preferred framework."
                            size: "small"
                        }
                    }
                }
            }
        }
        
        // Documentation example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Documentation Sections"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 400
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Component Documentation"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Getting Started"
                            variant: "bordered"
                            expanded: true
                            content: "Welcome to LSD-Qt! This section covers the basics of setting up and using the component library. We'll walk through installation, importing components, and your first implementation."
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Component API Reference"
                            variant: "bordered"
                            content: "Detailed API documentation for all components including properties, signals, methods, and usage examples. Each component includes interactive examples and code snippets."
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Design Guidelines"
                            variant: "bordered"
                            content: "Learn about the LSD design philosophy, typography scale, spacing system, and color palette. These guidelines help you create consistent, minimal interfaces that focus on content."
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Advanced Usage"
                            variant: "bordered"
                            content: "Advanced topics including custom theming, extending components, performance optimization, and integration with existing Qt applications. Includes best practices and common patterns."
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "Migration Guide"
                            variant: "bordered"
                            content: "Step-by-step guide for migrating from other UI frameworks or updating from previous versions of LSD-Qt. Includes breaking changes, new features, and compatibility notes."
                        }
                    }
                }
            }
        }
        
        // Settings panel example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Settings Panel Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 480
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Application Settings"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "🎨 Appearance"
                            variant: "minimal"
                            
                            Column {
                                spacing: Theme.LsdTheme.spacing[2]
                                width: parent.width
                                
                                Row {
                                    spacing: Theme.LsdTheme.spacing[2]
                                    
                                    Lsd.LsdDropdown {
                                        width: 150
                                        label: "Theme"
                                        model: ["Light", "Dark", "Auto"]
                                    }
                                    
                                    Lsd.LsdDropdown {
                                        width: 150
                                        label: "Font Size"
                                        model: ["Small", "Medium", "Large"]
                                    }
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Show animations"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "High contrast mode"
                                }
                            }
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "🔔 Notifications"
                            variant: "minimal"
                            
                            Column {
                                spacing: Theme.LsdTheme.spacing[1]
                                width: parent.width
                                
                                Lsd.LsdCheckbox {
                                    text: "Desktop notifications"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Email notifications"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Push notifications"
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Sound alerts"
                                    checked: true
                                }
                            }
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "🔐 Privacy & Security"
                            variant: "minimal"
                            
                            Column {
                                spacing: Theme.LsdTheme.spacing[1]
                                width: parent.width
                                
                                Lsd.LsdCheckbox {
                                    text: "Two-factor authentication"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Share usage analytics"
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Auto-lock after 15 minutes"
                                    checked: true
                                }
                                
                                Row {
                                    spacing: Theme.LsdTheme.spacing[2]
                                    
                                    Lsd.LsdButton {
                                        text: "Change Password"
                                        variant: "outlined"
                                        size: "small"
                                        onClicked: console.log("Change password")
                                    }
                                    
                                    Lsd.LsdButton {
                                        text: "Download Data"
                                        variant: "outlined"
                                        size: "small"
                                        onClicked: console.log("Download data")
                                    }
                                }
                            }
                        }
                        
                        Lsd.LsdCollapse {
                            width: parent.width
                            title: "⚡ Performance"
                            variant: "minimal"
                            
                            Column {
                                spacing: Theme.LsdTheme.spacing[1]
                                width: parent.width
                                
                                Lsd.LsdCheckbox {
                                    text: "Enable hardware acceleration"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Preload content"
                                    checked: true
                                }
                                
                                Lsd.LsdCheckbox {
                                    text: "Offline mode"
                                }
                                
                                Lsd.LsdDropdown {
                                    width: 200
                                    label: "Cache Size"
                                    model: ["100 MB", "500 MB", "1 GB", "Unlimited"]
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
