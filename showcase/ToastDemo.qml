import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Notifications & Toasts"
        variant: "h2"
    }
    
    // Toast controls
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Show Toasts"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdButton {
                text: "Success Toast"
                variant: "filled"
                onClicked: {
                    successToast.visible = true
                    successToast.autoHide = true
                }
            }
            
            Lsd.LsdButton {
                text: "Info Toast"
                variant: "outlined"
                onClicked: {
                    infoToast.visible = true
                    infoToast.autoHide = true
                }
            }
            
            Lsd.LsdButton {
                text: "Warning Toast"
                variant: "outlined"
                onClicked: {
                    warningToast.visible = true
                    warningToast.autoHide = false
                }
            }
        }
    }
    
    // Toast examples (static)
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Toast Examples"
            variant: "h3"
        }
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Lsd.LsdToast {
                title: "Large Toast"
                information: "This is a large toast with detailed information. It can contain multiple lines of text to provide comprehensive feedback to the user."
                size: "large"
                autoHide: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                title: "Medium Toast" 
                information: "This is a medium-sized toast for general notifications."
                size: "medium"
                autoHide: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                title: "Small Toast"
                information: "Compact notification"
                size: "small"
                autoHide: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                title: "Simple Toast"
                size: "medium"
                autoHide: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                title: "No Close Button"
                information: "This toast doesn't have a close button"
                size: "medium"
                showClose: false
                autoHide: false
            }
        }
    }
    
    // Positioned toasts (overlay style)
    Item {
        id: toastContainer
        width: parent.width
        height: 300 // Fixed height instead of fill
        z: 1000
        
        Column {
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: Theme.LsdTheme.spacing[3] // 24px
            anchors.topMargin: Theme.LsdTheme.spacing[3] // 24px
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdToast {
                id: successToast
                title: "Success!"
                information: "Your action was completed successfully."
                size: "medium"
                visible: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                id: infoToast
                title: "Information"
                information: "Here's some useful information for you."
                size: "medium"
                visible: false
                onCloseClicked: visible = false
            }
            
            Lsd.LsdToast {
                id: warningToast
                title: "Warning"
                information: "Please review your input before proceeding."
                size: "medium"
                visible: false
                autoHide: false
                onCloseClicked: visible = false
            }
        }
    }
}
