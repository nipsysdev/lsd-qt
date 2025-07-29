import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Table"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Display structured data in rows and columns"
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
            
            Lsd.LsdTable {
                width: parent.width
                headers: ["Name", "Email", "Role"]
                rows: [
                    ["John Doe", "john@example.com", "Admin"],
                    ["Jane Smith", "jane@example.com", "User"],
                    ["Bob Johnson", "bob@example.com", "Editor"]
                ]
                onCellClicked: function(row, column, data) {
                    console.log("Cell clicked:", row, column, data)
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
            
            Column {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                width: parent.width
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Small"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdTable {
                        width: parent.width
                        size: "small"
                        headers: ["Product", "Price"]
                        rows: [
                            ["Coffee", "$3.50"],
                            ["Tea", "$2.50"]
                        ]
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Medium"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdTable {
                        width: parent.width
                        size: "medium"
                        headers: ["Task", "Status"]
                        rows: [
                            ["Design mockups", "Complete"],
                            ["Code review", "In Progress"]
                        ]
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Large (default)"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdTable {
                        width: parent.width
                        size: "large"
                        headers: ["Project", "Deadline"]
                        rows: [
                            ["Website redesign", "2025-08-15"],
                            ["Mobile app", "2025-09-30"]
                        ]
                    }
                }
            }
        }
        
        // With striped rows
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Striped Rows"
                variant: "h3"
            }
            
            Lsd.LsdTable {
                width: parent.width
                striped: true
                headers: ["ID", "Name", "Department", "Salary"]
                rows: [
                    ["001", "Alice Brown", "Engineering", "$85,000"],
                    ["002", "Charlie Davis", "Design", "$75,000"],
                    ["003", "Diana Wilson", "Marketing", "$65,000"],
                    ["004", "Frank Miller", "Sales", "$70,000"],
                    ["005", "Grace Lee", "HR", "$60,000"]
                ]
            }
        }
    }
}
