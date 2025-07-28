import QtQuick 2.15
import "../theme" as Theme

Item {
    id: root
    
    // Public API
    property bool isOpen: false
    property string size: "large"  // "xsmall" | "small" | "medium" | "large"
    property string title: ""
    property string subtitle: ""
    default property alias contents: contentContainer.children
    
    signal closeRequested()
    
    visible: isOpen
    anchors.fill: parent
    z: 1000
    
    // Overlay
    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0, 0, 0, 0.5)
        
        MouseArea {
            anchors.fill: parent
            onClicked: root.closeRequested()
        }
    }
    
    // Modal container
    Rectangle {
        id: modal
        width: getModalWidth()
        height: Math.min(getModalHeight(), parent.height - 80)
        anchors.centerIn: parent
        
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        // Header
        Rectangle {
            id: header
            width: parent.width
            height: title !== "" || subtitle !== "" ? 60 : 0
            visible: height > 0
            color: "transparent"
            border.color: Theme.LsdTheme.borderPrimary
            border.width: 0
            
            Rectangle {
                width: parent.width
                height: 1
                color: Theme.LsdTheme.borderPrimary
                anchors.bottom: parent.bottom
                visible: parent.visible
            }
            
            Row {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: Theme.LsdTheme.spacing[3] // 24px
                anchors.rightMargin: Theme.LsdTheme.spacing[3] // 24px
                spacing: Theme.LsdTheme.spacing[1] // 8px
                width: parent.width - (Theme.LsdTheme.spacing[3] * 2) - 40 // Space for close button
                
                Column {
                    spacing: Theme.LsdTheme.spacing[0] // 4px
                    width: parent.width
                    
                    Text {
                        visible: root.title !== ""
                        text: root.title
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: Theme.LsdTheme.typography.h3Size
                        font.weight: Font.Normal
                        color: Theme.LsdTheme.textPrimary
                        width: parent.width
                        elide: Text.ElideRight
                    }
                    
                    Text {
                        visible: root.subtitle !== ""
                        text: root.subtitle
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: Theme.LsdTheme.typography.body2Size
                        font.weight: Font.Normal
                        color: Theme.LsdTheme.textTertiary
                        width: parent.width
                        elide: Text.ElideRight
                    }
                }
            }
            
            // Close button
            Rectangle {
                width: 32
                height: 32
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: Theme.LsdTheme.spacing[3] // 24px
                
                color: "transparent"
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                
                Text {
                    text: "×"
                    font.pixelSize: 18
                    color: Theme.LsdTheme.textPrimary
                    anchors.centerIn: parent
                }
                
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: root.closeRequested()
                }
            }
        }
        
        // Content area
        Item {
            id: contentContainer
            anchors.top: header.visible ? header.bottom : parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: Theme.LsdTheme.spacing[3] // 24px
        }
    }
    
    function getModalWidth() {
        switch(size) {
            case "xsmall": return 300
            case "small": return 400
            case "medium": return 600
            case "large": return 800
            default: return 800
        }
    }
    
    function getModalHeight() {
        switch(size) {
            case "xsmall": return 200
            case "small": return 300
            case "medium": return 500
            case "large": return 600
            default: return 600
        }
    }
    
    // Prevent clicks from propagating through
    MouseArea {
        anchors.fill: modal
        onClicked: {} // Absorb clicks
    }
}
