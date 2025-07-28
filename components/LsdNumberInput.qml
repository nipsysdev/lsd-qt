import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property real value: 0
    property real min: -999999
    property real max: 999999
    property real step: 1
    property int decimals: 0
    property string label: ""
    property string supportingText: ""
    property string size: "large"      // "small" | "medium" | "large"
    property string variant: "outlined" // "outlined" | "underlined"
    property bool error: false
    property bool disabled: false
    
    signal numberChanged(real value)
    
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
    
    // Input container with +/- buttons
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
        
        Row {
            anchors.fill: parent
            
            // Decrease button
            Rectangle {
                width: getInputHeight()
                height: parent.height
                color: decreaseArea.pressed ? Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.1) : "transparent"
                border.color: "transparent"
                
                Text {
                    text: "−"
                    font.pixelSize: 16
                    color: root.disabled || root.value <= root.min ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                    anchors.centerIn: parent
                }
                
                MouseArea {
                    id: decreaseArea
                    anchors.fill: parent
                    enabled: !root.disabled && root.value > root.min
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        var newValue = Math.max(root.min, root.value - root.step)
                        root.value = newValue
                        root.numberChanged(newValue)
                    }
                }
                
                // Right border
                Rectangle {
                    width: 1
                    height: parent.height
                    color: Theme.LsdTheme.borderPrimary
                    anchors.right: parent.right
                }
            }
            
            // Text input
            Rectangle {
                width: parent.width - (getInputHeight() * 2)
                height: parent.height
                color: "transparent"
                
                TextInput {
                    id: textInput
                    anchors.centerIn: parent
                    width: parent.width - 16
                    
                    text: root.decimals > 0 ? root.value.toFixed(root.decimals) : Math.round(root.value).toString()
                    font.family: Theme.LsdTheme.typography.fontFamily
                    font.pixelSize: getFontSize()
                    font.weight: Font.Normal
                    color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                    horizontalAlignment: TextInput.AlignHCenter
                    verticalAlignment: TextInput.AlignVCenter
                    
                    enabled: !root.disabled
                    selectByMouse: true
                    validator: DoubleValidator {
                        bottom: root.min
                        top: root.max
                        decimals: root.decimals
                    }
                    
                    onEditingFinished: {
                        var newValue = parseFloat(text)
                        if (!isNaN(newValue)) {
                            newValue = Math.max(root.min, Math.min(root.max, newValue))
                            root.value = newValue
                            root.numberChanged(newValue)
                        }
                        text = root.decimals > 0 ? root.value.toFixed(root.decimals) : Math.round(root.value).toString()
                    }
                }
            }
            
            // Increase button
            Rectangle {
                width: getInputHeight()
                height: parent.height
                color: increaseArea.pressed ? Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.1) : "transparent"
                border.color: "transparent"
                
                Text {
                    text: "+"
                    font.pixelSize: 16
                    color: root.disabled || root.value >= root.max ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                    anchors.centerIn: parent
                }
                
                MouseArea {
                    id: increaseArea
                    anchors.fill: parent
                    enabled: !root.disabled && root.value < root.max
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: {
                        var newValue = Math.min(root.max, root.value + root.step)
                        root.value = newValue
                        root.numberChanged(newValue)
                    }
                }
                
                // Left border
                Rectangle {
                    width: 1
                    height: parent.height
                    color: Theme.LsdTheme.borderPrimary
                    anchors.left: parent.left
                }
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
        return Theme.LsdTheme.borderPrimary
    }
}
