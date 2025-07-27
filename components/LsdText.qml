import QtQuick 2.15
import "../theme" as Theme

Text {
    id: root
    
    // Public API
    property string variant: "body1"     // "h1" | "h2" | "h3" | "body1" | "body2" | "body3" | "label"
    property string colorVariant: "primary"     // "primary" | "secondary" | "tertiary"
    
    // LSD typography styling
    font.family: Theme.LsdTheme.typography.fontFamily
    font.weight: Font.Normal
    font.pixelSize: getFontSize()
    color: getTextColor()
    
    function getFontSize() {
        switch(variant) {
            case "h1": return Theme.LsdTheme.typography.h1Size
            case "h2": return Theme.LsdTheme.typography.h2Size
            case "h3": return Theme.LsdTheme.typography.h3Size
            case "body2": return Theme.LsdTheme.typography.body2Size
            case "body3": return Theme.LsdTheme.typography.body3Size
            case "label": return Theme.LsdTheme.typography.labelSize
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
    
    function getTextColor() {
        switch(root.colorVariant) {
            case "secondary": return Theme.LsdTheme.textSecondary
            case "tertiary": return Theme.LsdTheme.textTertiary
            default: return Theme.LsdTheme.textPrimary
        }
    }
}
