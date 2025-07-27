# LSD-Qt Project Overview

## What This Is

QML component library implementing the Logos Design System (LSD) for Qt applications. Similar to `@acid-info/lsd-react` but for desktop/mobile Qt apps.

## Design Philosophy

- **Minimal**: Pure black/white, clean borders, no clutter
- **Rebellion**: Against overdesigned UIs, focus on content
- **Consistent**: Typography scale, spacing system, interaction patterns

## Core Components Needed

- `LsdButton` (outlined/filled variants)
- `LsdText` (typography hierarchy)
- `LsdTextField` (input components)
- `LsdCard` (content containers)
- Theme system with light/dark support

## Key Implementation Details

- Use QML property bindings for theme reactivity
- Singleton pattern for theme management
- 1px solid borders everywhere
- Sans-serif typography, normal weights
- Hover states with underlines (not animations)
- Spacing scale: [4, 8, 16, 24, 32, 40, 64, 80, 96, 120]px
