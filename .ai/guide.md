# LSD-Qt Development Guide

## Running Demo

Use `./demo.sh` - not `qml showcase/main.qml` directly.

## Component Structure

- Import QtQuick 2.15 and `"../theme" as Theme`
- Use `Theme.LsdTheme.*` for all styling (colors, spacing, typography)
- 1px solid borders, hover with underlines
- Size variants: "small" | "medium" | "large"
- Disabled state: opacity 0.34

## Common QML Issues

- Avoid property names: `visible`, `value` (conflicts with QML)
- No anchors in Column/Row children
- Use `Qt.PointingHandCursor` for clickable MouseAreas
- Theme switching needs property bindings, not direct assignments

## File Locations

- Components: `components/` + register in `qmldir`
- Demos: `showcase/` + add to main.qml sidebar
- Theme: `theme/`
