import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Tabs"
        variant: "h2"
    }
    
    // Basic tabs
    Lsd.LsdTabs {
        width: parent.width
        size: "large"
        tabs: [
            {
                name: "overview",
                text: "Overview",
                content: overviewContent
            },
            {
                name: "features", 
                text: "Features",
                content: featuresContent
            },
            {
                name: "docs",
                text: "Documentation", 
                content: docsContent
            }
        ]
    }
    
    // Medium size tabs
    Lsd.LsdText {
        text: "Medium Size Tabs"
        variant: "h3"
    }
    
    Lsd.LsdTabs {
        width: parent.width
        size: "medium"
        fullWidth: true
        tabs: [
            {
                name: "design",
                text: "Design",
                content: designContent
            },
            {
                name: "code",
                text: "Code",
                content: codeContent
            },
            {
                name: "test",
                text: "Testing",
                content: testContent
            }
        ]
    }
    
    // Small tabs
    Lsd.LsdText {
        text: "Small Tabs"
        variant: "h3"
    }
    
    Lsd.LsdTabs {
        width: 400
        size: "small"
        tabs: [
            {
                name: "json",
                text: "JSON",
                content: jsonContent
            },
            {
                name: "xml",
                text: "XML", 
                content: xmlContent
            },
            {
                name: "yaml",
                text: "YAML",
                content: yamlContent
            }
        ]
    }
    
    // Tab content components
    Component {
        id: overviewContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Welcome to the LSD-Qt Component Library"
                variant: "h3"
            }
            
            Lsd.LsdText {
                text: "This is a comprehensive set of UI components following the Logos Design System principles. Built for Qt/QML applications with a focus on minimal, clean design."
                variant: "body1"
                width: parent.width
                wrapMode: Text.WordWrap
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdBadge {
                    text: "15+ Components"
                    variant: "filled"
                }
                
                Lsd.LsdBadge {
                    text: "Dark/Light Theme"
                    variant: "outlined"
                }
                
                Lsd.LsdBadge {
                    text: "Qt/QML"
                    variant: "outlined"
                }
            }
        }
    }
    
    Component {
        id: featuresContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Key Features"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdCheckbox {
                    text: "Consistent design tokens"
                    checked: true
                    disabled: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Automatic theme switching"
                    checked: true
                    disabled: true  
                }
                
                Lsd.LsdCheckbox {
                    text: "Responsive sizing variants"
                    checked: true
                    disabled: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Accessible interactions"
                    checked: true
                    disabled: true
                }
            }
        }
    }
    
    Component {
        id: docsContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Getting Started"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                size: "medium"
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdText {
                        text: "Import the components in your QML file:"
                        variant: "body2"
                    }
                    
                    Lsd.LsdQuote {
                        text: 'import "../components" as Lsd'
                        mode: "indented-line"
                        width: parent.width
                    }
                    
                    Lsd.LsdText {
                        text: "Then use any component:"
                        variant: "body2"
                    }
                    
                    Lsd.LsdQuote {
                        text: 'Lsd.LsdButton { text: "Click me"; variant: "filled" }'
                        mode: "indented-line"
                        width: parent.width
                    }
                }
            }
        }
    }
    
    Component {
        id: designContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Design Philosophy"
                variant: "body1"
            }
            
            Lsd.LsdText {
                text: "• Minimal black and white aesthetic\n• Clean 1px borders everywhere\n• Consistent spacing scale\n• Typography hierarchy\n• Content-first approach"
                variant: "body2"
                colorVariant: "tertiary"
                width: parent.width
            }
        }
    }
    
    Component {
        id: codeContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Code Standards"
                variant: "body1"
            }
            
            Lsd.LsdText {
                text: "• Property bindings for theme reactivity\n• Consistent naming conventions\n• Reusable component patterns\n• Clear public APIs"
                variant: "body2"
                colorVariant: "tertiary"
                width: parent.width
            }
        }
    }
    
    Component {
        id: testContent
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Testing Approach"
                variant: "body1"
            }
            
            Lsd.LsdText {
                text: "• Interactive demo application\n• Visual regression testing\n• Theme switching validation\n• Cross-platform compatibility"
                variant: "body2"
                colorVariant: "tertiary"
                width: parent.width
            }
        }
    }
    
    Component {
        id: jsonContent
        Lsd.LsdQuote {
            text: '{\n  "name": "lsd-qt",\n  "version": "1.0.0",\n  "components": 15\n}'
            mode: "indented-line"
            width: parent.width
        }
    }
    
    Component {
        id: xmlContent
        Lsd.LsdQuote {
            text: '<library>\n  <name>lsd-qt</name>\n  <version>1.0.0</version>\n</library>'
            mode: "indented-line"
            width: parent.width
        }
    }
    
    Component {
        id: yamlContent
        Lsd.LsdQuote {
            text: 'name: lsd-qt\nversion: 1.0.0\ncomponents: 15'
            mode: "indented-line"
            width: parent.width
        }
    }
}
