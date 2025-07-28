import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string size: "large"  // "small" | "medium" | "large"
    default property alias contents: contentContainer.children
    
    // LSD Card styling
    color: Theme.LsdTheme.surfacePrimary
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    // Size variants based on padding
    property int cardPadding: getPadding()
    
    function getPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[2]   // 16px
            case "medium": return Theme.LsdTheme.spacing[3]  // 24px
            case "large": return Theme.LsdTheme.spacing[4]   // 32px
            default: return Theme.LsdTheme.spacing[4]
        }
    }
    
    Item {
        id: contentContainer
        anchors.fill: parent
        anchors.margins: root.cardPadding
    }
}
