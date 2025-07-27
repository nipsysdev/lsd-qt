import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "../components" as Lsd
import "../theme" as Theme

ApplicationWindow {
    id: window
    width: 1200
    height: 800
    visible: true
    title: "LSD-Qt Component Demo"
    
    property string selectedDemo: "buttons"
    
    Rectangle {
        anchors.fill: parent
        color: Theme.LsdTheme.surfacePrimary
        
        // Top bar
        Rectangle {
            id: topBar
            width: parent.width
            height: 60
            color: Theme.LsdTheme.surfacePrimary
            border.color: Theme.LsdTheme.borderPrimary
            border.width: 1
            z: 1
            
            Row {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: Theme.LsdTheme.spacing[3] // 24px
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "LSD-Qt"
                    variant: "h3"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
            
            Row {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: Theme.LsdTheme.spacing[3] // 24px
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: Theme.LsdTheme.currentTheme === "light" ? "Light" : "Dark"
                    variant: "body2"
                    anchors.verticalCenter: parent.verticalCenter
                }
                
                Lsd.LsdButton {
                    text: "Toggle"
                    variant: "outlined"
                    size: "small"
                    anchors.verticalCenter: parent.verticalCenter
                    onClicked: Theme.LsdTheme.toggleTheme()
                }
            }
        }
        
        // Main content area
        Row {
            anchors.top: topBar.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            
            // Sidebar
            Rectangle {
                id: sidebar
                width: 240
                height: parent.height
                color: Theme.LsdTheme.surfacePrimary
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                
                // Remove top border since topBar already has one
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.surfacePrimary
                    anchors.top: parent.top
                }
                
                Column {
                    anchors.fill: parent
                    anchors.margins: Theme.LsdTheme.spacing[2] // 16px
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Components"
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                    }
                    
                    SidebarItem {
                        text: "Typography"
                        isSelected: selectedDemo === "typography"
                        onClicked: selectedDemo = "typography"
                    }
                    
                    SidebarItem {
                        text: "Buttons"
                        isSelected: selectedDemo === "buttons"
                        onClicked: selectedDemo = "buttons"
                    }
                    
                    SidebarItem {
                        text: "Spacing"
                        isSelected: selectedDemo === "spacing"
                        onClicked: selectedDemo = "spacing"
                    }
                    
                    Rectangle {
                        width: parent.width
                        height: 1
                        color: Theme.LsdTheme.borderPrimary
                    }
                    
                    Lsd.LsdText {
                        text: "Design Tokens"
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                    }
                    
                    SidebarItem {
                        text: "Colors"
                        isSelected: selectedDemo === "colors"
                        onClicked: selectedDemo = "colors"
                    }
                }
            }
            
            // Content area
            Rectangle {
                width: parent.width - sidebar.width
                height: parent.height
                color: Theme.LsdTheme.surfacePrimary
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                
                // Remove top and left borders to avoid double borders
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.surfacePrimary
                    anchors.top: parent.top
                }
                
                Rectangle {
                    width: 1
                    height: parent.height
                    color: Theme.LsdTheme.surfacePrimary
                    anchors.left: parent.left
                }
                
                ScrollView {
                    anchors.fill: parent
                    anchors.margins: Theme.LsdTheme.spacing[4] // 32px
                    
                    Loader {
                        id: contentLoader
                        width: parent.width
                        source: {
                            switch(selectedDemo) {
                                case "typography": return "TypographyDemo.qml"
                                case "buttons": return "ButtonDemo.qml"
                                case "spacing": return "SpacingDemo.qml"
                                case "colors": return "ColorsDemo.qml"
                                default: return "ButtonDemo.qml"
                            }
                        }
                    }
                }
            }
        }
    }
}
