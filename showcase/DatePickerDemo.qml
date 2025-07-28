import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[4] // 32px
    
    Lsd.LsdText {
        text: "Date Components"
        variant: "h2"
    }
    
    // Calendar demo
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Calendar"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Small Calendar"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdCalendar {
                    size: "small"
                    onDateSelected: function(date) {
                        console.log("Small calendar selected:", date)
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Medium Calendar"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdCalendar {
                    size: "medium"
                    onDateSelected: function(date) {
                        console.log("Medium calendar selected:", date)
                    }
                }
            }
        }
    }
    
    // DatePicker demo
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Date Picker"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Outlined Date Picker"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdDatePicker {
                    label: "Select Date"
                    variant: "outlined"
                    size: "medium"
                    onDateChanged: function(date) {
                        console.log("Date picker selected:", date)
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Underlined Date Picker"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdDatePicker {
                    label: "Birth Date"
                    variant: "underlined"
                    size: "medium"
                    onDateChanged: function(date) {
                        console.log("Birth date selected:", date)
                    }
                }
            }
        }
    }
    
    // DateRangePicker demo
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[2] // 16px
        
        Lsd.LsdText {
            text: "Date Range Picker"
            variant: "h3"
        }
        
        Row {
            spacing: Theme.LsdTheme.spacing[3] // 24px
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Travel Dates"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdDateRangePicker {
                    label: "Travel Period"
                    variant: "outlined"
                    size: "medium"
                    placeholderText: "Select departure and return..."
                    onDateRangeChanged: function(start, end) {
                        console.log("Date range selected:", start, "to", end)
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Project Timeline"
                    variant: "body2"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdDateRangePicker {
                    label: "Project Duration"
                    variant: "underlined"
                    size: "medium"
                    placeholderText: "Start and end dates"
                    onDateRangeChanged: function(start, end) {
                        console.log("Project timeline:", start, "to", end)
                    }
                }
            }
        }
    }
}
