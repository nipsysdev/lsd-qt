import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Spacing Scale"
        variant: "h2"
    }
    
    Column {
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        Repeater {
            model: Theme.LsdTheme.spacing.length
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "spacing[" + index + "]:"
                    variant: "body3"
                    width: 80
                    anchors.verticalCenter: parent.verticalCenter
                }
                
                Rectangle {
                    width: Theme.LsdTheme.spacing[index]
                    height: 20
                    color: Theme.LsdTheme.borderPrimary
                    anchors.verticalCenter: parent.verticalCenter
                }
                
                Lsd.LsdText {
                    text: Theme.LsdTheme.spacing[index] + "px"
                    variant: "body3"
                    colorVariant: "tertiary"
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
    }
}
