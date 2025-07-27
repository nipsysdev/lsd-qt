import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Row {
    width: parent.width
    
    Lsd.LsdText {
        text: "LSD-Qt Component Library"
        variant: "h1"
        anchors.verticalCenter: parent.verticalCenter
    }
    
    Item { 
        width: parent.width - 400
        height: 1
    }
    
    Lsd.LsdButton {
        text: "Toggle Theme"
        variant: "outlined"
        anchors.verticalCenter: parent.verticalCenter
        onClicked: Theme.LsdTheme.toggleTheme()
    }
}
