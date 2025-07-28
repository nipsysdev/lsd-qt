import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string label: ""
    property string text: ""
    property string placeholderText: "Start typing..."
    property string size: "large"      // "small" | "medium" | "large"
    property string variant: "outlined" // "outlined" | "underlined"
    property bool error: false
    property bool disabled: false
    property var options: []           // Array of strings to search through
    property int maxResults: 10
    
    signal textEdited(string text)
    signal optionSelected(string option)
    
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
        
        Row {
            anchors.fill: parent
            anchors.leftMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            anchors.rightMargin: variant === "outlined" ? Theme.LsdTheme.spacing[2] : 0
            spacing: Theme.LsdTheme.spacing[1] // 8px
            
            Text {
                text: "🔍"
                font.pixelSize: 14
                color: Theme.LsdTheme.textTertiary
                anchors.verticalCenter: parent.verticalCenter
            }
            
            TextInput {
                id: textInput
                width: parent.width - 24
                height: parent.height
                
                text: root.text
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: getFontSize()
                font.weight: Font.Normal
                color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                verticalAlignment: TextInput.AlignVCenter
                
                enabled: !root.disabled
                selectByMouse: true
                
                onTextChanged: {
                    root.text = text
                    root.textEdited(text)
                    updateResults()
                    if (text.length > 0) {
                        popup.open()
                    } else {
                        popup.close()
                    }
                }
                
                onActiveFocusChanged: {
                    if (!activeFocus && !popup.activeFocus) {
                        popup.close()
                    }
                }
                
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
    }
    
    // Results popup
    Popup {
        id: popup
        y: inputContainer.height + 4
        width: inputContainer.width
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
            model: filteredResults
            clip: true
            
            delegate: Rectangle {
                width: listView.width
                height: 36
                color: mouseArea.containsMouse ? Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.05) : "transparent"
                
                Text {
                    text: modelData
                    font.family: Theme.LsdTheme.typography.fontFamily
                    font.pixelSize: getFontSize()
                    font.weight: Font.Normal
                    color: Theme.LsdTheme.textPrimary
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.leftMargin: Theme.LsdTheme.spacing[2] // 16px
                    
                    // Highlight matching text
                    property string searchTerm: textInput.text.toLowerCase()
                    
                    Component.onCompleted: {
                        if (searchTerm.length > 0) {
                            var originalText = modelData
                            var lowerText = originalText.toLowerCase()
                            var startIndex = lowerText.indexOf(searchTerm)
                            if (startIndex >= 0) {
                                // Simple highlighting - could be enhanced with rich text
                                text = originalText
                            }
                        }
                    }
                }
                
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    
                    onClicked: {
                        root.text = modelData
                        textInput.text = modelData
                        root.optionSelected(modelData)
                        popup.close()
                    }
                }
            }
        }
    }
    
    property var filteredResults: []
    
    function updateResults() {
        if (textInput.text.length === 0) {
            filteredResults = []
            return
        }
        
        var searchTerm = textInput.text.toLowerCase()
        var results = []
        
        for (var i = 0; i < root.options.length && results.length < root.maxResults; i++) {
            var option = root.options[i]
            if (option.toLowerCase().indexOf(searchTerm) >= 0) {
                results.push(option)
            }
        }
        
        filteredResults = results
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
