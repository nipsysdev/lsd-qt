import QtQuick 2.15
import "../theme" as Theme

Row {
    id: root
    
    // Public API  
    property string variant: "outlined"  // "outlined" | "filled"
    property string size: "medium"       // "small" | "medium" | "large"
    property int selectedIndex: -1       // For toggle behavior
    property bool multiSelect: false     // Allow multiple selections
    property var selectedIndices: []     // Multi-select state
    
    signal buttonClicked(int index)
    signal selectionChanged(var indices)
    
    spacing: 0 // No spacing between grouped buttons
    
    // Helper function to check if button is selected in multi-select mode
    function isSelected(index) {
        if (multiSelect) {
            return selectedIndices.indexOf(index) !== -1
        } else {
            return selectedIndex === index
        }
    }
    
    // Handle button clicks
    function handleButtonClick(index) {
        buttonClicked(index)
        
        if (multiSelect) {
            var newIndices = selectedIndices.slice() // Copy array
            var currentIndex = newIndices.indexOf(index)
            
            if (currentIndex !== -1) {
                // Remove from selection
                newIndices.splice(currentIndex, 1)
            } else {
                // Add to selection
                newIndices.push(index)
            }
            
            selectedIndices = newIndices
            selectionChanged(newIndices)
        } else {
            if (selectedIndex === index) {
                // Deselect if clicking the same button
                selectedIndex = -1
            } else {
                selectedIndex = index
            }
        }
    }
    
    // Style child IconButtons to appear grouped
    Component.onCompleted: {
        for (var i = 0; i < children.length; i++) {
            var child = children[i]
            if (child.objectName === "LsdIconButton" || child.toString().indexOf("LsdIconButton") !== -1) {
                // Remove right border except for last button
                if (i < children.length - 1) {
                    child.border.width = Qt.binding(function() { return 1 })
                    child.rightBorderVisible = false
                }
                
                // Connect click handler
                child.clicked.connect(function() {
                    var buttonIndex = -1
                    for (var j = 0; j < children.length; j++) {
                        if (children[j] === child) {
                            buttonIndex = j
                            break
                        }
                    }
                    if (buttonIndex !== -1) {
                        handleButtonClick(buttonIndex)
                    }
                })
                
                // Update button appearance based on selection
                child.isSelected = Qt.binding(function() {
                    var idx = -1
                    for (var k = 0; k < children.length; k++) {
                        if (children[k] === child) {
                            idx = k
                            break
                        }
                    }
                    return idx !== -1 && isSelected(idx)
                })
            }
        }
    }
}
