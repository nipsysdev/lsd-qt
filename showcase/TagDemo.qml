import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Tag"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Compact labels for categorization and metadata"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic tags
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdTag {
                    text: "React"
                }
                
                Lsd.LsdTag {
                    text: "JavaScript"
                }
                
                Lsd.LsdTag {
                    text: "Frontend"
                }
                
                Lsd.LsdTag {
                    text: "Open Source"
                }
            }
        }
        
        // Tag variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Outlined:"
                        variant: "body3"
                        width: 80
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Design"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdTag {
                        text: "UI/UX"
                        variant: "outlined"
                    }
                    
                    Lsd.LsdTag {
                        text: "Figma"
                        variant: "outlined"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Filled:"
                        variant: "body3"
                        width: 80
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Python"
                        variant: "filled"
                    }
                    
                    Lsd.LsdTag {
                        text: "Django"
                        variant: "filled"
                    }
                    
                    Lsd.LsdTag {
                        text: "Backend"
                        variant: "filled"
                    }
                }
            }
        }
        
        // Tag sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Small:"
                        variant: "body3"
                        width: 80
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "CSS"
                        size: "small"
                    }
                    
                    Lsd.LsdTag {
                        text: "HTML"
                        size: "small"
                    }
                    
                    Lsd.LsdTag {
                        text: "Web"
                        size: "small"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Medium:"
                        variant: "body3"
                        width: 80
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Vue.js"
                        size: "medium"
                    }
                    
                    Lsd.LsdTag {
                        text: "Nuxt"
                        size: "medium"
                    }
                    
                    Lsd.LsdTag {
                        text: "TypeScript"
                        size: "medium"
                    }
                }
                
                Row {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Large:"
                        variant: "body3"
                        width: 80
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    
                    Lsd.LsdTag {
                        text: "Node.js"
                        size: "large"
                    }
                    
                    Lsd.LsdTag {
                        text: "Express"
                        size: "large"
                    }
                    
                    Lsd.LsdTag {
                        text: "API"
                        size: "large"
                    }
                }
            }
        }
        
        // Removable tags
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Removable Tags"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdTag {
                    text: "React"
                    removable: true
                    onRemoveClicked: console.log("React tag removed")
                }
                
                Lsd.LsdTag {
                    text: "Next.js"
                    removable: true
                    onRemoveClicked: console.log("Next.js tag removed")
                }
                
                Lsd.LsdTag {
                    text: "Tailwind"
                    removable: true
                    variant: "filled"
                    onRemoveClicked: console.log("Tailwind tag removed")
                }
            }
        }
        
        // Interactive tags
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Interactive Tags"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[1] // 8px
                
                Lsd.LsdTag {
                    text: "Clickable"
                    clickable: true
                    onClicked: console.log("Clickable tag clicked")
                }
                
                Lsd.LsdTag {
                    text: "Filter: Active"
                    clickable: true
                    variant: "filled"
                    onClicked: console.log("Filter clicked")
                }
                
                Lsd.LsdTag {
                    text: "Category"
                    clickable: true
                    removable: true
                    onClicked: console.log("Category clicked")
                    onRemoveClicked: console.log("Category removed")
                }
            }
        }
    }
}
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Blog Post Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 280
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Building Modern Web Applications with React"
                        variant: "h3"
                    }
                    
                    Lsd.LsdText {
                        text: "Published on November 28, 2023 by John Doe"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdText {
                        text: "Learn how to build scalable and performant web applications using React, modern tooling, and best practices. This comprehensive guide covers everything from setup to deployment."
                        variant: "body2"
                        colorVariant: "tertiary"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdText {
                            text: "Tags:"
                            variant: "body3"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        
                        Lsd.LsdTag {
                            text: "React"
                            size: "small"
                        }
                        
                        Lsd.LsdTag {
                            text: "JavaScript"
                            size: "small"
                        }
                        
                        Lsd.LsdTag {
                            text: "Web Development"
                            size: "small"
                        }
                        
                        Lsd.LsdTag {
                            text: "Tutorial"
                            size: "small"
                            variant: "filled"
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        
                        Lsd.LsdText {
                            text: "Categories:"
                            variant: "body3"
                            anchors.verticalCenter: parent.verticalCenter
                        }
                        
                        Lsd.LsdTag {
                            text: "Frontend"
                            size: "small"
                            variant: "outlined"
                        }
                        
                        Lsd.LsdTag {
                            text: "Beginner"
                            size: "small"
                            variant: "outlined"
                        }
                    }
                }
            }
        }
        
        // Tag management example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Project Tags Manager"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 200
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Project: E-commerce Platform"
                        variant: "body1"
                    }
                    
                    Column {
                        spacing: Theme.LsdTheme.spacing[1] // 8px
                        width: parent.width
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Lsd.LsdText {
                                text: "Tech Stack:"
                                variant: "body3"
                                width: 80
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            
                            Lsd.LsdTag {
                                text: "React"
                                removable: true
                                onRemoveClicked: console.log("React removed")
                            }
                            
                            Lsd.LsdTag {
                                text: "Node.js"
                                removable: true
                                onRemoveClicked: console.log("Node.js removed")
                            }
                            
                            Lsd.LsdTag {
                                text: "PostgreSQL"
                                removable: true
                                onRemoveClicked: console.log("PostgreSQL removed")
                            }
                            
                            Lsd.LsdTag {
                                text: "Docker"
                                removable: true
                                onRemoveClicked: console.log("Docker removed")
                            }
                        }
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Lsd.LsdText {
                                text: "Status:"
                                variant: "body3"
                                width: 80
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            
                            Lsd.LsdTag {
                                text: "In Progress"
                                variant: "filled"
                            }
                            
                            Lsd.LsdTag {
                                text: "High Priority"
                                variant: "filled"
                            }
                        }
                        
                        Row {
                            spacing: Theme.LsdTheme.spacing[1] // 8px
                            
                            Lsd.LsdText {
                                text: "Team:"
                                variant: "body3"
                                width: 80
                                anchors.verticalCenter: parent.verticalCenter
                            }
                            
                            Lsd.LsdTag {
                                text: "Frontend Team"
                                size: "small"
                                clickable: true
                                onClicked: console.log("Show frontend team")
                            }
                            
                            Lsd.LsdTag {
                                text: "Backend Team"
                                size: "small"
                                clickable: true
                                onClicked: console.log("Show backend team")
                            }
                            
                            Lsd.LsdTag {
                                text: "DevOps"
                                size: "small"
                                clickable: true
                                onClicked: console.log("Show DevOps team")
                            }
                        }
                    }
                }
            }
        }
    }
}
