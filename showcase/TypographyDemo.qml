import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Typography"
        variant: "h2"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Heading 1 - Large display text"
            variant: "h1"
        }
        
        Lsd.LsdText {
            text: "Heading 2 - Section headers"
            variant: "h2"
        }
        
        Lsd.LsdText {
            text: "Heading 3 - Subsection headers"
            variant: "h3"
        }
        
        Lsd.LsdText {
            text: "Body 1 - Default body text for paragraphs and content"
            variant: "body1"
        }
        
        Lsd.LsdText {
            text: "Body 2 - Smaller body text for descriptions"
            variant: "body2"
        }
        
        Lsd.LsdText {
            text: "Body 3 - Caption text and small details"
            variant: "body3"
        }
        
        Lsd.LsdText {
            text: "Label - Form labels and UI text"
            variant: "label"
        }
    }
    
    // Color variants
    Row {
        spacing: Theme.LsdTheme.spacing[4] // 32px
        
        Column {
            spacing: Theme.LsdTheme.spacing[1] // 8px
            
            Lsd.LsdText {
                text: "Primary Color"
                variant: "body2"
                colorVariant: "primary"
            }
            
            Lsd.LsdText {
                text: "Secondary Color"
                variant: "body2"
                colorVariant: "secondary"
            }
            
            Lsd.LsdText {
                text: "Tertiary Color"
                variant: "body2"
                colorVariant: "tertiary"
            }
        }
    }
}
