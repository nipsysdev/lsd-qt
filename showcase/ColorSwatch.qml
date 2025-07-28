import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Rectangle {
    property string name: ""
    property color value: "#000000"
    property string description: ""
    
    width: 280
    height: 120
    color: "transparent"
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    Column {
        anchors.fill: parent
        anchors.margins: Theme.LsdTheme.spacing[2] // 16px
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        Row {
            width: parent.width
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Rectangle {
                width: 32
                height: 32
                color: value
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                anchors.verticalCenter: parent.verticalCenter
            }
            
            Column {
                anchors.verticalCenter: parent.verticalCenter
                
                Lsd.LsdText {
                    text: name
                    variant: "body1"
                }
                
                Lsd.LsdText {
                    text: value.toString()
                    variant: "body3"
                    colorVariant: "tertiary"
                }
            }
        }
        
        Lsd.LsdText {
            text: description
            variant: "body2"
            colorVariant: "tertiary"
            width: parent.width
        }
    }
}
