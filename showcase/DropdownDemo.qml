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
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic dropdowns
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
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Outlined (default)"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdDropdown {
                        width: 180
                        label: "Country"
                        variant: "outlined"
                        model: ["United States", "Canada", "United Kingdom", "Germany", "France"]
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Underlined"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdDropdown {
                        width: 180
                        label: "Language"
                        variant: "underlined"
                        model: ["English", "Spanish", "French", "German", "Italian"]
                    }
                }
            }
        }
        
        // Sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
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
                    label: "Large"
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
        
        // Form example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Profile Form"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 500
                height: 280
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Personal Information"
                        variant: "body1"
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdDropdown {
                            width: 120
                            label: "Title"
                            model: ["Mr.", "Ms.", "Dr.", "Prof."]
                        }
                        
                        Lsd.LsdDropdown {
                            width: 200
                            label: "Country"
                            model: ["United States", "Canada", "United Kingdom", "Australia", "Germany", "France"]
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdDropdown {
                            width: 150
                            label: "Industry"
                            model: ["Technology", "Healthcare", "Finance", "Education", "Manufacturing", "Other"]
                        }
                        
                        Lsd.LsdDropdown {
                            width: 150
                            label: "Experience"
                            model: ["0-1 years", "2-5 years", "6-10 years", "10+ years"]
                        }
                    }
                }
            }
        }
    }
}
