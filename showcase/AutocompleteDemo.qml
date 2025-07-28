import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Autocomplete"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Text input with filtered suggestion dropdown"
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
            
            Lsd.LsdAutocomplete {
                width: 280
                label: "Search Countries"
                placeholderText: "Start typing..."
                options: [
                    "United States", "Canada", "United Kingdom", "Australia",
                    "Germany", "France", "Italy", "Spain", "Japan", "China",
                    "India", "Brazil", "Mexico", "Argentina", "Netherlands"
                ]
                onOptionSelected: console.log("Selected:", option)
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
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Outlined"
                    variant: "outlined"
                    options: ["React", "Vue", "Angular", "Svelte"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Underlined"
                    variant: "underlined"
                    options: ["JavaScript", "TypeScript", "Python", "Go"]
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
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Lsd.LsdAutocomplete {
                    width: 150
                    label: "Small"
                    size: "small"
                    options: ["Apple", "Banana", "Cherry"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 170
                    label: "Medium"
                    size: "medium"
                    options: ["Apple", "Banana", "Cherry"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 190
                    label: "Large"
                    size: "large"
                    options: ["Apple", "Banana", "Cherry"]
                }
            }
        }
        
        // States & configuration
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "States & Options"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdAutocomplete {
                    width: 180
                    label: "Error State"
                    error: true
                    options: ["Option 1", "Option 2", "Option 3"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 180
                    label: "Disabled"
                    disabled: true
                    options: ["Option 1", "Option 2", "Option 3"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 180
                    label: "Max 3 Results"
                    maxResults: 3
                    options: [
                        "JavaScript", "Python", "Java", "C++", "C#", "Go",
                        "Rust", "TypeScript", "Swift", "Kotlin"
                    ]
                }
            }
        }
    }
}
