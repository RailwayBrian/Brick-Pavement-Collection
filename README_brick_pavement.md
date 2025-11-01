# Brick Pavement - Running Bond Pattern

An OpenSCAD model for creating realistic brick pavement with a running bond (stretcher bond) pattern.

## Features

- Classic running bond/stretcher bond brick pattern
- Parametric design - easily adjust all dimensions
- Edge curbs on both sides
- Base/substrate layer
- Proper half-brick alignment at edges
- Realistic mortar gaps between bricks

## Parameters

All parameters can be adjusted at the top of the file:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `brick_length` | 40 | Length of each brick |
| `brick_width` | 20 | Width of each brick |
| `brick_height` | 6 | Height/thickness of each brick |
| `mortar_gap` | 2 | Gap between bricks (mortar joint) |
| `path_width` | 3 | Number of bricks across the width |
| `path_length` | 12 | Number of brick rows along the length |
| `curb_width` | 5 | Width of the curb on each side |

## Usage

1. Open `brick_pavement.scad` in OpenSCAD
2. Adjust parameters as needed
3. Press F5 to preview or F6 to render
4. Export as STL for 3D printing or other formats as needed

## Customization Examples

**Larger pavement area:**
```openscad
path_width = 5;
path_length = 20;
```

**Smaller bricks (more detailed):**
```openscad
brick_length = 30;
brick_width = 15;
brick_height = 5;
```

**Wider curbs:**
```openscad
curb_width = 10;
```

## Structure

The model consists of three main components:
- **Base layer** - Sandy/ground colored substrate beneath the bricks
- **Bricks** - Dark gray pavers in running bond pattern
- **Curbs** - Edge borders on both sides

## License

Feel free to use and modify for your projects.
