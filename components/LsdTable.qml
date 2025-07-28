import QtQuick 2.15
import "../theme" as Theme

Column {
    id: root
    
    // Public API
    property string size: "large"        // "small" | "medium" | "large"
    property var headers: []             // Array of header text
    property var rows: []                // Array of arrays for row data
    property bool striped: false
    
    signal cellClicked(int row, int column, var data)
    
    spacing: 0
    
    // Header
    Rectangle {
        id: headerRow
        width: parent.width
        height: getRowHeight()
        color: Theme.LsdTheme.surfaceSecondary
        border.color: Theme.LsdTheme.borderPrimary
        border.width: 1
        
        Row {
            anchors.fill: parent
            
            Repeater {
                model: root.headers
                
                Rectangle {
                    width: root.width / root.headers.length
                    height: parent.height
                    color: "transparent"
                    border.color: Theme.LsdTheme.borderPrimary
                    border.width: index > 0 ? 1 : 0
                    
                    Rectangle {
                        width: 1
                        height: parent.height
                        color: Theme.LsdTheme.surfaceSecondary
                        anchors.left: parent.left
                        visible: index > 0
                    }
                    
                    Text {
                        text: modelData
                        font.family: Theme.LsdTheme.typography.fontFamily
                        font.pixelSize: getHeaderFontSize()
                        font.weight: Font.Normal
                        color: Theme.LsdTheme.textSecondary
                        anchors.left: parent.left
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.leftMargin: getCellPadding()
                        elide: Text.ElideRight
                        width: parent.width - (getCellPadding() * 2)
                    }
                }
            }
        }
    }
    
    // Body rows
    Column {
        width: parent.width
        
        Repeater {
            model: root.rows
            
            Rectangle {
                id: rowRect
                width: root.width
                height: getRowHeight()
                color: root.striped && (index % 2 === 1) ? 
                       Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.02) :
                       Theme.LsdTheme.surfacePrimary
                border.color: Theme.LsdTheme.borderPrimary
                border.width: 1
                
                property int tableRowIndex: index // Store the row index
                
                // Remove top border to avoid double border
                Rectangle {
                    width: parent.width
                    height: 1
                    color: rowRect.color
                    anchors.top: parent.top
                }
                
                Row {
                    anchors.fill: parent
                    
                    Repeater {
                        model: modelData
                        
                        Rectangle {
                            width: root.width / root.headers.length
                            height: parent.height
                            color: "transparent"
                            border.color: Theme.LsdTheme.borderPrimary
                            border.width: cellIndex > 0 ? 1 : 0
                            
                            property int cellIndex: index
                            property int rowIndex: rowRect.tableRowIndex
                            
                            Rectangle {
                                width: 1
                                height: parent.height
                                color: parent.parent.parent.color
                                anchors.left: parent.left
                                visible: cellIndex > 0
                            }
                            
                            Text {
                                text: modelData
                                font.family: Theme.LsdTheme.typography.fontFamily
                                font.pixelSize: getCellFontSize()
                                font.weight: Font.Normal
                                color: Theme.LsdTheme.textPrimary
                                anchors.left: parent.left
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.leftMargin: getCellPadding()
                                elide: Text.ElideRight
                                width: parent.width - (getCellPadding() * 2)
                            }
                            
                            MouseArea {
                                anchors.fill: parent
                                hoverEnabled: true
                                cursorShape: Qt.PointingHandCursor
                                
                                onClicked: root.cellClicked(rowIndex, cellIndex, modelData)
                                
                                onEntered: parent.parent.parent.color = Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.05)
                                onExited: parent.parent.parent.color = root.striped && (rowIndex % 2 === 1) ? 
                                         Qt.rgba(Theme.LsdTheme.textPrimary.r, Theme.LsdTheme.textPrimary.g, Theme.LsdTheme.textPrimary.b, 0.02) :
                                         Theme.LsdTheme.surfacePrimary
                            }
                        }
                    }
                }
            }
        }
    }
    
    function getRowHeight() {
        switch(size) {
            case "small": return 32
            case "medium": return 40
            case "large": return 48
            default: return 48
        }
    }
    
    function getCellPadding() {
        switch(size) {
            case "small": return Theme.LsdTheme.spacing[1]  // 8px
            case "medium": return Theme.LsdTheme.spacing[2] // 16px
            case "large": return Theme.LsdTheme.spacing[3]  // 24px
            default: return Theme.LsdTheme.spacing[3]
        }
    }
    
    function getHeaderFontSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
    
    function getCellFontSize() {
        switch(size) {
            case "small": return Theme.LsdTheme.typography.body3Size
            case "medium": return Theme.LsdTheme.typography.body2Size
            case "large": return Theme.LsdTheme.typography.body1Size
            default: return Theme.LsdTheme.typography.body1Size
        }
    }
}
