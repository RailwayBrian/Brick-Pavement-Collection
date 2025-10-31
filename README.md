# Brick-Pavement-Collection
# OpenSCAD Brick Pavement Collection

A collection of parametric OpenSCAD models for creating realistic brick pavement patterns. Perfect for architectural visualization, 3D printing, model railways, miniatures, and design projects.

## Models Included

### 1. Brick Pavement (Straight)
**File:** `brick_pavement.scad`

Classic running bond pattern with straight edges. The foundation model with edge curbs and base layer.

**Best for:** Standard pavements, patios, basic walkways

[View detailed README](README_brick_pavement.md)

### 2. Curved Brick Pavement
**File:** `brick_pavement_curved.scad`

Four curve types in one model: straight, simple curve, S-curve, and stepped offset.

**Best for:** Garden paths, serpentine walkways, curved driveways, decorative patterns

**Curve Types:**
- **Straight** - Standard path
- **Curve** - Gentle arc
- **S-Curve** - Sinusoidal waves
- **Stepped** - Parallel offset transition

[View detailed README](README_brick_pavement_curved.md)

### 3. Transitioning Width Pavement
**File:** `brick_pavement_transition.scad`

Smoothly transitions from one width to another with one straight edge.

**Best for:** Path widenings, entrances, transition areas, splitting/merging paths

[View detailed README](README_brick_pavement_transition.md)

## Quick Start

1. Install [OpenSCAD](https://openscad.org/)
2. Download the `.scad` file(s) you want
3. Open in OpenSCAD
4. Adjust parameters at the top of the file
5. Press **F5** to preview or **F6** to render
6. Export as STL or other formats

## Common Parameters

All models share these basic parameters:

| Parameter | Description | Typical Range |
|-----------|-------------|---------------|
| `brick_length` | Length of each brick | 30-50 |
| `brick_width` | Width of each brick | 15-25 |
| `brick_height` | Thickness of bricks | 5-8 |
| `mortar_gap` | Gap between bricks | 1-3 |
| `path_width` | Width in bricks | 2-6 |
| `path_length` | Length in brick rows | 10-30 |
| `curb_width` | Width of edge curbs | 3-10 |

## Features

✓ Parametric design - all dimensions adjustable  
✓ Realistic running bond pattern  
✓ Proper half-brick alignment at edges  
✓ Smooth curved edges (curved models)  
✓ Edge curbs included  
✓ Base/substrate layer  
✓ Clean geometry suitable for 3D printing  
✓ Well-commented code  

## Use Cases

- **3D Printing:** Terrain pieces, model railways, architectural models, dioramas
- **Visualization:** Landscape design, architectural renderings
- **Game Assets:** Environment modeling
- **Education:** Learning OpenSCAD, parametric design
- **DIY Projects:** Planning real pavement layouts

## Tips

- Start with default parameters and adjust gradually
- Use **F5** (preview) while adjusting - it's faster than F6 (render)
- For 3D printing, consider scaling - default units work well at ~1:50 scale
- Increase `path_length` for longer paths
- For smoother curves, segment counts are already optimized
- Combine multiple models for complex layouts

## Customization Examples

**Small patio (straight):**
```openscad
path_width = 6;
path_length = 8;
brick_length = 40;
brick_width = 20;
```

**Winding garden path (curved):**
```openscad
curve_type = "s";
s_amplitude = 35;
s_frequency = 1.5;
path_length = 24;
path_width = 2;
```

**Widening entrance (transition):**
```openscad
start_width = 2;
end_width = 5;
transition_start = 0.2;
transition_end = 0.6;
path_length = 20;
```

## Technical Details

- All models use proper OpenSCAD geometry operations
- Curved edges use hull() for smooth transitions
- Brick clipping uses intersection() for clean cuts
- Running bond pattern maintained throughout all variations
- Modular code structure for easy customization

## Requirements

- OpenSCAD 2021.01 or later recommended
- No external libraries required

## Contributing

Feel free to fork, modify, and improve these models. Suggestions and improvements welcome!

## License

These models are provided free to use and modify for any purpose.

## Gallery

*Consider adding screenshots of your rendered models here*

## Credits

Created for parametric brick pavement modeling. Developed through iterative design and testing.

---

**Note:** All measurements in the models are in arbitrary OpenSCAD units. Scale as needed for your specific use case.
