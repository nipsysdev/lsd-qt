import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Quote"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Text blocks for highlighting quotations and callouts"
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
            
            Lsd.LsdQuote {
                text: "This is a basic quote using the default indented line style."
            }
        }
        
        // Mode variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Mode Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                width: parent.width
                
                Lsd.LsdQuote {
                    mode: "indented-line"
                    text: "This quote uses the indented line mode with a border on the left side."
                }
                
                Lsd.LsdQuote {
                    mode: "parentheses"
                    text: "This quote uses parentheses mode for a different visual style."
                }
            }
        }
        
        // With custom content
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "With Custom Content"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                width: parent.width
                
                Lsd.LsdQuote {
                    mode: "indented-line"
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "The best way to predict the future is to invent it."
                            variant: "body1"
                        }
                        
                        Lsd.LsdText {
                            text: "— Alan Kay"
                            variant: "body2"
                            colorVariant: "tertiary"
                        }
                    }
                }
                
                Lsd.LsdQuote {
                    mode: "parentheses"
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Code is like humor. When you have to explain it, it's bad."
                            variant: "body1"
                        }
                        
                        Lsd.LsdText {
                            text: "— Cory House"
                            variant: "body2"
                            colorVariant: "tertiary"
                        }
                    }
                }
            }
        }
    }
}
