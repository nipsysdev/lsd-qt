import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Colors"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Design tokens for the current theme"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Grid {
        columns: 2
        columnSpacing: Theme.LsdTheme.spacing[4] // 32px
        rowSpacing: Theme.LsdTheme.spacing[3] // 24px
        
        ColorSwatch {
            name: "Surface Primary"
            value: Theme.LsdTheme.surfacePrimary
            description: "Main background color"
        }
        
        ColorSwatch {
            name: "Surface Secondary"
            value: Theme.LsdTheme.surfaceSecondary
            description: "Inverted background"
        }
        
        ColorSwatch {
            name: "Text Primary"
            value: Theme.LsdTheme.textPrimary
            description: "Main text color"
        }
        
        ColorSwatch {
            name: "Text Secondary"
            value: Theme.LsdTheme.textSecondary
            description: "Inverted text color"
        }
        
        ColorSwatch {
            name: "Border Primary"
            value: Theme.LsdTheme.borderPrimary
            description: "All borders and outlines"
        }
        
        ColorSwatch {
            name: "Text Tertiary"
            value: Theme.LsdTheme.textTertiary
            description: "Muted text (34% opacity)"
        }
    }
}
