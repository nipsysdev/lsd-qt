import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Number Input"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Input field for numeric values with increment/decrement controls"
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
            
            Lsd.LsdNumberInput {
                label: "Quantity"
                value: 1
                min: 0
                max: 100
                onNumberChanged: function(value) {
                    console.log("Value changed:", value)
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
                
                Lsd.LsdNumberInput {
                    label: "Outlined (default)"
                    variant: "outlined"
                    value: 5
                }
                
                Lsd.LsdNumberInput {
                    label: "Underlined"
                    variant: "underlined"
                    value: 10
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
                
                Lsd.LsdNumberInput {
                    label: "Small"
                    size: "small"
                    value: 1
                }
                
                Lsd.LsdNumberInput {
                    label: "Medium"
                    size: "medium"
                    value: 2
                }
                
                Lsd.LsdNumberInput {
                    label: "Large (default)"
                    size: "large"
                    value: 3
                }
            }
        }
        
        // With different configs
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Different Configurations"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdNumberInput {
                    label: "With decimals"
                    value: 2.5
                    step: 0.1
                    decimals: 1
                    min: 0
                    max: 10
                }
                
                Lsd.LsdNumberInput {
                    label: "Large step"
                    value: 50
                    step: 10
                    min: 0
                    max: 100
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
                
                Lsd.LsdNumberInput {
                    label: "Error state"
                    error: true
                    value: -5
                    supportingText: "Value must be positive"
                }
                
                Lsd.LsdNumberInput {
                    label: "Disabled"
                    disabled: true
                    value: 42
                }
            }
        }
    }
}
