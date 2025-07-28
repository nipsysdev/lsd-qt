import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    objectName: "LsdIconButton" // For group detection
    
    // Public API
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "medium"       // "small" | "medium" | "large"
    property bool disabled: false
    property bool isSelected: false      // For group selection state
    property bool rightBorderVisible: true // For group styling
    default property alias contents: contentContainer.children
    
    signal clicked()
    
    // Internal state
    property bool hovered: false
    
    // Styling based on LSD design tokens
    color: {
        if (isSelected) return Theme.LsdTheme.surfaceSecondary
        if (variant === "filled") return Theme.LsdTheme.surfaceSecondary
        return "transparent"
    }
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    // Size variants - square buttons
    width: getSizeHeight()
    height: getSizeHeight()
    
    // Disabled state
    opacity: disabled ? 0.34 : 1.0
    
    function getSizeHeight() {
        switch(size) {
            case "small": return Theme.LsdTheme.button.smallHeight
            case "large": return Theme.LsdTheme.button.largeHeight
            default: return Theme.LsdTheme.button.mediumHeight
        }
    }
    
    Item {
        id: contentContainer
        anchors.centerIn: parent
        width: parent.width * 0.6
        height: parent.height * 0.6
    }
    
    // Right border overlay for group styling  
    Rectangle {
        width: 1
        height: parent.height
        color: Theme.LsdTheme.surfacePrimary
        anchors.right: parent.right
        visible: !rightBorderVisible
        z: 1
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
