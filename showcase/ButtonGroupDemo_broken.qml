import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Button Group"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Connected buttons with shared styling and behavior"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic button group
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButtonGroup {
                    Lsd.LsdButton {
                        text: "Left"
                        onClicked: console.log("Left clicked")
                    }
                    Lsd.LsdButton {
                        text: "Center"
                        onClicked: console.log("Center clicked")
                    }
                    Lsd.LsdButton {
                        text: "Right"
                        onClicked: console.log("Right clicked")
                    }
                }
                
                Lsd.LsdButtonGroup {
                    Lsd.LsdButton {
                        text: "Bold"
                        onClicked: console.log("Bold clicked")
                    }
                    Lsd.LsdButton {
                        text: "Italic"
                        onClicked: console.log("Italic clicked")
                    }
                    Lsd.LsdButton {
                        text: "Underline"
                        onClicked: console.log("Underline clicked")
                    }
                }
            }
        }
        
        // Button group variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButtonGroup {
                    variant: "outlined"
                    buttons: [
                        {text: "View", value: "view"},
                        {text: "Edit", value: "edit"},
                        {text: "Delete", value: "delete"}
                    ]
                    selectedIndex: 0
                }
                
                Lsd.LsdButtonGroup {
                    variant: "filled"
                    buttons: [
                        {text: "Day", value: "day"},
                        {text: "Week", value: "week"},
                        {text: "Month", value: "month"}
                    ]
                    selectedIndex: 1
                }
            }
        }
        
        // Button group sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdButtonGroup {
                    size: "small"
                    buttons: [
                        {text: "S", value: "small"},
                        {text: "M", value: "medium"},
                        {text: "L", value: "large"}
                    ]
                }
                
                Lsd.LsdButtonGroup {
                    size: "medium"
                    buttons: [
                        {text: "Grid", value: "grid"},
                        {text: "List", value: "list"}
                    ]
                }
                
                Lsd.LsdButtonGroup {
                    size: "large"
                    buttons: [
                        {text: "Previous", value: "prev"},
                        {text: "Next", value: "next"}
                    ]
                }
            }
        }
        
        // Toolbar example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Text Editor Toolbar"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 200
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        
                        Lsd.LsdButtonGroup {
                            size: "small"
                            allowMultiple: true
                            buttons: [
                                {text: "B", value: "bold"},
                                {text: "I", value: "italic"},
                                {text: "U", value: "underline"}
                            ]
                            onSelectionChanged: console.log("Text formatting:", selectedValues)
                        }
                        
                        Lsd.LsdButtonGroup {
                            size: "small"
                            buttons: [
                                {text: "←", value: "left"},
                                {text: "↔", value: "center"},
                                {text: "→", value: "right"}
                            ]
                            onSelectionChanged: console.log("Text alignment:", value)
                        }
                    }
                    
                    Rectangle {
                        width: parent.width
                        height: 80
                        color: "transparent"
                        border.color: Theme.LsdTheme.borderPrimary
                        border.width: 1
                        
                        Lsd.LsdText {
                            text: "Your formatted text will appear here..."
                            variant: "body2"
                            colorVariant: "tertiary"
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.margins: Theme.LsdTheme.spacing[2]
                        }
                    }
                }
            }
        }
        
        // View selector example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Data View Selector"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 160
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Row {
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Sales Dashboard"
                            variant: "body1"
                        }
                        
                        Item { 
                            width: parent.width - 300
                            height: 1
                        }
                        
                        Lsd.LsdButtonGroup {
                            buttons: [
                                {text: "Chart", value: "chart"},
                                {text: "Table", value: "table"},
                                {text: "Map", value: "map"}
                            ]
                            selectedIndex: 0
                            onSelectionChanged: console.log("View changed:", value)
                        }
                    }
                    
                    Rectangle {
                        width: parent.width
                        height: 80
                        color: "transparent"
                        border.color: Theme.LsdTheme.borderPrimary
                        border.width: 1
                        
                        Lsd.LsdText {
                            text: "📊 Chart view showing sales data trends..."
                            variant: "body2"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }
    }
}
