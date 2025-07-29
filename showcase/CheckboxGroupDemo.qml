import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Checkbox Group"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Groups of related checkboxes with optional labels"
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
            
            Lsd.LsdCheckboxGroup {
                label: "Select your interests"
                
                Lsd.LsdCheckbox {
                    text: "Technology"
                }
                
                Lsd.LsdCheckbox {
                    text: "Design"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Business"
                }
                
                Lsd.LsdCheckbox {
                    text: "Marketing"
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
            
            Lsd.LsdCheckboxGroup {
                Lsd.LsdCheckbox {
                    text: "Option A"
                }
                
                Lsd.LsdCheckbox {
                    text: "Option B"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Option C"
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
                
                Lsd.LsdCheckboxGroup {
                    label: "Small"
                    size: "small"
                    
                    Lsd.LsdCheckbox {
                        text: "Small option 1"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Small option 2"
                        checked: true
                    }
                }
                
                Lsd.LsdCheckboxGroup {
                    label: "Medium"
                    size: "medium"
                    
                    Lsd.LsdCheckbox {
                        text: "Medium option 1"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Medium option 2"
                        checked: true
                    }
                }
                
                Lsd.LsdCheckboxGroup {
                    label: "Large (default)"
                    size: "large"
                    
                    Lsd.LsdCheckbox {
                        text: "Large option 1"
                    }
                    
                    Lsd.LsdCheckbox {
                        text: "Large option 2"
                        checked: true
                    }
                }
            }
        }
        
        // With mixed states
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Mixed States"
                variant: "h3"
            }
            
            Lsd.LsdCheckboxGroup {
                label: "Notification preferences"
                
                Lsd.LsdCheckbox {
                    text: "Email notifications"
                    checked: true
                }
                
                Lsd.LsdCheckbox {
                    text: "Push notifications"
                    indeterminate: true
                }
                
                Lsd.LsdCheckbox {
                    text: "SMS notifications"
                }
                
                Lsd.LsdCheckbox {
                    text: "Weekly digest (disabled)"
                    disabled: true
                }
            }
        }
    }
}
