import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string label: ""
    property string size: "large"        // "small" | "medium" | "large"
    property var selectedValues: []
    default property alias contents: checkboxContainer.children
    
    signal selectionChanged(var selectedValues)
    
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
        id: checkboxContainer
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        // Pass properties to child checkboxes
        property string groupSize: root.size
        
        function updateSelection() {
            var selected = []
            for (var i = 0; i < children.length; i++) {
                var child = children[i]
                if (child.checked && child.value !== undefined) {
                    selected.push(child.value)
                }
            }
            root.selectedValues = selected
            root.selectionChanged(selected)
        }
    }
}
