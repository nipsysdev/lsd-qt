import QtQuick 2.15
import QtQuick.Controls 2.15
import "../theme" as Theme

Rectangle {
    id: root
    
    // Public API
    property string label: ""
    property string placeholderText: "Select date..."
    property date selectedDate: new Date()
    property string variant: "outlined"  // "outlined" | "underlined"
    property string size: "medium"       // "small" | "medium" | "large"
    property bool disabled: false
    
    signal dateChanged(date newDate)
    
    width: 240
    height: getSizeHeight()
    
    color: "transparent"
    border.color: variant === "outlined" ? Theme.LsdTheme.borderPrimary : "transparent"
    border.width: variant === "outlined" ? 1 : 0
    
    // Internal state
    property bool dropdownOpen: false
    property bool hovered: false
    
    function getSizeHeight() {
        switch(size) {
            case "small": return 28
            case "large": return 40
            default: return 32
        }
    }
    
    function formatSelectedDate() {
        if (selectedDate) {
            return selectedDate.toLocaleDateString('en-US', {
                year: 'numeric',
                month: 'short',
                day: 'numeric'
            })
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
            text: formatSelectedDate()
            font.family: Theme.LsdTheme.typography.fontFamily
            font.pixelSize: Theme.LsdTheme.typography.body2Size
            color: selectedDate ? Theme.LsdTheme.textPrimary : Theme.LsdTheme.textTertiary
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width - 20
        }
        
        // Calendar icon (simplified)
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
        onClicked: dropdownOpen = !dropdownOpen
    }
    
    // Calendar popup
    Rectangle {
        id: calendarPopup
        width: 320
        height: 300
        color: Theme.LsdTheme.surfacePrimary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        visible: dropdownOpen
        z: 1000
        
        // Position below the input
        anchors.top: parent.bottom
        anchors.topMargin: 4
        anchors.left: parent.left
        
        // Calendar component
        LsdCalendar {
            anchors.fill: parent
            selectedDate: root.selectedDate
            size: "medium"
            
            onDateSelected: function(date) {
                root.selectedDate = date
                root.dateChanged(date)
                root.dropdownOpen = false
            }
        }
        
        // Click outside to close
        MouseArea {
            anchors.fill: parent
            onClicked: {
                // Handled by calendar
            }
        }
    }
}
