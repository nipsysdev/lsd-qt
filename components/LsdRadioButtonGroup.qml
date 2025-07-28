import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string label: ""
    property string name: ""
    property string size: "large"        // "small" | "medium" | "large"
    property string selectedValue: ""
    default property alias contents: radioContainer.children
    
    signal selectionChanged(string value)
    
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
    
    Column {
        id: radioContainer
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        // Pass properties to child radio buttons
        property string groupSize: root.size
        property string groupName: root.name
        
        function updateSelection(value) {
            // Uncheck all other radio buttons
            for (var i = 0; i < children.length; i++) {
                var child = children[i]
                if (child.value !== value) {
                    child.checked = false
                }
            }
            root.selectedValue = value
            root.selectionChanged(value)
        }
    }
}
