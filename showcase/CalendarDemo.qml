import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Calendar"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Date selection interface with month/year navigation"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic calendar
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdCalendar {
                    width: 280
                    height: 280
                    onDateSelected: console.log("Date selected:", selectedDate)
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    anchors.verticalCenter: parent.verticalCenter
                    
                    Lsd.LsdText {
                        text: "Features:"
                        variant: "body2"
                    }
                    
                    Lsd.LsdText {
                        text: "• Click any date to select"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Navigate months with arrows"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Today is highlighted"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "• Keyboard navigation support"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                }
            }
        }
        
        // Calendar sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Small"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 200
                        height: 200
                        size: "small"
                        onDateSelected: console.log("Small calendar:", selectedDate)
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium (default)"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 280
                        height: 280
                        size: "medium"
                        onDateSelected: console.log("Medium calendar:", selectedDate)
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Large"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 360
                        height: 360
                        size: "large"
                        onDateSelected: console.log("Large calendar:", selectedDate)
                    }
                }
            }
        }
        
        // Calendar with restrictions
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Date Restrictions"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Future dates only"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 280
                        height: 280
                        onDateSelected: console.log("Future date:", selectedDate)
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Next 30 days only"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 280
                        height: 280
                        onDateSelected: console.log("Restricted date:", selectedDate)
                    }
                }
            }
        }
        
        // Calendar variants
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
                        text: "Bordered"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 280
                        height: 280
                        onDateSelected: console.log("Bordered calendar:", selectedDate)
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Minimal"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdCalendar {
                        width: 280
                        height: 280
                        onDateSelected: console.log("Minimal calendar:", selectedDate)
                    }
                }
            }
        }
        

    }
}
