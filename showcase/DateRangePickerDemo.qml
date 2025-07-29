import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Date Range Picker"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Input field for selecting date ranges with calendar popup"
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
            
            Lsd.LsdDateRangePicker {
                label: "Select Date Range"
                placeholderText: "Choose start and end dates..."
                onDateRangeChanged: function(start, end) {
                    console.log("Date range selected:", start, "to", end)
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
                
                Lsd.LsdDateRangePicker {
                    label: "Outlined (default)"
                    variant: "outlined"
                    placeholderText: "Select date range..."
                }
                
                Lsd.LsdDateRangePicker {
                    label: "Underlined"
                    variant: "underlined"
                    placeholderText: "Select date range..."
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
                
                Lsd.LsdDateRangePicker {
                    label: "Small"
                    size: "small"
                    placeholderText: "Select range..."
                }
                
                Lsd.LsdDateRangePicker {
                    label: "Medium (default)"
                    size: "medium"
                    placeholderText: "Select range..."
                }
                
                Lsd.LsdDateRangePicker {
                    label: "Large"
                    size: "large"
                    placeholderText: "Select range..."
                }
            }
        }
        
        // With disabled state
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Disabled State"
                variant: "h3"
            }
            
            Lsd.LsdDateRangePicker {
                label: "Disabled Date Range Picker"
                placeholderText: "Cannot select range"
                disabled: true
            }
        }
    }
}
