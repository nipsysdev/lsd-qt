# LSD-Qt

QML component library implementing the Logos Design System for Qt applications.

## Philosophy

Minimal, content-focused design system challenging conventional UI clutter. Pure black/white aesthetic with clean typography and intentional spacing.

> **Note**: This is a Qt/QML implementation of the [Logos Design System](https://github.com/acid-info/lsd). For React components, check out the main LSD repository.

## Quick Start

```qml
import "components" as Lsd

Lsd.LsdButton {
    text: "Get Started"
    variant: "filled"
    onClicked: console.log("clicked")
}
```

## Theme Support

Automatic light/dark theme switching with property bindings.

## Showcase

Try the component showcase:

```bash
./demo.sh
```
