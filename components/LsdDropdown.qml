import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string label: ""
    property string supportingText: ""
    property string size: "large"      // "small" | "medium" | "large"
    property string variant: "outlined" // "outlined" | "underlined"
    property bool error: false
    property bool disabled: false
    property string currentText: ""
    property var model: []  // Array of {text: "Display", value: "val"} objects
    property string selectedValue: ""
    
    signal selectionChanged(string value, string text)
    
    spacing: Theme.LsdTheme.spacing[1] // 8px
    
    // Label
    Loader {
        active: root.label !== ""
        visible: active
        
        sourceComponent: Text {
            text: root.label
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: Theme.LsdTheme.typography.labelSize
            font.weight: Font.Normal
            color: Theme.LsdTheme.textPrimary
        }
    }
    
    // Dropdown trigger
    Rectangle {
        id: trigger
        width: root.width
        height: getInputHeight()
        
        color: Theme.LsdTheme.surfacePrimary
        border.color: getBorderColor()
        border.width: variant === "outlined" ? 1 : 0
        
        // Underlined variant
        Rectangle {
            visible: variant === "underlined"
            width: parent.width
            height: 1
            color: getBorderColor()
            anchors.bottom: parent.bottom
        }
        
        Row {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            anchors.rightMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            
            Text {
                text: root.currentText || "Select an option..."
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: getFontSize()
                font.weight: Font.Normal
                color: root.currentText ? (root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary) : Theme.LsdTheme.textTertiary
                width: parent.width - 24
                elide: Text.ElideRight
            }
            
            Text {
                text: popup.visible ? "▲" : "▼"
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: 12
                color: Theme.LsdTheme.textPrimary
                width: 24
                horizontalAlignment: Text.AlignHCenter
            }
        }
        
        MouseArea {
            anchors.fill: parent
            enabled: !root.disabled
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked: popup.visible ? popup.close() : popup.open()
        }
    }
    
    // Supporting text
    Loader {
        active: root.supportingText !== ""
        visible: active
        
        sourceComponent: Text {
            text: root.supportingText
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: Theme.LsdTheme.typography.body3Size
            font.weight: Font.Normal
            color: root.error ? "#ff0000" : Theme.LsdTheme.textTertiary
        }
    }
    
    // Popup menu
    Popup {
        id: popup
        y: trigger.height + 4
        width: trigger.width
        height: Math.min(listView.contentHeight + 2, 200)
        
        background: Rectangle {
            color: Theme.LsdTheme.surfacePrimary
            border.color: Theme.LsdTheme.borderPrimary
            border.width: 1
        }
        
        ListView {
            id: listView
            anchors.fill: parent
            anchors.margins: 1
            model: root.model
            clip: true
            
            delegate: Rectangle {
                width: listView.width
                height: 36
                color: mouseArea.containsMouse ? Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.05) : "transparent"
                
                Text {
                    text: modelData.text || modelData
                    font.family: Theme.LsdTheme.typography.fontFamily
                    font.pixelSize: getFontSize()
                    font.weight: Font.Normal
                    color: Theme.LsdTheme.textPrimary
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: Theme.LsdTheme.spacing[2] // 16px
                }
                
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: {
                        var value = modelData.value !== undefined ? modelData.value : modelData
                        var text = modelData.text !== undefined ? modelData.text : modelData
                        root.selectedValue = value
                        root.currentText = text
                        root.selectionChanged(value, text)
                        popup.close()
                    }
                }
            }
        }
    }
    
    function getInputHeight() {
        switch(size) {
            case "small": return Theme.LsdTheme.button.smallHeight
            case "medium": return Theme.LsdTheme.button.mediumHeight
            case "large": return Theme.LsdTheme.button.largeHeight
            default: return Theme.LsdTheme.button.largeHeight
        }
    }
    
    function getFontSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
    
    function getBorderColor() {
        if (root.error) return "#ff0000"
        return Theme.LsdTheme.borderPrimary
    }
}
