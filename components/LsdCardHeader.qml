import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string title: ""
    property string subtitle: ""
    property string size: "medium"  // "small" | "medium" | "large"
    default property alias contents: additionalContent.children
    
    spacing: Theme.LsdTheme.spacing[1] // 8px
    
    // Main title
    Text {
        text: root.title
        font.family: Theme.LsdTheme.typography.fontFamily
        font.pixelSize: getTitleSize()
        font.weight: Font.Normal
        color: Theme.LsdTheme.textPrimary
        visible: title !== ""
        width: parent.width
    }
    
    // Subtitle  
    Text {
        text: root.subtitle
        font.family: Theme.LsdTheme.typography.fontFamily
        font.pixelSize: getSubtitleSize()
        font.weight: Font.Normal
        color: Theme.LsdTheme.textTertiary
        visible: subtitle !== ""
        width: parent.width
    }
    
    // Additional content container
    Item {
        id: additionalContent
        width: parent.width
        height: childrenRect.height
    }
    
    function getTitleSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body1Size
            case "large": return Theme.LsdTheme.typography.h3Size
            default: return Theme.LsdTheme.typography.h3Size
        }
    }
    
    function getSubtitleSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body2Size
        }
    }
}
