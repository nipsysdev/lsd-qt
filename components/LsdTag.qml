import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string text: ""
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "large"        // "small" | "large"
    property bool disabled: false
    property bool removable: false
    property bool clickable: false
    
    signal removeClicked()
    signal clicked()
    
    // LSD Tag styling
    color: variant === "filled" ? Theme.LsdTheme.surfaceSecondary : "transparent"
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    radius: 2  // Slight rounding for tags
    
    // Size variants
    width: tagRow.implicitWidth + getPadding()
    height: getHeight()
    
    // Disabled state
    opacity: disabled ? 0.34 : 1.0
    
    Row {
        id: tagRow
        anchors.centerIn: parent
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        Text {
            text: root.text
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: size === "small" ? Theme.LsdTheme.typography.body3Size : Theme.LsdTheme.typography.labelSize
            font.weight: Font.Normal
            color: variant === "filled" ? Theme.LsdTheme.textSecondary : Theme.LsdTheme.textPrimary
            anchors.verticalCenter: parent.verticalCenter
        }
        
        // Remove button
        Rectangle {
            visible: root.removable
            width: 16
            height: 16
            color: "transparent"
            border.color: variant === "filled" ? Theme.LsdTheme.textSecondary : Theme.LsdTheme.textPrimary
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter
            
            Text {
                text: "×"
                font.pixelSize: 10
                color: variant === "filled" ? Theme.LsdTheme.textSecondary : Theme.LsdTheme.textPrimary
                anchors.centerIn: parent
            }
            
            MouseArea {
                anchors.fill: parent
                enabled: !root.disabled
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: root.removeClicked()
            }
        }
    }
    
    // Main clickable area (only if clickable and not just removable)
    MouseArea {
        anchors.fill: parent
        enabled: root.clickable && !root.disabled
        hoverEnabled: root.clickable
        cursorShape: root.clickable ? Qt.PointingHandCursor : Qt.ArrowCursor
        onClicked: if (root.clickable) root.clicked()
    }
    
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
            case "large": return 28
            default: return 28
        }
    }
}
