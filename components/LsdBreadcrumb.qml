import QtQuick 2.15
import "../theme" as Theme

Row {
    id: root
    
    // Public API
    property var items: []  // Array of {text: "Home", value: "home"} objects
    property int maxItems: 5
    property bool ellipsis: true
    
    signal itemClicked(string value, string text)
    
    spacing: Theme.LsdTheme.spacing[1] // 8px
    
    Repeater {
        model: getDisplayItems()
        
        Row {
            spacing: Theme.LsdTheme.spacing[1] // 8px
            
            Text {
                text: modelData.text
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: Theme.LsdTheme.typography.body2Size
                font.weight: Font.Normal
                font.underline: mouseArea.containsMouse
                color: index === (root.items.length - 1) ? Theme.LsdTheme.textPrimary : Theme.LsdTheme.textTertiary
                anchors.verticalCenter: parent.verticalCenter
                
                MouseArea {
                    id: mouseArea
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: root.itemClicked(modelData.value, modelData.text)
                }
            }
            
            Text {
                visible: index < (getDisplayItems().length - 1)
                text: "/"
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: Theme.LsdTheme.typography.body2Size
                font.weight: Font.Normal
                color: Theme.LsdTheme.textTertiary
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
    
    function getDisplayItems() {
        if (!root.ellipsis || root.items.length <= root.maxItems) {
            return root.items
        }
        
        // Show first item, ellipsis, and last few items
        var result = []
        result.push(root.items[0])
        
        if (root.items.length > root.maxItems) {
            result.push({text: "...", value: "ellipsis"})
            
            var remainingSlots = root.maxItems - 2 // Account for first item and ellipsis
            var startIndex = root.items.length - remainingSlots
            
            for (var i = startIndex; i < root.items.length; i++) {
                result.push(root.items[i])
            }
        }
        
        return result
    }
}
