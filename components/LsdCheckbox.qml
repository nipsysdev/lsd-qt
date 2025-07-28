import QtQuick 2.15
import "../theme" as Theme

Row {
    id: root
    
    // Public API
    property string text: ""
    property bool checked: false
    property bool indeterminate: false
    property bool disabled: false
    property string size: "large"  // "small" | "medium" | "large"
    
    signal toggled(bool checked)
    
    spacing: Theme.LsdTheme.spacing[1] // 8px
    
    // Checkbox
    Rectangle {
        id: checkbox
        width: getCheckboxSize()
        height: getCheckboxSize()
        anchors.verticalCenter: parent.verticalCenter
        
        color: (root.checked || root.indeterminate) ? Theme.LsdTheme.surfaceSecondary : Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        opacity: root.disabled ? 0.34 : 1.0
        
        // Check mark
        Text {
            visible: root.checked && !root.indeterminate
            text: "✓"
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: getCheckboxSize() * 0.6
            color: Theme.LsdTheme.textSecondary
            anchors.centerIn: parent
        }
        
        // Indeterminate mark
        Rectangle {
            visible: root.indeterminate
            width: parent.width * 0.6
            height: 2
            color: Theme.LsdTheme.textSecondary
            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent
            enabled: !root.disabled
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            
            onClicked: {
                if (!root.disabled) {
                    root.checked = !root.checked
                    root.toggled(root.checked)
                }
            }
        }
    }
    
    // Label
    Text {
        visible: root.text !== ""
        text: root.text
        font.family: Theme.LsdTheme.typography.fontFamily  
        font.pixelSize: getLabelSize()
        font.weight: Font.Normal
        color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
        anchors.verticalCenter: parent.verticalCenter
        
        MouseArea {
            anchors.fill: parent
            enabled: !root.disabled
            cursorShape: Qt.PointingHandCursor
            
            onClicked: {
                if (!root.disabled) {
                    root.checked = !root.checked
                    root.toggled(root.checked)
                }
            }
        }
    }
    
    function getCheckboxSize() {
        switch(size) {
            case "small": return 16
            case "medium": return 20
            case "large": return 24
            default: return 24
        }
    }
    
    function getLabelSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
}
