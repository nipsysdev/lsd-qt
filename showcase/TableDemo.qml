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
        text: "Data tables with sorting, striping, and cell interactions"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic table
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Lsd.LsdTable {
                width: parent.width
                headers: ["Name", "Role", "Status", "Last Active"]
                rows: [
                    ["Alice Johnson", "Admin", "Active", "2 hours ago"],
                    ["Bob Smith", "Developer", "Active", "5 minutes ago"],
                    ["Carol White", "Designer", "Away", "1 day ago"],
                    ["David Brown", "Developer", "Offline", "3 days ago"],
                    ["Eve Davis", "Manager", "Active", "30 minutes ago"]
                ]
                onCellClicked: console.log("Cell clicked:", row, column, data)
            }
        }
        
        // Table sizes
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
                    
                    Lsd.LsdTable {
                        width: 350
                        headers: ["Item", "Price"]
                        rows: [
                            ["Coffee", "$3.50"],
                            ["Tea", "$2.50"],
                            ["Pastry", "$4.00"]
                        ]
                        size: "small"
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium (default)"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdTable {
                        width: 350
                        headers: ["Product", "Stock"]
                        rows: [
                            ["Laptop", "15"],
                            ["Mouse", "42"],
                            ["Keyboard", "8"]
                        ]
                        size: "medium"
                    }
                }
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdText {
                    text: "Large"
                    variant: "body3"
                    colorVariant: "tertiary"
                }
                
                Lsd.LsdTable {
                    width: parent.width
                    headers: ["Project", "Status", "Progress", "Due Date", "Assignee"]
                    rows: [
                        ["Website Redesign", "In Progress", "75%", "Dec 15", "Alice"],
                        ["Mobile App", "Planning", "20%", "Jan 30", "Bob"],
                        ["API Integration", "Complete", "100%", "Nov 28", "Carol"]
                    ]
                    size: "large"
                }
            }
        }
        
        // Striped and interactive
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Striped & Interactive"
                variant: "h3"
            }
            
            Lsd.LsdTable {
                width: parent.width
                headers: ["ID", "Customer", "Order", "Amount", "Date"]
                rows: [
                    ["#001", "John Doe", "Laptop Pro", "$1,299", "Nov 25"],
                    ["#002", "Jane Smith", "Wireless Mouse", "$79", "Nov 26"],
                    ["#003", "Mike Johnson", "Keyboard", "$159", "Nov 26"],
                    ["#004", "Sarah Wilson", "Monitor", "$349", "Nov 27"],
                    ["#005", "Tom Brown", "Webcam", "$99", "Nov 27"],
                    ["#006", "Lisa Davis", "Headphones", "$199", "Nov 28"]
                ]
                striped: true
                onCellClicked: console.log("Order clicked:", row, column, data)
            }
        }
        
        // Sortable table
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sortable Columns"
                variant: "h3"
            }
            
            Lsd.LsdTable {
                width: parent.width
                headers: ["Name", "Age", "Score", "Grade"]
                rows: [
                    ["Alice", "22", "95", "A"],
                    ["Bob", "19", "87", "B+"],
                    ["Carol", "21", "92", "A-"],
                    ["David", "20", "78", "C+"],
                    ["Eve", "23", "88", "B+"]
                ]
                sortable: true
                onHeaderClicked: console.log("Sort by column:", column, header)
            }
        }
        
        // Custom styling
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Custom Styling"
                variant: "h3"
            }
            
            Lsd.LsdTable {
                width: parent.width
                headers: ["Metric", "Current", "Target", "Status"]
                rows: [
                    ["Revenue", "$45,231", "$50,000", "On Track"],
                    ["Users", "1,247", "1,500", "Behind"],
                    ["Conversion", "3.2%", "4.0%", "Behind"],
                    ["Retention", "67%", "65%", "Exceeded"]
                ]
                striped: true
                headerBold: true
                onCellClicked: {
                    console.log("Metric details:", row, column, data)
                    if (column === 3) {
                        console.log("Status clicked - showing details...")
                    }
                }
            }
        }
        
        // Data dashboard example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sales Dashboard"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 360
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Row {
                        width: parent.width
                        
                        Lsd.LsdText {
                            text: "Q4 2023 Sales Report"
                            variant: "body1"
                        }
                        
                        Item { 
                            width: parent.width - 200
                            height: 1
                        }
                        
                        Lsd.LsdButton {
                            text: "Export"
                            variant: "outlined"
                            size: "small"
                            onClicked: console.log("Exporting table data...")
                        }
                    }
                    
                    Lsd.LsdTable {
                        width: parent.width
                        headers: ["Region", "Sales", "Target", "Growth", "Top Product"]
                        rows: [
                            ["North America", "$2.4M", "$2.2M", "+12%", "Pro Suite"],
                            ["Europe", "$1.8M", "$1.9M", "+8%", "Basic Plan"],
                            ["Asia Pacific", "$1.1M", "$1.0M", "+15%", "Enterprise"],
                            ["Latin America", "$650K", "$600K", "+9%", "Starter"],
                            ["Middle East", "$420K", "$450K", "+3%", "Pro Suite"]
                        ]
                        striped: true
                        sortable: true
                        size: "medium"
                        onCellClicked: console.log("Region data:", row, column, data)
                        onHeaderClicked: console.log("Sorting by:", column, header)
                    }
                }
            }
        }
    }
}
