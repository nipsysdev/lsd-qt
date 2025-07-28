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
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic breadcrumbs
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Home", value: "home"},
                        {text: "Products", value: "products"},
                        {text: "Electronics", value: "electronics"},
                        {text: "Laptops", value: "laptops"}
                    ]
                    onItemClicked: console.log("Breadcrumb clicked:", value, text)
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Dashboard", value: "dashboard"},
                        {text: "Users", value: "users"},
                        {text: "Profile", value: "profile"}
                    ]
                    onItemClicked: console.log("Navigate to:", value)
                }
            }
        }
        
        // Different separators
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Separators"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Documentation", value: "docs"},
                        {text: "Components", value: "components"},
                        {text: "Navigation", value: "navigation"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Admin", value: "admin"},
                        {text: "Settings", value: "settings"},
                        {text: "Security", value: "security"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Projects", value: "projects"},
                        {text: "Web App", value: "webapp"},
                        {text: "Frontend", value: "frontend"}
                    ]
                }
            }
        }
        
        // Breadcrumb sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Home", value: "home"},
                        {text: "Blog", value: "blog"},
                        {text: "Article", value: "article"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Store", value: "store"},
                        {text: "Category", value: "category"},
                        {text: "Product", value: "product"}
                    ]
                }
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Platform", value: "platform"},
                        {text: "Services", value: "services"},
                        {text: "API", value: "api"}
                    ]
                }
            }
        }
        
        // Breadcrumb with ellipsis (long paths)
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Long Paths with Ellipsis"
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
                        {text: "E-commerce", value: "ecommerce"},
                        {text: "Components", value: "components"},
                        {text: "Navigation", value: "nav"}
                    ]
                    onItemClicked: console.log("Navigate to:", value)
                }
                
                Lsd.LsdBreadcrumb {
                    width: 300
                    maxItems: 3
                    items: [
                        {text: "Company", value: "company"},
                        {text: "Departments", value: "departments"},
                        {text: "Engineering", value: "engineering"},
                        {text: "Frontend Team", value: "frontend"},
                        {text: "Projects", value: "projects"},
                        {text: "Current Sprint", value: "sprint"}
                    ]
                }
            }
        }
        
        // Interactive states
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Interactive States"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdBreadcrumb {
                    width: parent.width
                    items: [
                        {text: "Dashboard", value: "dashboard", clickable: true},
                        {text: "Reports", value: "reports", clickable: true},
                        {text: "Monthly", value: "monthly", clickable: false}
                    ]
                    onItemClicked: console.log("Clicked:", value)
                }
                
                Lsd.LsdText {
                    text: "The last item is typically not clickable (current page)"
                    variant: "body3"
                    colorVariant: "tertiary"
                }
            }
        }
    }
}
