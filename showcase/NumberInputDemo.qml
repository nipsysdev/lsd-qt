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
        text: "Numeric input controls with increment/decrement buttons"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic number inputs
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3" 
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Quantity"
                    value: 1
                    min: 0
                    max: 100
                    onValueChanged: console.log("Quantity:", value)
                }
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Price"
                    value: 29.99
                    min: 0
                    max: 1000
                    step: 0.01
                    decimals: 2
                    onValueChanged: console.log("Price:", value)
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
                    
                    Lsd.LsdNumberInput {
                        width: 150
                        label: "Amount"
                        variant: "outlined"
                        value: 50
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Underlined"
                        variant: "body3"
                        colorVariant: "tertiary"  
                    }
                    
                    Lsd.LsdNumberInput {
                        width: 150
                        label: "Score"
                        variant: "underlined"
                        value: 85
                        min: 0
                        max: 100
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
                
                Lsd.LsdNumberInput {
                    width: 120
                    label: "Small"
                    size: "small"
                    value: 5
                }
                
                Lsd.LsdNumberInput {
                    width: 140
                    label: "Medium"
                    size: "medium"
                    value: 10
                }
                
                Lsd.LsdNumberInput {
                    width: 160
                    label: "Large"
                    size: "large"
                    value: 15
                }
            }
        }
        
        // Step and precision
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Step & Precision"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Integer (step 1)"
                    value: 42
                    step: 1
                    decimals: 0
                }
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Decimal (step 0.1)"
                    value: 3.14
                    step: 0.1
                    decimals: 2
                }
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Step 5"
                    value: 25
                    step: 5
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
                    width: 150
                    label: "Error State"
                    value: 150
                    min: 0
                    max: 100
                    error: true
                    error: true
                }
                
                Lsd.LsdNumberInput {
                    width: 150
                    label: "Disabled"
                    value: 42
                    disabled: true
                }
            }
        }
        
        // Shopping cart example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Shopping Cart"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 500
                height: 300
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Order Details"
                        variant: "body1"
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[3] // 24px
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "T-Shirt - $25.00"
                            variant: "body2"
                            width: 150
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        
                        Lsd.LsdNumberInput {
                            width: 100
                            label: "Qty"
                            value: 2
                            min: 1
                            max: 10
                            size: "small"
                        }
                        
                        Lsd.LsdText {
                            text: "$50.00"
                            variant: "body2"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[3] // 24px
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Jeans - $75.00"
                            variant: "body2"
                            width: 150
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        
                        Lsd.LsdNumberInput {
                            width: 100
                            label: "Qty"
                            value: 1
                            min: 1
                            max: 10
                            size: "small"
                        }
                        
                        Lsd.LsdText {
                            text: "$75.00"
                            variant: "body2"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                    
                    Rectangle {
                        width: parent.width
                        height: 1
                        color: Theme.LsdTheme.borderPrimary
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[3] // 24px
                        
                        Lsd.LsdText {
                            text: "Tip (%)"
                            variant: "body2"
                            width: 150
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        
                        Lsd.LsdNumberInput {
                            width: 100
                            value: 15
                            min: 0
                            max: 30
                            step: 5
                            size: "small"
                        }
                        
                        Lsd.LsdText {
                            text: "Total: $143.75"
                            variant: "body1"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
            }
        }
    }
}
