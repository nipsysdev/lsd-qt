import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Breadcrumb"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Navigation trail showing user's current location in hierarchy"
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
            
            Lsd.LsdBreadcrumb {
                width: parent.width
                items: [
                    {text: "Home", value: "home"},
                    {text: "Products", value: "products"},
                    {text: "Electronics", value: "electronics"},
                    {text: "Laptops", value: "laptops"}
                ]
                onItemClicked: console.log("Navigate to:", value, text)
            }
        }
        
        // Different path lengths
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Different Lengths"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Dashboard", value: "dashboard"},
                        {text: "Settings", value: "settings"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Docs", value: "docs"},
                        {text: "Components", value: "components"},
                        {text: "Navigation", value: "navigation"},
                        {text: "Breadcrumb", value: "breadcrumb"}
                    ]
                }
            }
        }
        
        // Long paths with ellipsis
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Ellipsis for Long Paths"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    maxItems: 4
                    items: [
                        {text: "Root", value: "root"},
                        {text: "Documents", value: "documents"},
                        {text: "Projects", value: "projects"},
                        {text: "Web Development", value: "webdev"},
                        {text: "React Apps", value: "react"},
                        {text: "Components", value: "components"},
                        {text: "Navigation", value: "nav"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: 350
                    maxItems: 3
                    items: [
                        {text: "Company", value: "company"},
                        {text: "Engineering", value: "engineering"},
                        {text: "Frontend", value: "frontend"},
                        {text: "Projects", value: "projects"},
                        {text: "Current", value: "current"}
                    ]
                }
            }
        }
    }
}
