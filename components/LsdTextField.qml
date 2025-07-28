import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string text: ""
    property string placeholderText: ""
    property string label: ""
    property string supportingText: ""
    property string size: "large"      // "small" | "medium" | "large"
    property string variant: "outlined" // "outlined" | "underlined"
    property bool error: false
    property bool disabled: false
    property bool readOnly: false
    
    // Input properties
    property alias inputMethodHints: textInput.inputMethodHints
    property alias validator: textInput.validator
    property alias echoMode: textInput.echoMode
    property alias maximumLength: textInput.maximumLength
    
    signal textEdited(string text)
    signal accepted()
    
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
    
    // Input container
    Rectangle {
        id: inputContainer
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
        
        TextInput {
            id: textInput
            anchors.fill: parent
            anchors.leftMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            anchors.rightMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            anchors.topMargin: variant === "outlined" ? Theme.LsdTheme.spacing[1] : 0
            anchors.bottomMargin: variant === "outlined" ? Theme.LsdTheme.spacing[1] : 0
            
            text: root.text
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: getFontSize()
            font.weight: Font.Normal
            color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
            verticalAlignment: TextInput.AlignVCenter
            
            enabled: !root.disabled && !root.readOnly
            selectByMouse: true
            
            onTextChanged: {
                root.text = text
                root.textEdited(text)
            }
            
            onAccepted: root.accepted()
            
            // Placeholder text
            Text {
                anchors.fill: parent
                text: root.placeholderText
                font: textInput.font
                color: Theme.LsdTheme.textTertiary
                verticalAlignment: Text.AlignVCenter
                visible: textInput.text === "" && !textInput.activeFocus && root.placeholderText !== ""
            }
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
        if (textInput.activeFocus) return Theme.LsdTheme.borderPrimary
        return Theme.LsdTheme.borderPrimary
    }
}
