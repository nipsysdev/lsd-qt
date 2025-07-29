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
    
    property string selectedDemo: "autocomplete"
    
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
        
        // Sidebar
        Rectangle {
            id: sidebar
            anchors.top: topBar.bottom
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            width: 240
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
            
            ScrollView {
                anchors.fill: parent
                anchors.margins: Theme.LsdTheme.spacing[2] // 16px
                anchors.topMargin: Theme.LsdTheme.spacing[2] + 1 // Account for removed border
                clip: true
                
                Column {
                    width: sidebar.width - (Theme.LsdTheme.spacing[2] * 2) // Account for margins
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                
                    Lsd.LsdText {
                        text: "Components"
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                    }
                    
                    SidebarItem {
                        text: "Autocomplete"
                        isSelected: selectedDemo === "autocomplete"
                        onClicked: selectedDemo = "autocomplete"
                    }
                    
                    SidebarItem {
                        text: "Badge"
                        isSelected: selectedDemo === "badge"
                        onClicked: selectedDemo = "badge"
                    }
                    
                    SidebarItem {
                        text: "Breadcrumb"
                        isSelected: selectedDemo === "breadcrumb"
                        onClicked: selectedDemo = "breadcrumb"
                    }
                    
                    SidebarItem {
                        text: "Button"
                        isSelected: selectedDemo === "button"
                        onClicked: selectedDemo = "button"
                    }
                    
                    SidebarItem {
                        text: "Button Group"
                        isSelected: selectedDemo === "buttongroup"
                        onClicked: selectedDemo = "buttongroup"
                    }
                    
                    SidebarItem {
                        text: "Calendar"
                        isSelected: selectedDemo === "calendar"
                        onClicked: selectedDemo = "calendar"
                    }
                    
                    SidebarItem {
                        text: "Card"
                        isSelected: selectedDemo === "card"
                        onClicked: selectedDemo = "card"
                    }
                    
                    SidebarItem {
                        text: "Checkbox"
                        isSelected: selectedDemo === "checkbox"
                        onClicked: selectedDemo = "checkbox"
                    }
                    
                    SidebarItem {
                        text: "Checkbox Group"
                        isSelected: selectedDemo === "checkboxgroup"
                        onClicked: selectedDemo = "checkboxgroup"
                    }
                    
                    SidebarItem {
                        text: "Collapse"
                        isSelected: selectedDemo === "collapse"
                        onClicked: selectedDemo = "collapse"
                    }
                    
                    SidebarItem {
                        text: "Date Picker"
                        isSelected: selectedDemo === "datepicker"
                        onClicked: selectedDemo = "datepicker"
                    }
                    
                    SidebarItem {
                        text: "Date Range Picker"
                        isSelected: selectedDemo === "daterangepicker"
                        onClicked: selectedDemo = "daterangepicker"
                    }
                    
                    SidebarItem {
                        text: "Dropdown"
                        isSelected: selectedDemo === "dropdown"
                        onClicked: selectedDemo = "dropdown"
                    }
                    
                    SidebarItem {
                        text: "Icon Button"
                        isSelected: selectedDemo === "iconbutton"
                        onClicked: selectedDemo = "iconbutton"
                    }
                    
                    SidebarItem {
                        text: "Icon Button Group"
                        isSelected: selectedDemo === "iconbuttongroup"
                        onClicked: selectedDemo = "iconbuttongroup"
                    }
                    
                    SidebarItem {
                        text: "Modal"
                        isSelected: selectedDemo === "modal"
                        onClicked: selectedDemo = "modal"
                    }
                    
                    SidebarItem {
                        text: "Number Input"
                        isSelected: selectedDemo === "numberinput"
                        onClicked: selectedDemo = "numberinput"
                    }
                    
                    SidebarItem {
                        text: "Quote"
                        isSelected: selectedDemo === "quote"
                        onClicked: selectedDemo = "quote"
                    }
                    
                    SidebarItem {
                        text: "Radio Button"
                        isSelected: selectedDemo === "radiobutton"
                        onClicked: selectedDemo = "radiobutton"
                    }
                    
                    SidebarItem {
                        text: "Radio Button Group"
                        isSelected: selectedDemo === "radiobuttongroup"
                        onClicked: selectedDemo = "radiobuttongroup"
                    }
                    
                    SidebarItem {
                        text: "Table"
                        isSelected: selectedDemo === "table"
                        onClicked: selectedDemo = "table"
                    }
                    
                    SidebarItem {
                        text: "Tabs"
                        isSelected: selectedDemo === "tabs"
                        onClicked: selectedDemo = "tabs"
                    }
                    
                    SidebarItem {
                        text: "Tag"
                        isSelected: selectedDemo === "tag"
                        onClicked: selectedDemo = "tag"
                    }
                    
                    SidebarItem {
                        text: "Text"
                        isSelected: selectedDemo === "text"
                        onClicked: selectedDemo = "text"
                    }
                    
                    SidebarItem {
                        text: "Text Field"
                        isSelected: selectedDemo === "textfield"
                        onClicked: selectedDemo = "textfield"
                    }
                    
                    SidebarItem {
                        text: "Toast"
                        isSelected: selectedDemo === "toast"
                        onClicked: selectedDemo = "toast"
                    }
                    
                    SidebarItem {
                        text: "Tooltip"
                        isSelected: selectedDemo === "tooltip"
                        onClicked: selectedDemo = "tooltip"
                    }
                    
                    Rectangle {
                        width: parent.width
                        height: 1
                        color: Theme.LsdTheme.borderPrimary
                    }
                    
                    Lsd.LsdText {
                        text: "Overview"
                        variant: "body2"
                        colorVariant: "tertiary"
                        width: parent.width
                    }
                    
                    SidebarItem {
                        text: "Colors"
                        isSelected: selectedDemo === "colors"
                        onClicked: selectedDemo = "colors"
                    }
                    
                    SidebarItem {
                        text: "Spacing"
                        isSelected: selectedDemo === "spacing"
                        onClicked: selectedDemo = "spacing"
                    }
                }
            }
        }
        
        // Content area - positioned next to sidebar
        Rectangle {
            id: contentArea
            anchors.top: topBar.bottom
            anchors.left: sidebar.right
            anchors.right: parent.right
            anchors.bottom: parent.bottom
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
                anchors.topMargin: Theme.LsdTheme.spacing[4] + 1 // Account for removed border
                anchors.leftMargin: Theme.LsdTheme.spacing[4] + 1 // Account for removed border
                clip: true
                
                Loader {
                    id: contentLoader
                    width: contentArea.width - (Theme.LsdTheme.spacing[4] * 2) - 2 // Account for margins and borders
                    source: {
                        switch(selectedDemo) {
                            // Basic Components
                            case "button": return "ButtonDemo.qml"
                            case "text": return "TypographyDemo.qml"
                            case "badge": return "BadgeDemo.qml"
                            case "tag": return "TagDemo.qml"
                            case "quote": return "QuoteDemo.qml"
                            
                            // Input Components
                            case "textfield": return "TextFieldDemo.qml"
                            case "numberinput": return "NumberInputDemo.qml"
                            case "checkbox": return "CheckboxDemo.qml"
                            case "radiobutton": return "RadioButtonDemo.qml"
                            case "dropdown": return "DropdownDemo.qml"
                            case "autocomplete": return "AutocompleteDemo.qml"
                            
                            // Date Components
                            case "calendar": return "CalendarDemo.qml"
                            case "datepicker": return "DatePickerDemo.qml"
                            case "daterangepicker": return "DatePickerDemo.qml" // Same demo covers both
                            
                            // Layout Components
                            case "card": return "CardDemo.qml"
                            case "tabs": return "TabsDemo.qml"
                            case "modal": return "ModalDemo.qml"
                            case "breadcrumb": return "BreadcrumbDemo.qml"
                            case "collapse": return "CollapseDemo.qml"
                            case "table": return "TableDemo.qml"
                            
                            // Feedback Components
                            case "toast": return "ToastDemo.qml"
                            case "tooltip": return "TooltipDemo.qml"
                            
                            // Advanced Components
                            case "iconbutton": return "IconButtonDemo.qml"
                            case "buttongroup": return "ButtonGroupDemo.qml"
                            case "iconbuttongroup": return "IconButtonDemo.qml"
                            case "checkboxgroup": return "CheckboxGroupDemo.qml"
                            case "radiobuttongroup": return "RadioButtonGroupDemo.qml"
                            
                            // Design Tokens
                            case "colors": return "ColorsDemo.qml"
                            case "spacing": return "SpacingDemo.qml"
                            
                            default: return "ButtonDemo.qml"
                        }
                    }
                }
            }
        }
    }
}
