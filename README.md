# LSD-Qt

QML component library implementing the Logos Design System for Qt applications.

## Philosophy

Minimal, content-focused design system challenging conventional UI clutter. Pure black/white aesthetic with clean typography and intentional spacing.

## Quick Start

```qml
import "components" as Lsd

Lsd.LsdButton {
    text: "Get Started"
    variant: "filled"
    onClicked: console.log("clicked")
}
```

## Components

- `LsdButton` - Primary/secondary buttons with hover states
- `LsdText` - Typography with proper hierarchy
- `LsdTextField` - Input fields
- `LsdCard` - Content containers

## Theme Support

Automatic light/dark theme switching with property bindings.

## Showcase

Try the component showcase:

```bash
./demo.sh
```
