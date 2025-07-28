import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string text: ""
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "large"        // "small" | "large"
    property bool disabled: false
    
    // LSD Badge styling
    color: variant === "filled" ? Theme.LsdTheme.surfaceSecondary : "transparent"
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    // Size variants
    width: badgeText.implicitWidth + getPadding()
    height: getHeight()
    
    // Disabled state
    opacity: disabled ? 0.34 : 1.0
    
    function getPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[1] * 2  // 16px (8px each side)
            case "large": return Theme.LsdTheme.spacing[2] * 2  // 32px (16px each side)
            default: return Theme.LsdTheme.spacing[2] * 2
        }
    }
    
    function getHeight() {
        switch(size) {
            case "small": return 20
            case "large": return 24
            default: return 24
        }
    }
    
    Text {
        id: badgeText
        text: root.text
        font.family: Theme.LsdTheme.typography.fontFamily
        font.pixelSize: size === "small" ? Theme.LsdTheme.typography.body3Size : Theme.LsdTheme.typography.labelSize
        font.weight: Font.Normal
        color: variant === "filled" ? Theme.LsdTheme.textSecondary : Theme.LsdTheme.textPrimary
        anchors.centerIn: parent
    }
}
