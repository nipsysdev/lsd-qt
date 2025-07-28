import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API  
    property string activeTab: ""
    property string size: "large"      // "small" | "medium" | "large"
    property bool fullWidth: false
    property var tabs: []  // Array of {name: "tab1", text: "Tab 1", content: Component} 
    
    signal tabChanged(string tabName)
    
    spacing: 0
    
    // Tab bar
    Rectangle {
        id: tabBar
        width: parent.width
        height: getTabHeight()
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 0
        
        Rectangle {
            width: parent.width
            height: 1
            color: Theme.LsdTheme.borderPrimary
            anchors.bottom: parent.bottom
        }
        
        Row {
            anchors.fill: parent
            
            Repeater {
                model: root.tabs
                
                Rectangle {
                    id: tabItem
                    width: root.fullWidth ? (tabBar.width / root.tabs.length) : (tabText.implicitWidth + getTabPadding())
                    height: parent.height
                    
                    property bool isActive: root.activeTab === modelData.name
                    property bool hovered: false
                    
                    color: "transparent"
                    border.color: "transparent"
                    border.width: 0
                    
                    // Active tab bottom border
                    Rectangle {
                        visible: tabItem.isActive
                        width: parent.width
                        height: 2
                        color: Theme.LsdTheme.borderPrimary
                        anchors.bottom: parent.bottom
                    }
                    
                    Text {
                        id: tabText
                        text: modelData.text || modelData.name
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: getTabFontSize()
                        font.weight: Font.Normal
                        font.underline: tabItem.hovered && !tabItem.isActive
                        color: tabItem.isActive ? Theme.LsdTheme.textPrimary : Theme.LsdTheme.textTertiary
                        anchors.centerIn: parent
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        cursorShape: Qt.PointingHandCursor
                        
                        onEntered: tabItem.hovered = true
                        onExited: tabItem.hovered = false
                        
                        onClicked: {
                            root.activeTab = modelData.name
                            root.tabChanged(modelData.name)
                        }
                    }
                }
            }
        }
    }
    
    // Content area
    Rectangle {
        width: parent.width
        height: 200 // Fixed height to avoid binding loop
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 0
        
        Loader {
            id: contentLoader
            anchors.fill: parent
            anchors.margins: Theme.LsdTheme.spacing[3] // 24px
            
            sourceComponent: {
                for (var i = 0; i < root.tabs.length; i++) {
                    if (root.tabs[i].name === root.activeTab) {
                        return root.tabs[i].content
                    }
                }
                return null
            }
        }
    }
    
    function getTabHeight() {
        switch(size) {
            case "small": return 36
            case "medium": return 44  
            case "large": return 52
            default: return 52
        }
    }
    
    function getTabFontSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
    
    function getTabPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[2] * 2  // 32px
            case "medium": return Theme.LsdTheme.spacing[3] * 2 // 48px
            case "large": return Theme.LsdTheme.spacing[4] * 2  // 64px
            default: return Theme.LsdTheme.spacing[4] * 2
        }
    }
    
    Component.onCompleted: {
        if (root.tabs.length > 0 && root.activeTab === "") {
            root.activeTab = root.tabs[0].name
        }
    }
}
