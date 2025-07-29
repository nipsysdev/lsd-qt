import QtQuick 2.15
import "../components" as Lsd
import "../theme" as Theme

Column {
    width: parent.width
    spacing: Theme.LsdTheme.spacing[3] // 24px
    
    Lsd.LsdText {
        text: "Tooltip"
        variant: "h2"
    }
    
    Lsd.LsdText {
        text: "Contextual information that appears on hover"
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
            
            Row {
                spacing: Theme.LsdTheme.spacing[3] // 24px
                
                Rectangle {
                    id: basicButton
                    width: 100
                    height: 32
                    color: Theme.LsdTheme.surfaceSecondary
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    
                    Text {
                        text: "Hover me"
                        anchors.centerIn: parent
                        font.family: Theme.LsdTheme.typography.fontFamily
                        color: Theme.LsdTheme.textPrimary
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: basicTooltip.tooltipVisible = true
                        onExited: basicTooltip.tooltipVisible = false
                    }
                }
                
                Lsd.LsdTooltip {
                    id: basicTooltip
                    text: "This is a basic tooltip"
                    target: basicButton
                    position: "top"
                }
            }
        }
        
        // Position variants
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "Position Variants"
                variant: "h3"
            }
            
            Grid {
                columns: 2
                columnSpacing: Theme.LsdTheme.spacing[4] // 32px
                rowSpacing: Theme.LsdTheme.spacing[3] // 24px
                
                // Top
                Rectangle {
                    id: topButton
                    width: 80
                    height: 32
                    color: Theme.LsdTheme.surfaceSecondary
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    
                    Text {
                        text: "Top"
                        anchors.centerIn: parent
                        font.family: Theme.LsdTheme.typography.fontFamily
                        color: Theme.LsdTheme.textPrimary
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: topTooltip.tooltipVisible = true
                        onExited: topTooltip.tooltipVisible = false
                    }
                }
                
                // Bottom
                Rectangle {
                    id: bottomButton
                    width: 80
                    height: 32
                    color: Theme.LsdTheme.surfaceSecondary
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    
                    Text {
                        text: "Bottom"
                        anchors.centerIn: parent
                        font.family: Theme.LsdTheme.typography.fontFamily
                        color: Theme.LsdTheme.textPrimary
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: bottomTooltip.tooltipVisible = true
                        onExited: bottomTooltip.tooltipVisible = false
                    }
                }
                
                // Left
                Rectangle {
                    id: leftButton
                    width: 80
                    height: 32
                    color: Theme.LsdTheme.surfaceSecondary
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    
                    Text {
                        text: "Left"
                        anchors.centerIn: parent
                        font.family: Theme.LsdTheme.typography.fontFamily
                        color: Theme.LsdTheme.textPrimary
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: leftTooltip.tooltipVisible = true
                        onExited: leftTooltip.tooltipVisible = false
                    }
                }
                
                // Right
                Rectangle {
                    id: rightButton
                    width: 80
                    height: 32
                    color: Theme.LsdTheme.surfaceSecondary
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    
                    Text {
                        text: "Right"
                        anchors.centerIn: parent
                        font.family: Theme.LsdTheme.typography.fontFamily
                        color: Theme.LsdTheme.textPrimary
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: rightTooltip.tooltipVisible = true
                        onExited: rightTooltip.tooltipVisible = false
                    }
                }
            }
            
            // Tooltips for position variants
            Lsd.LsdTooltip {
                id: topTooltip
                text: "Tooltip on top"
                target: topButton
                position: "top"
            }
            
            Lsd.LsdTooltip {
                id: bottomTooltip
                text: "Tooltip on bottom"
                target: bottomButton
                position: "bottom"
            }
            
            Lsd.LsdTooltip {
                id: leftTooltip
                text: "Tooltip on left"
                target: leftButton
                position: "left"
            }
            
            Lsd.LsdTooltip {
                id: rightTooltip
                text: "Tooltip on right"
                target: rightButton
                position: "right"
            }
        }
        
        // With longer text
        Column {
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            Lsd.LsdText {
                text: "With Longer Text"
                variant: "h3"
            }
            
            Rectangle {
                id: longTextButton
                width: 120
                height: 32
                color: Theme.LsdTheme.surfaceSecondary
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                
                Text {
                    text: "Info button"
                    anchors.centerIn: parent
                    font.family: Theme.LsdTheme.typography.fontFamily
                    color: Theme.LsdTheme.textPrimary
                }
                
                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: longTextTooltip.tooltipVisible = true
                    onExited: longTextTooltip.tooltipVisible = false
                }
            }
            
            Lsd.LsdTooltip {
                id: longTextTooltip
                text: "This is a longer tooltip text that demonstrates how tooltips handle wrapping when the content is too long for a single line."
                target: longTextButton
                position: "top"
            }
        }
    }
}
