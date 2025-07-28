import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string label: ""
    property bool open: false
    property bool disabled: false
    property string size: "large"      // "small" | "medium" | "large"
    default property alias contents: contentContainer.children
    
    signal toggled(bool open)
    
    spacing: 0
    
    // Header
    Rectangle {
        id: header
        width: parent.width
        height: getHeaderHeight()
        color: "transparent"
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        Row {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: getHeaderPadding()
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Text {
                text: root.open ? "▼" : "▶"
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: 12
                color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                anchors.verticalCenter: parent.verticalCenter
            }
            
            Text {
                text: root.label
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: getHeaderFontSize()
                font.weight: Font.Normal
                font.underline: headerMouseArea.containsMouse && !root.disabled
                color: root.disabled ? Theme.LsdTheme.textTertiary : Theme.LsdTheme.textPrimary
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        
        MouseArea {
            id: headerMouseArea
            anchors.fill: parent
            enabled: !root.disabled
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            
            onClicked: {
                root.open = !root.open
                root.toggled(root.open)
            }
        }
    }
    
    // Content (collapsible)
    Rectangle {
        id: contentArea
        width: parent.width
        height: root.open ? contentContainer.height + (getContentPadding() * 2) : 0
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: root.open ? 1 : 0
        
        // Remove top border to avoid double border with header
        Rectangle {
            visible: root.open
            width: parent.width
            height: 1
            color: Theme.LsdTheme.surfacePrimary
            anchors.top: parent.top
        }
        
        clip: true
        
        Behavior on height {
            NumberAnimation {
                duration: 200
                easing.type: Easing.OutCubic
            }
        }
        
        Behavior on border.width {
            NumberAnimation {
                duration: 200
            }
        }
        
        Column {
            id: contentContainer
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: getContentPadding()
            opacity: root.open ? 1 : 0
            
            Behavior on opacity {
                NumberAnimation {
                    duration: 200
                    easing.type: Easing.OutCubic
                }
            }
        }
    }
    
    function getHeaderHeight() {
        switch(size) {
            case "small": return 36
            case "medium": return 44
            case "large": return 52
            default: return 52
        }
    }
    
    function getHeaderPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[2]  // 16px
            case "medium": return Theme.LsdTheme.spacing[3] // 24px
            case "large": return Theme.LsdTheme.spacing[4]  // 32px
            default: return Theme.LsdTheme.spacing[4]
        }
    }
    
    function getContentPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[2]  // 16px
            case "medium": return Theme.LsdTheme.spacing[3] // 24px
            case "large": return Theme.LsdTheme.spacing[4]  // 32px
            default: return Theme.LsdTheme.spacing[4]
        }
    }
    
    function getHeaderFontSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body2Size
            case "medium": return Theme.LsdTheme.typography.body1Size
            case "large": return Theme.LsdTheme.typography.h3Size
            default: return Theme.LsdTheme.typography.h3Size
        }
    }
}
