import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Item {
    width: parent.width
    height: parent.height
    
    property bool basicModalOpen: false
    property bool confirmModalOpen: false
    property bool formModalOpen: false
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        Lsd.LsdText {
            text: "Modal"
            variant: "h2"
        }
        
        Lsd.LsdText {
            text: "Dialog windows that overlay the main content"
            variant: "body2"
            colorVariant: "tertiary"
        }
        
        Column {
            width: parent.width
            spacing: Theme.LsdTheme.spacing[4] // 32px
            
            // Basic usage
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Basic Usage"
                    variant: "h3"
                }
                
                Lsd.LsdButton {
                    text: "Open Modal"
                    onClicked: basicModalOpen = true
                }
            }
            
            // Size variants
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdText {
                    text: "Size Variants"
                    variant: "h3"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[3] // 24px
                    
                    Lsd.LsdButton {
                        text: "Small Modal"
                        variant: "outlined"
                        onClicked: confirmModalOpen = true
                    }
                    
                    Lsd.LsdButton {
                        text: "Medium Modal"
                        variant: "outlined"
                        onClicked: formModalOpen = true
                    }
                }
            }
        }
    }
    
    // Basic Modal
    Lsd.LsdModal {
        isOpen: basicModalOpen
        title: "Basic Modal"
        subtitle: "This is a simple modal dialog"
        size: "medium"
        onCloseRequested: basicModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            width: parent.width
            
            Lsd.LsdText {
                text: "This is the content of the modal. You can put any components here."
                variant: "body1"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: basicModalOpen = false
                }
                
                Lsd.LsdButton {
                    text: "Confirm"
                    onClicked: basicModalOpen = false
                }
            }
        }
    }
    
    // Small Modal
    Lsd.LsdModal {
        isOpen: confirmModalOpen
        title: "Confirm Action"
        size: "small"
        onCloseRequested: confirmModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            width: parent.width
            
            Lsd.LsdText {
                text: "Are you sure you want to continue?"
                variant: "body1"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: confirmModalOpen = false
                }
                
                Lsd.LsdButton {
                    text: "Continue"
                    onClicked: confirmModalOpen = false
                }
            }
        }
    }
    
    // Form Modal
    Lsd.LsdModal {
        isOpen: formModalOpen
        title: "Edit Profile"
        subtitle: "Update your information"
        size: "medium"
        onCloseRequested: formModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            width: parent.width
            
            Lsd.LsdTextField {
                label: "Name"
                placeholderText: "Enter your name"
                width: parent.width
            }
            
            Lsd.LsdTextField {
                label: "Email"
                placeholderText: "Enter your email"
                width: parent.width
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: formModalOpen = false
                }
                
                Lsd.LsdButton {
                    text: "Save"
                    onClicked: formModalOpen = false
                }
            }
        }
    }
}
