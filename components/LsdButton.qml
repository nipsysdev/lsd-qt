import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string text: ""
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "medium"       // "small" | "medium" | "large"
    property bool disabled: false
    
    signal clicked()
    
    // Internal state
    property bool hovered: false
    
    // Styling based on LSD design tokens
    color: variant === "filled" ? Theme.LsdTheme.surfaceSecondary : "transparent"
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    // Size variants
    width: buttonText.implicitWidth + getSizePadding()
    height: getSizeHeight()
    
    // Disabled state
    opacity: disabled ? 0.34 : 1.0
    
    function getSizePadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.button.smallPadding
            case "large": return Theme.LsdTheme.button.largePadding
            default: return Theme.LsdTheme.button.mediumPadding
        }
    }
    
    function getSizeHeight() {
        switch(size) {
            case "small": return Theme.LsdTheme.button.smallHeight
            case "large": return Theme.LsdTheme.button.largeHeight
            default: return Theme.LsdTheme.button.mediumHeight
        }
    }
    
    Text {
        id: buttonText
        text: root.text
        font.family: Theme.LsdTheme.typography.fontFamily
        font.pixelSize: Theme.LsdTheme.typography.body2Size
        font.weight: Font.Normal
        color: variant === "filled" ? Theme.LsdTheme.textSecondary : Theme.LsdTheme.textPrimary
        font.underline: root.hovered && variant === "outlined"
        anchors.centerIn: parent
    }
    
    MouseArea {
        anchors.fill: parent
        enabled: !root.disabled
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: root.hovered = true
        onExited: root.hovered = false
        onClicked: root.clicked()
    }
}
