import QtQuick 2.15
import "../theme" as Theme

Row {
    id: root
    
    // Public API
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "large"        // "small" | "medium" | "large"
    property bool disabled: false
    default property alias contents: buttonContainer.children
    
    spacing: 0 // Buttons connect seamlessly
    
    Item {
        id: buttonContainer
        width: childrenRect.width
        height: childrenRect.height
        
        // Pass properties to child buttons
        property string groupVariant: root.variant
        property string groupSize: root.size
        property bool groupDisabled: root.disabled
    }
}
