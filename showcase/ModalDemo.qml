import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

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
    
    property bool basicModalOpen: false
    property bool confirmDialogOpen: false
    property bool formModalOpen: false
    property bool settingsModalOpen: false
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic modal
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButton {
                    text: "Open Basic Modal"
                    variant: "outlined"
                    onClicked: basicModalOpen = true
                }
                
                Lsd.LsdButton {
                    text: "Open Confirmation"
                    variant: "filled"
                    onClicked: confirmDialogOpen = true
                }
            }
        }
        
        // Modal sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Modal Sizes"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButton {
                    text: "Form Modal"
                    variant: "outlined"
                    onClicked: formModalOpen = true
                }
                
                Lsd.LsdButton {
                    text: "Settings Modal"
                    variant: "outlined"
                    onClicked: settingsModalOpen = true
                }
            }
        }
        
        // Usage examples
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Common Use Cases"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 200
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Modal Dialog Patterns"
                        variant: "body1"
                    }
                    
                    Lsd.LsdText {
                        text: "• Confirmation dialogs for destructive actions"
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Forms for creating or editing content"
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Settings and configuration panels"
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Image galleries and media viewers"
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Help and documentation overlays"
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                }
            }
        }
    }
    
    // Basic Modal
    Lsd.LsdModal {
        visible: basicModalOpen
        width: 400
        height: 300
        title: "Basic Modal"
        onClosed: basicModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            width: parent.width
            
            Lsd.LsdText {
                text: "Welcome to the modal!"
                variant: "body1"
            }
            
            Lsd.LsdText {
                text: "This is a basic modal dialog with some content. You can add any components here like text, buttons, forms, or other elements."
                variant: "body2"
                colorVariant: "tertiary"
                wrapMode: Text.WordWrap
                width: parent.width
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                anchors.right: parent.right
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: basicModalOpen = false
                }
                
                Lsd.LsdButton {
                    text: "OK"
                    variant: "filled"
                    onClicked: {
                        console.log("Basic modal OK clicked")
                        basicModalOpen = false
                    }
                }
            }
        }
    }
    
    // Confirmation Dialog
    Lsd.LsdModal {
        visible: confirmDialogOpen
        width: 450
        height: 220
        title: "Delete Item"
        onClosed: confirmDialogOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            width: parent.width
            
            Lsd.LsdText {
                text: "Are you sure you want to delete this item?"
                variant: "body1"
            }
            
            Lsd.LsdText {
                text: "This action cannot be undone. The item will be permanently removed from your account."
                variant: "body2"
                colorVariant: "tertiary"
                wrapMode: Text.WordWrap
                width: parent.width
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                anchors.right: parent.right
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: confirmDialogOpen = false
                }
                
                Lsd.LsdButton {
                    text: "Delete"
                    variant: "filled"
                    onClicked: {
                        console.log("Item deleted")
                        confirmDialogOpen = false
                    }
                }
            }
        }
    }
    
    // Form Modal
    Lsd.LsdModal {
        visible: formModalOpen
        width: 500
        height: 400
        title: "Create New Project"
        onClosed: formModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            width: parent.width
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                width: parent.width
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Project Name"
                    placeholderText: "Enter project name"
                    variant: "outlined"
                }
                
                Lsd.LsdTextField {
                    width: parent.width
                    label: "Description"
                    placeholderText: "Project description"
                    variant: "outlined"
                    multiline: true
                    height: 80
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdDropdown {
                        width: 150
                        label: "Category"
                        model: ["Web", "Mobile", "Desktop", "API"]
                    }
                    
                    Lsd.LsdDropdown {
                        width: 150
                        label: "Priority"
                        model: ["Low", "Medium", "High", "Critical"]
                    }
                }
                
                Lsd.LsdCheckbox {
                    text: "Make project public"
                }
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                anchors.right: parent.right
                
                Lsd.LsdButton {
                    text: "Cancel"
                    variant: "outlined"
                    onClicked: formModalOpen = false
                }
                
                Lsd.LsdButton {
                    text: "Create Project"
                    variant: "filled"
                    onClicked: {
                        console.log("Project created")
                        formModalOpen = false
                    }
                }
            }
        }
    }
    
    // Settings Modal
    Lsd.LsdModal {
        visible: settingsModalOpen
        width: 600
        height: 500
        title: "Application Settings"
        onClosed: settingsModalOpen = false
        
        Column {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            width: parent.width
            
            // General settings
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                width: parent.width
                
                Lsd.LsdText {
                    text: "General"
                    variant: "body1"
                }
                
                Lsd.LsdCheckbox {
                    text: "Enable notifications"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Auto-save documents"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Show tips on startup"
                }
            }
            
            Rectangle {
                width: parent.width
                height: 1
                color: Theme.LsdTheme.borderPrimary
            }
            
            // Appearance settings
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                width: parent.width
                
                Lsd.LsdText {
                    text: "Appearance"
                    variant: "body1"
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    
                    Lsd.LsdDropdown {
                        width: 150
                        label: "Theme"
                        model: ["Light", "Dark", "Auto"]
                    }
                    
                    Lsd.LsdDropdown {
                        width: 150
                        label: "Font Size"
                        model: ["Small", "Medium", "Large"]
                    }
                }
            }
            
            Rectangle {
                width: parent.width
                height: 1
                color: Theme.LsdTheme.borderPrimary
            }
            
            // Privacy settings
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                width: parent.width
                
                Lsd.LsdText {
                    text: "Privacy"
                    variant: "body1"
                }
                
                Lsd.LsdCheckbox {
                    text: "Share usage analytics"
                }
                
                Lsd.LsdCheckbox {
                    text: "Allow crash reports"
                    checked: true
                }
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                anchors.right: parent.right
                
                Lsd.LsdButton {
                    text: "Reset to Defaults"
                    variant: "outlined"
                    onClicked: console.log("Settings reset")
                }
                
                Lsd.LsdButton {
                    text: "Save Changes"
                    variant: "filled"
                    onClicked: {
                        console.log("Settings saved")
                        settingsModalOpen = false
                    }
                }
            }
        }
    }
}
