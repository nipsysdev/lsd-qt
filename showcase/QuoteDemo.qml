import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Quote"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Highlighted text blocks for emphasis and citations"
        variant: "body2"
        colorVariant: "tertiary"
    }
    
    Column {
        width: parent.width
        spacing: Theme.LsdTheme.spacing[3] // 24px
        
        // Basic quotes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Basic Usage"
                variant: "h3"
            }
            
            Lsd.LsdQuote {
                width: parent.width
                text: "The best way to predict the future is to invent it. — Alan Kay"
            }
        }
        
        // Quote variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Variants"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Innovation distinguishes between a leader and a follower."
                    author: "Steve Jobs"
                    variant: "bordered"
                }
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Code is like humor. When you have to explain it, it's bad."
                    author: "Cory House"
                    variant: "minimal"
                }
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Any fool can write code that a computer can understand. Good programmers write code that humans can understand."
                    author: "Martin Fowler"
                    variant: "highlighted"
                }
            }
        }
        
        // Quote sizes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Sizes"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Small quote for inline emphasis"
                    author: "Anonymous"
                    size: "small"
                }
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Medium quote for standard content highlighting"
                    author: "Anonymous"
                    size: "medium"
                }
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Large quote for prominent display and testimonials"
                    author: "Anonymous"
                    size: "large"
                }
            }
        }
        
        // Quotes without authors
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Without Attribution"
                variant: "h3"
            }
            
            Column {
                spacing: Theme.LsdTheme.spacing[2] // 16px
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "This is an important principle to remember when designing user interfaces."
                }
                
                Lsd.LsdQuote {
                    width: parent.width
                    text: "Sometimes you need to highlight content without specific attribution."
                    variant: "highlighted"
                }
            }
        }
        
        // Long quotes
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Long Form Content"
                variant: "h3"
            }
            
            Lsd.LsdQuote {
                width: parent.width
                text: "The most important property of a program is whether it accomplishes the intention of its user. The next most important property is whether it is readable by humans. All other properties are secondary. Remember that code is written once but read many times. Make it count."
                author: "Abelson & Sussman"
                variant: "bordered"
            }
        }
        
        // Article example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Article Example"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 480
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "The Philosophy of Design"
                        variant: "h3"
                    }
                    
                    Lsd.LsdText {
                        text: "Design is not just what it looks like and feels like. Design is how it works. This fundamental principle has guided countless innovations in technology and user experience."
                        variant: "body2"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "Design is not just what it looks like and feels like. Design is how it works."
                        author: "Steve Jobs"
                        variant: "highlighted"
                        size: "large"
                    }
                    
                    Lsd.LsdText {
                        text: "This perspective has revolutionized how we think about user interfaces, product development, and the relationship between form and function. When we focus on how something works, we create solutions that are not only beautiful but truly useful."
                        variant: "body2"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "Good design is obvious. Great design is transparent."
                        author: "Joe Sparano"
                        variant: "minimal"
                    }
                    
                    Lsd.LsdText {
                        text: "The best designs fade into the background, allowing users to focus on their goals rather than figuring out how to use the interface."
                        variant: "body2"
                        wrapMode: Text.WordWrap
                        width: parent.width
                    }
                }
            }
        }
        
        // Testimonial example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Customer Testimonials"
                variant: "h3"
            }
            
            Row {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                width: parent.width
                
                Lsd.LsdCard {
                    width: (parent.width - Theme.LsdTheme.spacing[3]) / 2
                    height: 200
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "This product has completely transformed how our team collaborates. The interface is intuitive and the features are exactly what we needed."
                        author: "Sarah Johnson, Product Manager"
                        variant: "bordered"
                        size: "medium"
                    }
                }
                
                Lsd.LsdCard {
                    width: (parent.width - Theme.LsdTheme.spacing[3]) / 2
                    height: 200
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "Outstanding customer support and a product that actually delivers on its promises. Highly recommended for any development team."
                        author: "Mike Chen, CTO"
                        variant: "highlighted"
                        size: "medium"
                    }
                }
            }
        }
        
        // Documentation example
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Documentation Usage"
                variant: "h3"
            }
            
            Lsd.LsdCard {
                width: parent.width
                height: 280
                
                Column {
                    spacing: Theme.LsdTheme.spacing[2] // 16px
                    width: parent.width
                    
                    Lsd.LsdText {
                        text: "API Best Practices"
                        variant: "body1"
                    }
                    
                    Lsd.LsdText {
                        text: "When designing RESTful APIs, consider the following guidelines:"
                        variant: "body2"
                    }
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "Keep your API endpoints simple and intuitive. Use clear, descriptive names that follow consistent patterns."
                        variant: "minimal"
                    }
                    
                    Lsd.LsdText {
                        text: "Remember to version your API from the beginning:"
                        variant: "body2"
                    }
                    
                    Lsd.LsdQuote {
                        width: parent.width
                        text: "It's much easier to add versioning from day one than to retrofit it later when you have existing clients."
                        author: "API Design Guide"
                        variant: "bordered"
                        size: "small"
                    }
                    
                    Lsd.LsdText {
                        text: "These principles will help ensure your API remains maintainable and user-friendly as it evolves."
                        variant: "body2"
                        colorVariant: "tertiary"
                    }
                }
            }
        }
    }
}
