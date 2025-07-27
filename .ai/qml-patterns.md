# QML Implementation Patterns

## Theme Management

```qml
// Use singleton pattern with property bindings
pragma Singleton
QtObject {
    property string currentTheme: "light"
    readonly property color surfacePrimary: currentTheme === "light" ? "#ffffff" : "#000000"
}
```

## Component Structure

```qml
// LsdButton.qml example
Rectangle {
    property string text: ""
    property string variant: "outlined" // "outlined" | "filled"
    property string size: "medium"
    signal clicked()

    color: variant === "filled" ? LsdTheme.surfaceSecondary : "transparent"
    border.color: LsdTheme.borderPrimary
    border.width: 1
}
```

## File Organization

```
components/
  LsdButton.qml
  LsdText.qml
theme/
  LsdTheme.qml (singleton)
utils/
  qmldir (for imports)
```

## Import Pattern

```qml
import LsdComponents 1.0
// or
import "components" as Lsd
```

## Key QML Concepts

- Property bindings auto-update on theme changes
- MouseArea for interactions, cursorShape for pointer
- Singleton requires qmldir registration
- Use `readonly property` for computed values
