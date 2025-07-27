pragma Singleton
import QtQuick 2.15

QtObject {
    id: root
    
    // Current theme state
    property string currentTheme: "light"
    
    // Color tokens - automatically switch based on theme
    readonly property color surfacePrimary: currentTheme === "light" ? "#ffffff" : "#000000"
    readonly property color surfaceSecondary: currentTheme === "light" ? "#000000" : "#ffffff"
    readonly property color textPrimary: currentTheme === "light" ? "#000000" : "#ffffff"
    readonly property color textSecondary: currentTheme === "light" ? "#ffffff" : "#000000"
    readonly property color borderPrimary: currentTheme === "light" ? "#000000" : "#ffffff"
    readonly property color textTertiary: currentTheme === "light" ? Qt.rgba(0, 0, 0, 0.34) : Qt.rgba(1, 1, 1, 0.34)
    
    // Typography scale
    readonly property QtObject typography: QtObject {
        readonly property string fontFamily: "sans-serif"
        readonly property int h1Size: 40
        readonly property int h2Size: 32
        readonly property int h3Size: 28
        readonly property int body1Size: 16
        readonly property int body2Size: 14
        readonly property int body3Size: 12
        readonly property int labelSize: 14
    }
    
    // Spacing scale
    readonly property var spacing: [4, 8, 16, 24, 32, 40, 64, 80, 96, 120]
    
    // Component sizing
    readonly property QtObject button: QtObject {
        readonly property int smallPadding: 24
        readonly property int mediumPadding: 48
        readonly property int largePadding: 80
        readonly property int smallHeight: 28
        readonly property int mediumHeight: 32
        readonly property int largeHeight: 40
    }
    
    // Theme switching
    function setTheme(themeName) {
        if (themeName === "light" || themeName === "dark") {
            currentTheme = themeName
        }
    }
    
    function toggleTheme() {
        currentTheme = currentTheme === "light" ? "dark" : "light"
    }
}
