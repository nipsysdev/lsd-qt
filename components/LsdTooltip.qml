import QtQuick 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string text: ""
    property string position: "top"      // "top" | "bottom" | "left" | "right"
    property bool tooltipVisible: false
    property Item target: null
    
    // Styling
    color: Theme.LsdTheme.surfaceSecondary
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    visible: tooltipVisible
    
    width: tooltipText.implicitWidth + 16
    height: tooltipText.implicitHeight + 12
    
    z: 1000
    
    Text {
        id: tooltipText
        text: root.text
        font.family: Theme.LsdTheme.typography.fontFamily
        font.pixelSize: Theme.LsdTheme.typography.body3Size
        font.weight: Font.Normal
        color: Theme.LsdTheme.textSecondary
        anchors.centerIn: parent
        wrapMode: Text.WordWrap
        width: Math.min(implicitWidth, 200)
    }
    
    // Arrow (simple triangle)
    Rectangle {
        id: arrow
        width: 8
        height: 8
        color: Theme.LsdTheme.surfaceSecondary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        rotation: 45
        
        anchors.horizontalCenter: root.position === "top" || root.position === "bottom" ? parent.horizontalCenter : undefined
        anchors.verticalCenter: root.position === "left" || root.position === "right" ? parent.verticalCenter : undefined
        
        y: root.position === "top" ? parent.height - 4 :
           root.position === "bottom" ? -4 : parent.height / 2 - 4
           
        x: root.position === "left" ? parent.width - 4 :
           root.position === "right" ? -4 : parent.width / 2 - 4
    }
    
    function updatePosition() {
        if (!target || !parent) return
        
        var targetPos = target.mapToItem(parent, 0, 0)
        var spacing = 8
        
        switch(position) {
            case "top":
                root.x = targetPos.x + (target.width - root.width) / 2
                root.y = targetPos.y - root.height - spacing
                break
            case "bottom":
                root.x = targetPos.x + (target.width - root.width) / 2
                root.y = targetPos.y + target.height + spacing
                break
            case "left":
                root.x = targetPos.x - root.width - spacing
                root.y = targetPos.y + (target.height - root.height) / 2
                break
            case "right":
                root.x = targetPos.x + target.width + spacing
                root.y = targetPos.y + (target.height - root.height) / 2
                break
        }
    }
    
    onTargetChanged: updatePosition()
    onPositionChanged: updatePosition()
    onVisibleChanged: if (visible) updatePosition()
}
