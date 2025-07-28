import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string text: ""
    property string mode: "indented-line"  // "indented-line" | "parentheses"
    default property alias contents: textContainer.children
    
    color: "transparent"
    width: parent.width
    height: textContainer.height + (Theme.LsdTheme.spacing[2] * 2) // 32px padding
    
    Rectangle {
        id: quoteLine
        visible: root.mode === "indented-line"
        width: 4
        height: parent.height
        color: Theme.LsdTheme.borderPrimary
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }
    
    Item {
        id: textContainer
        anchors.left: root.mode === "indented-line" ? quoteLine.right : parent.left
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: root.mode === "indented-line" ? Theme.LsdTheme.spacing[3] : 0 // 24px
        height: childrenRect.height
        
        Text {
            visible: root.text !== ""
            text: root.mode === "parentheses" ? `"${root.text}"` : root.text
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: Theme.LsdTheme.typography.body1Size
            font.weight: Font.Normal
            font.italic: true
            color: Theme.LsdTheme.textPrimary
            width: parent.width
            wrapMode: Text.WordWrap
        }
    }
}
