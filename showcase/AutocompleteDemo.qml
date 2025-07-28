import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Autocomplete"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Text input with filtered suggestion dropdown"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic autocomplete
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdAutocomplete {
                    width: 250
                    label: "Search Countries"
                    options: [
                        "United States", "Canada", "United Kingdom", "Australia",
                        "Germany", "France", "Italy", "Spain", "Japan", "China",
                        "India", "Brazil", "Mexico", "Argentina", "Netherlands"
                    ]
                    onOptionSelected: console.log("Selected country:", option)
                }
                
                Lsd.LsdAutocomplete {
                    width: 250
                    label: "Programming Languages"
                    options: [
                        "JavaScript", "Python", "Java", "C++", "C#", "Go",
                        "Rust", "TypeScript", "Swift", "Kotlin", "PHP", "Ruby"
                    ]
                    onOptionSelected: console.log("Selected language:", option)
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
                    
                    Lsd.LsdAutocomplete {
                        width: 200
                        label: "City"
                        variant: "outlined"
                        options: [
                            "New York", "Los Angeles", "Chicago", "Houston", "Phoenix",
                            "Philadelphia", "San Antonio", "San Diego", "Dallas", "San Jose"
                        ]
                    }
                }
                
                Column {
                    spacing: Theme.LsdTheme.spacing[1] // 8px
                    
                    Lsd.LsdText {
                        text: "Underlined"
                        variant: "body3"
                        colorVariant: "tertiary"
                    }
                    
                    Lsd.LsdAutocomplete {
                        width: 200
                        label: "Technology"
                        variant: "underlined"
                        options: [
                            "React", "Vue", "Angular", "Svelte", "Next.js",
                            "Nuxt.js", "Express", "Django", "Flask", "Spring"
                        ]
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
                
                Lsd.LsdAutocomplete {
                    width: 150
                    label: "Small"
                    size: "small"
                    options: ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 170
                    label: "Medium"
                    size: "medium"
                    options: ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 190
                    label: "Large"
                    size: "large"
                    options: ["Apple", "Banana", "Cherry", "Date", "Elderberry"]
                }
            }
        }
        
        // Custom filtering
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Custom Options"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[4] // 32px
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Min 2 chars"
                    options: [
                        "Adobe", "Amazon", "Apple", "Facebook", "Google",
                        "Microsoft", "Netflix", "Spotify", "Tesla", "Twitter"
                    ]
                }
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Max 5 results"
                    maxResults: 5
                    options: [
                        "JavaScript", "Python", "Java", "C++", "C#", "Go",
                        "Rust", "TypeScript", "Swift", "Kotlin", "PHP", "Ruby",
                        "Scala", "Clojure", "Haskell", "Erlang", "Elixir"
                    ]
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
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Error State"
                    error: true
                    options: ["Option 1", "Option 2", "Option 3"]
                }
                
                Lsd.LsdAutocomplete {
                    width: 200
                    label: "Disabled"
                    disabled: true
                    options: ["Option 1", "Option 2", "Option 3"]
                }
            }
        }
        
        // Job search example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Job Search Form"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: 600
                height: 280
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "Find Your Next Role"
                        variant: "body1"
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdAutocomplete {
                            width: 200
                            label: "Job Title"
                            options: [
                                "Software Engineer", "Frontend Developer", "Backend Developer",
                                "Full Stack Developer", "DevOps Engineer", "Data Scientist",
                                "Product Manager", "UI/UX Designer", "QA Engineer"
                            ]
                        }
                        
                        Lsd.LsdAutocomplete {
                            width: 200
                            label: "Location"
                            options: [
                                "San Francisco, CA", "New York, NY", "Seattle, WA",
                                "Austin, TX", "Boston, MA", "Los Angeles, CA",
                                "Chicago, IL", "Denver, CO", "Remote"
                            ]
                        }
                    }
                    
                    Row {
                        spacing: Theme.LsdTheme.spacing[2] // 16px
                        width: parent.width
                        
                        Lsd.LsdAutocomplete {
                            width: 200
                            label: "Company Size"
                            options: [
                                "Startup (1-50)", "Small (51-200)", "Medium (201-1000)",
                                "Large (1001-5000)", "Enterprise (5000+)"
                            ]
                        }
                        
                        Lsd.LsdAutocomplete {
                            width: 200
                            label: "Skills"
                            options: [
                                "React", "Vue.js", "Angular", "Node.js", "Python",
                                "Java", "AWS", "Docker", "Kubernetes", "PostgreSQL"
                            ]
                        }
                    }
                    
                    Lsd.LsdButton {
                        text: "Search Jobs"
                        variant: "filled"
                        onClicked: console.log("Searching jobs...")
                    }
                }
            }
        }
    }
}
