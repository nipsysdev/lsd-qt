import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Rectangle {
    id: root
    
    property string text: ""
    property bool isSelected: false
    property bool isHovered: false
    signal clicked()
    
    width: parent.width
    height: 36
    color: {
        if (isSelected) {
            return Qt.rgba(Theme.LsdTheme.textPrimary.r, 
                          Theme.LsdTheme.textPrimary.g, 
                          Theme.LsdTheme.textPrimary.b, 0.08)
        } else if (isHovered) {
            return Qt.rgba(Theme.LsdTheme.textPrimary.r, 
                          Theme.LsdTheme.textPrimary.g, 
                          Theme.LsdTheme.textPrimary.b, 0.05)
        } else {
            return "transparent"
        }
    }
    border.color: "transparent"
    border.width: 0
    
    Lsd.LsdText {
        text: root.text
        variant: "body2"
        colorVariant: "primary"
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: Theme.LsdTheme.spacing[2] // 16px
    }
    
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        
        onClicked: root.clicked()
        
        onEntered: root.isHovered = true
        onExited: root.isHovered = false
    }
}
