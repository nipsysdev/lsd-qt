import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string size: "medium"  // "small" | "medium" | "large"
    default property alias contents: contentContainer.children
    
    spacing: getSpacing()
    
    function getSpacing() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[1]  // 8px
            case "large": return Theme.LsdTheme.spacing[3]  // 24px
            default: return Theme.LsdTheme.spacing[2]       // 16px
        }
    }
    
    Item {
        id: contentContainer
        width: parent.width
        height: childrenRect.height
    }
}
