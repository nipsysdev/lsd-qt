import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Radio Button Group"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Single-choice selection groups with labels"
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
            
            Lsd.LsdRadioButtonGroup {
                label: "Choose your preferred theme"
                name: "theme"
                
                Lsd.LsdRadioButton {
                    text: "Light theme"
                    value: "light"
                    checked: true
                }
                
                Lsd.LsdRadioButton {
                    text: "Dark theme"
                    value: "dark"
                }
                
                Lsd.LsdRadioButton {
                    text: "Auto (system)"
                    value: "auto"
                }
            }
        }
        
        // Without label
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Without Label"
                variant: "h3"
            }
            
            Lsd.LsdRadioButtonGroup {
                name: "priority"
                
                Lsd.LsdRadioButton {
                    text: "High priority"
                    value: "high"
                }
                
                Lsd.LsdRadioButton {
                    text: "Medium priority"
                    value: "medium"
                    checked: true
                }
                
                Lsd.LsdRadioButton {
                    text: "Low priority"
                    value: "low"
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
                
                Lsd.LsdRadioButtonGroup {
                    label: "Small"
                    name: "size-small"
                    size: "small"
                    
                    Lsd.LsdRadioButton {
                        text: "Option 1"
                        value: "1"
                        checked: true
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Option 2"
                        value: "2"
                    }
                }
                
                Lsd.LsdRadioButtonGroup {
                    label: "Medium"
                    name: "size-medium"
                    size: "medium"
                    
                    Lsd.LsdRadioButton {
                        text: "Option 1"
                        value: "1"
                        checked: true
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Option 2"
                        value: "2"
                    }
                }
                
                Lsd.LsdRadioButtonGroup {
                    label: "Large (default)"
                    name: "size-large"
                    size: "large"
                    
                    Lsd.LsdRadioButton {
                        text: "Option 1"
                        value: "1"
                        checked: true
                    }
                    
                    Lsd.LsdRadioButton {
                        text: "Option 2"
                        value: "2"
                    }
                }
            }
        }
        
        // With disabled options
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "With Disabled Options"
                variant: "h3"
            }
            
            Lsd.LsdRadioButtonGroup {
                label: "Payment method"
                name: "payment"
                
                Lsd.LsdRadioButton {
                    text: "Credit card"
                    value: "credit"
                    checked: true
                }
                
                Lsd.LsdRadioButton {
                    text: "PayPal"
                    value: "paypal"
                }
                
                Lsd.LsdRadioButton {
                    text: "Bank transfer (coming soon)"
                    value: "bank"
                    disabled: true
                }
                
                Lsd.LsdRadioButton {
                    text: "Cryptocurrency (unavailable)"
                    value: "crypto"
                    disabled: true
                }
            }
        }
    }
}
