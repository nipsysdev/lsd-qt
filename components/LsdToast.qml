import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string title: ""
    property string information: ""
    property string size: "large"        // "small" | "medium" | "large"
    property bool showClose: true
    property bool autoHide: true
    property int hideTimeout: 5000      // 5 seconds
    
    signal closeClicked()
    
    width: getToastWidth()
    height: contentColumn.implicitHeight + (getPadding() * 2)
    
    color: Theme.LsdTheme.surfacePrimary
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    // Auto-hide timer
    Timer {
        id: hideTimer
        interval: root.hideTimeout
        running: root.autoHide && root.visible
        onTriggered: root.closeClicked()
    }
    
    Column {
        id: contentColumn
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: getPadding()
        anchors.rightMargin: root.showClose ? getPadding() + 32 : getPadding()
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        Text {
            text: root.title
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: getTitleSize()
            font.weight: Font.Normal
            color: Theme.LsdTheme.textPrimary
            width: parent.width
            wrapMode: Text.WordWrap
        }
        
        Text {
            visible: root.information !== ""
            text: root.information
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: getInfoSize()
            font.weight: Font.Normal
            color: Theme.LsdTheme.textTertiary
            width: parent.width
            wrapMode: Text.WordWrap
        }
    }
    
    // Close button
    Rectangle {
        visible: root.showClose
        width: 24
        height: 24
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: getPadding()
        anchors.topMargin: getPadding()
        
        color: "transparent"
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        Text {
            text: "×"
            font.pixelSize: 14
            color: Theme.LsdTheme.textPrimary
            anchors.centerIn: parent
        }
        
        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked: root.closeClicked()
        }
    }
    
    function getToastWidth() {
        switch(size) {
            case "small": return 280
            case "medium": return 360
            case "large": return 440
            default: return 440
        }
    }
    
    function getPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[2]  // 16px
            case "medium": return Theme.LsdTheme.spacing[3] // 24px
            case "large": return Theme.LsdTheme.spacing[4]  // 32px
            default: return Theme.LsdTheme.spacing[4]
        }
    }
    
    function getTitleSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body2Size
            case "medium": return Theme.LsdTheme.typography.body1Size
            case "large": return Theme.LsdTheme.typography.h3Size
            default: return Theme.LsdTheme.typography.h3Size
        }
    }
    
    function getInfoSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body2Size
            default: return Theme.LsdTheme.typography.body2Size
        }
    }
}
