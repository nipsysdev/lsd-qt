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
    
    Rectangle {
        anchors.fill: parent
        color: Theme.LsdTheme.surfacePrimary
        
        ScrollView {
            anchors.fill: parent
            anchors.margins: Theme.LsdTheme.spacing[4] // 32px
            
            Column {
                width: parent.width
                spacing: Theme.LsdTheme.spacing[6] // 64px
                
                Header {}
                
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.borderPrimary
                }
                
                TypographyDemo {}
                
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.borderPrimary
                }
                
                ButtonDemo {}
                
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.borderPrimary
                }
                
                SpacingDemo {}
                
                Rectangle {
                    width: parent.width
                    height: 1
                    color: Theme.LsdTheme.borderPrimary
                }
                
                Lsd.LsdText {
                    text: "LSD-Qt • Minimal design system for Qt applications"
                    variant: "body3"
                    colorVariant: "tertiary"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
