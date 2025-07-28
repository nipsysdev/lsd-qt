import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property date selectedDate: new Date()
    property date displayedMonth: new Date()
    property string size: "medium"   // "small" | "medium" | "large"
    
    signal dateSelected(date selectedDate)
    
    width: getCalendarWidth()
    height: getCalendarHeight()
    color: Theme.LsdTheme.surfacePrimary
    border.color: Theme.LsdTheme.borderPrimary
    border.width: 1
    
    function getCalendarWidth() {
        switch(size) {
            case "small": return 280
            case "large": return 360
            default: return 320
        }
    }
    
    function getCalendarHeight() {
        switch(size) {
            case "small": return 240
            case "large": return 320
            default: return 280
        }
    }
    
    function getDaysInMonth(year, month) {
        return new Date(year, month + 1, 0).getDate()
    }
    
    function getFirstDayOfMonth(year, month) {
        return new Date(year, month, 1).getDay()
    }
    
    function formatDate(date) {
        return date.toLocaleDateString('en-US', { 
            year: 'numeric', 
            month: 'long' 
        })
    }
    
    Column {
        anchors.fill: parent
        anchors.margins: Theme.LsdTheme.spacing[2] // 16px
        
        // Header with month/year and navigation
        Rectangle {
            width: parent.width
            height: 40
            color: "transparent"
            
            Row {
                anchors.fill: parent
                
                // Previous month button
                Rectangle {
                    width: 32
                    height: 32
                    color: "transparent"
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    anchors.verticalCenter: parent.verticalCenter
                    
                    Text {
                        text: "‹"
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: 18
                        color: Theme.LsdTheme.textPrimary
                        anchors.centerIn: parent
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            var newDate = new Date(displayedMonth)
                            newDate.setMonth(newDate.getMonth() - 1)
                            displayedMonth = newDate
                        }
                    }
                }
                
                // Month/Year display
                Text {
                    text: formatDate(displayedMonth)
                    font.family: Theme.LsdTheme.typography.fontFamily
                    font.pixelSize: Theme.LsdTheme.typography.body1Size
                    color: Theme.LsdTheme.textPrimary
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width - 80
                    horizontalAlignment: Text.AlignHCenter
                }
                
                // Next month button
                Rectangle {
                    width: 32
                    height: 32
                    color: "transparent"
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 1
                    anchors.verticalCenter: parent.verticalCenter
                    
                    Text {
                        text: "›"
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: 18
                        color: Theme.LsdTheme.textPrimary
                        anchors.centerIn: parent
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            var newDate = new Date(displayedMonth)
                            newDate.setMonth(newDate.getMonth() + 1)
                            displayedMonth = newDate
                        }
                    }
                }
            }
        }
        
        // Day headers (Sun, Mon, etc.)
        Grid {
            width: parent.width
            height: 24
            columns: 7
            columnSpacing: 0
            rowSpacing: 0
            
            Repeater {
                model: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
                
                Rectangle {
                    width: (parent.width) / 7
                    height: 24
                    color: "transparent"
                    
                    Text {
                        text: modelData
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: Theme.LsdTheme.typography.body3Size
                        color: Theme.LsdTheme.textTertiary
                        anchors.centerIn: parent
                    }
                }
            }
        }
        
        // Calendar grid
        Grid {
            width: parent.width
            height: parent.height - 80 // Remaining space
            columns: 7
            columnSpacing: 0
            rowSpacing: 0
            
            // Generate calendar days
            Repeater {
                model: 42 // 6 weeks * 7 days
                
                Rectangle {
                    width: (parent.width) / 7
                    height: (parent.height) / 6
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: 0.5
                    
                    property int dayNumber: {
                        var year = displayedMonth.getFullYear()
                        var month = displayedMonth.getMonth()
                        var firstDay = getFirstDayOfMonth(year, month)
                        var dayIndex = index - firstDay + 1
                        
                        if (index < firstDay) {
                            // Previous month days
                            var prevMonth = month - 1
                            var prevYear = year
                            if (prevMonth < 0) {
                                prevMonth = 11
                                prevYear--
                            }
                            var daysInPrevMonth = getDaysInMonth(prevYear, prevMonth)
                            return daysInPrevMonth - (firstDay - index - 1)
                        } else if (dayIndex > getDaysInMonth(year, month)) {
                            // Next month days
                            return dayIndex - getDaysInMonth(year, month)
                        } else {
                            // Current month days
                            return dayIndex
                        }
                    }
                    
                    property bool isCurrentMonth: {
                        var year = displayedMonth.getFullYear()
                        var month = displayedMonth.getMonth()
                        var firstDay = getFirstDayOfMonth(year, month)
                        var dayIndex = index - firstDay + 1
                        return dayIndex >= 1 && dayIndex <= getDaysInMonth(year, month)
                    }
                    
                    property bool isSelected: {
                        if (!isCurrentMonth) return false
                        var year = displayedMonth.getFullYear()
                        var month = displayedMonth.getMonth()
                        var selectedYear = selectedDate.getFullYear()
                        var selectedMonth = selectedDate.getMonth()
                        var selectedDay = selectedDate.getDate()
                        return year === selectedYear && month === selectedMonth && dayNumber === selectedDay
                    }
                    
                    // Highlight selected date
                    color: isSelected ? Theme.LsdTheme.surfaceSecondary : "transparent"
                    
                    Text {
                        text: dayNumber
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: Theme.LsdTheme.typography.body2Size
                        color: {
                            if (isSelected) return Theme.LsdTheme.textSecondary
                            if (!isCurrentMonth) return Theme.LsdTheme.textTertiary
                            return Theme.LsdTheme.textPrimary
                        }
                        anchors.centerIn: parent
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        enabled: isCurrentMonth
                        onClicked: {
                            var year = displayedMonth.getFullYear()
                            var month = displayedMonth.getMonth()
                            var newDate = new Date(year, month, dayNumber)
                            selectedDate = newDate
                            dateSelected(newDate)
                        }
                    }
                }
            }
        }
    }
}
