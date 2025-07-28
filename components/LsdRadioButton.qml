import QtQuick 2.15
import "../theme" as Theme

Row {
    id: root
    
    // Public API
    property string text: ""
    property string value: ""
    property string name: ""
    property bool checked: false
    property bool disabled: false
    property string size: "large"  // "small" | "medium" | "large"
    
    signal selected(string value)
    
    spacing: Theme.LsdTheme.spacing[1] // 8px
    
    // Radio button
    Rectangle {
        id: radioButton
        width: getRadioSize()
        height: getRadioSize()
        radius: width / 2
        anchors.verticalCenter: parent.verticalCenter
        
        color: root.checked ? Theme.LsdTheme.surfaceSecondary : Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        opacity: root.disabled ? 0.34 : 1.0
        
        // Inner dot for checked state
        Rectangle {
            visible: root.checked
            width: parent.width * 0.5
            height: parent.height * 0.5
            radius: width / 2
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
                    root.checked = true
                    root.selected(root.value)
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
                    root.checked = true
                    root.selected(root.value)
                }
            }
        }
    }
    
    function getRadioSize() {
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
