import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string label: ""
    property string placeholderText: "Select date range..."
    property date startDate: new Date()
    property date endDate: new Date()
    property string variant: "outlined"  // "outlined" | "underlined"
    property string size: "medium"       // "small" | "medium" | "large"
    property bool disabled: false
    
    signal dateRangeChanged(date startDate, date endDate)
    
    width: 280
    height: getSizeHeight()
    
    color: "transparent"
    border.color: variant === "outlined" ? Theme.LsdTheme.borderPrimary : "transparent"
    border.width: variant === "outlined" ? 1 : 0
    
    // Internal state
    property bool dropdownOpen: false
    property bool hovered: false
    property bool selectingEnd: false
    
    function getSizeHeight() {
        switch(size) {
            case "small": return 28
            case "large": return 40
            default: return 32
        }
    }
    
    function formatDateRange() {
        if (startDate && endDate) {
            var startStr = startDate.toLocaleDateString('en-US', {
                month: 'short',
                day: 'numeric'
            })
            var endStr = endDate.toLocaleDateString('en-US', {
                month: 'short',
                day: 'numeric',
                year: 'numeric'
            })
            return startStr + " - " + endStr
        } else if (startDate) {
            return startDate.toLocaleDateString('en-US', {
                month: 'short',
                day: 'numeric',
                year: 'numeric'
            }) + " - ..."
        }
        return placeholderText
    }
    
    // Underlined variant bottom border
    Rectangle {
        width: parent.width
        height: 1
        color: Theme.LsdTheme.borderPrimary
        anchors.bottom: parent.bottom
        visible: variant === "underlined"
    }
    
    // Input area
    Row {
        anchors.fill: parent
        anchors.margins: Theme.LsdTheme.spacing[1] // 8px
        spacing: Theme.LsdTheme.spacing[1] // 8px
        
        Text {
            text: formatDateRange()
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: Theme.LsdTheme.typography.body2Size
            color: (startDate || endDate) ? Theme.LsdTheme.textPrimary : Theme.LsdTheme.textTertiary
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - 20
        }
        
        // Calendar icon
        Text {
            text: "📅"
            font.pixelSize: 12
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    
    // Click area
    MouseArea {
        anchors.fill: parent
        enabled: !disabled
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: hovered = true
        onExited: hovered = false
        onClicked: {
            dropdownOpen = !dropdownOpen
            selectingEnd = false
        }
    }
    
    // Calendar popup with two months
    Rectangle {
        id: calendarPopup
        width: 660
        height: 320
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        visible: dropdownOpen
        z: 1000
        
        // Position below the input
        anchors.top: parent.bottom
        anchors.topMargin: 4
        anchors.left: parent.left
        
        Row {
            anchors.fill: parent
            anchors.margins: Theme.LsdTheme.spacing[2] // 16px
            spacing: Theme.LsdTheme.spacing[2] // 16px
            
            // Current month calendar
            LsdCalendar {
                id: currentCalendar
                width: 300
                height: parent.height
                selectedDate: startDate || new Date()
                size: "medium"
                
                onDateSelected: function(date) {
                    if (!startDate || selectingEnd) {
                        if (!startDate) {
                            root.startDate = date
                            selectingEnd = true
                        } else {
                            if (date >= startDate) {
                                root.endDate = date
                                root.dateRangeChanged(root.startDate, root.endDate)
                                root.dropdownOpen = false
                                selectingEnd = false
                            } else {
                                // If selected date is before start, make it the new start
                                root.startDate = date
                                root.endDate = null
                            }
                        }
                    } else {
                        // Reset selection
                        root.startDate = date
                        root.endDate = null
                        selectingEnd = true
                    }
                }
            }
            
            // Next month calendar
            LsdCalendar {
                id: nextCalendar
                width: 300
                height: parent.height
                selectedDate: endDate || new Date()
                displayedMonth: {
                    var nextMonth = new Date(currentCalendar.displayedMonth)
                    nextMonth.setMonth(nextMonth.getMonth() + 1)
                    return nextMonth
                }
                size: "medium"
                
                onDateSelected: function(date) {
                    if (!startDate || selectingEnd) {
                        if (!startDate) {
                            root.startDate = date
                            selectingEnd = true
                        } else {
                            if (date >= startDate) {
                                root.endDate = date
                                root.dateRangeChanged(root.startDate, root.endDate)  
                                root.dropdownOpen = false
                                selectingEnd = false
                            } else {
                                // If selected date is before start, make it the new start
                                root.startDate = date
                                root.endDate = null
                            }
                        }
                    } else {
                        // Reset selection
                        root.startDate = date
                        root.endDate = null
                        selectingEnd = true
                    }
                }
            }
        }
        
        // Instructions
        Rectangle {
            width: parent.width
            height: 24
            color: Theme.LsdTheme.surfacePrimary
            border.color: Theme.LsdTheme.borderPrimary
            border.width: 0
            anchors.bottom: parent.bottom
            
            Text {
                text: selectingEnd ? "Select end date" : "Select start date"
                font.family: Theme.LsdTheme.typography.fontFamily
                font.pixelSize: Theme.LsdTheme.typography.body3Size
                color: Theme.LsdTheme.textTertiary
                anchors.centerIn: parent
            }
        }
    }
}
