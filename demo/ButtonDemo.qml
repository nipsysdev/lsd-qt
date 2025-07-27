import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Buttons"
        variant: "h2"
    }
    
    Column {
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Row {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Filled:"
                variant: "label"
                anchors.verticalCenter: parent.verticalCenter
                width: 80
            }
            
            Lsd.LsdButton {
                text: "Large"
                variant: "filled"
                size: "large"
                onClicked: console.log("Large filled clicked")
            }
            
            Lsd.LsdButton {
                text: "Medium"
                variant: "filled"
                size: "medium"
                onClicked: console.log("Medium filled clicked")
            }
            
            Lsd.LsdButton {
                text: "Small"
                variant: "filled"
                size: "small"
                onClicked: console.log("Small filled clicked")
            }
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Outlined:"
                variant: "label"
                anchors.verticalCenter: parent.verticalCenter
                width: 80
            }
            
            Lsd.LsdButton {
                text: "Large"
                variant: "outlined"
                size: "large"
                onClicked: console.log("Large outlined clicked")
            }
            
            Lsd.LsdButton {
                text: "Medium"
                variant: "outlined"
                size: "medium"
                onClicked: console.log("Medium outlined clicked")
            }
            
            Lsd.LsdButton {
                text: "Small"
                variant: "outlined"
                size: "small"
                onClicked: console.log("Small outlined clicked")
            }
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Disabled:"
                variant: "label"
                anchors.verticalCenter: parent.verticalCenter
                width: 80
            }
            
            Lsd.LsdButton {
                text: "Disabled Filled"
                variant: "filled"
                disabled: true
            }
            
            Lsd.LsdButton {
                text: "Disabled Outlined"
                variant: "outlined"
                disabled: true
            }
        }
    }
}
