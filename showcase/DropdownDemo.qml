import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Dropdown"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Selection controls with expandable option lists"
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdDropdown {
                    width: 200
                    label: "Choose Option"
                    model: [
                        {text: "Option 1", value: "opt1"},
                        {text: "Option 2", value: "opt2"},
                        {text: "Option 3", value: "opt3"}
                    ]
                    onSelectionChanged: console.log("Selected:", value, text)
                }
                
                Lsd.LsdDropdown {
                    width: 200
                    label: "Simple List"
                    model: ["Apple", "Banana", "Cherry", "Date"]
                    onSelectionChanged: console.log("Selected fruit:", text)
                }
            }
        }
        
        // Variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdDropdown {
                    width: 180
                    label: "Outlined (default)"
                    variant: "outlined"
                    model: ["United States", "Canada", "United Kingdom", "Germany"]
                }
                
                Lsd.LsdDropdown {
                    width: 180
                    label: "Underlined"
                    variant: "underlined"
                    model: ["English", "Spanish", "French", "German"]
                }
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
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdDropdown {
                    width: 150
                    label: "Small"
                    size: "small"
                    model: ["Option A", "Option B", "Option C"]
                }
                
                Lsd.LsdDropdown {
                    width: 150
                    label: "Medium"
                    size: "medium"
                    model: ["Option A", "Option B", "Option C"]
                }
                
                Lsd.LsdDropdown {
                    width: 150
                    label: "Large (default)"
                    size: "large"
                    model: ["Option A", "Option B", "Option C"]
                }
            }
        }
        
        // States
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "States"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdDropdown {
                    width: 150
                    label: "Error State"
                    error: true
                    model: ["Option 1", "Option 2", "Option 3"]
                }
                
                Lsd.LsdDropdown {
                    width: 150
                    label: "Disabled"
                    disabled: true
                    model: ["Option 1", "Option 2", "Option 3"]
                }
            }
        }
    }
}
