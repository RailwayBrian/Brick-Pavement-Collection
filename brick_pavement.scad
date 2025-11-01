// Brick Pavement Pattern - Running Bond V1.0  November2025
// Based on UK Pavements (very loosely!)

// Parameters
brick_length = 12;      // Length of each brick
brick_width = 8;       // Width of each brick
brick_height = 1.5;       // Height/thickness of each brick
mortar_gap = .2;         // Gap between bricks (mortar joint)
path_width = 1.5;         // Number of bricks across the width
path_length = 22;       // Number of brick rows along the length
curb_width = 2.1;         // Width of the curb on each side
substrate_depth = 2.5;   // substrate depth
Rail_Depth = 1.5; // Set above 0 if you want to indent tram or rail tracks (1.5 works for me)

// Brick module with slightly textured surface
module brick() {
    color([0.3, 0.3, 0.3])  // Dark gray color
    difference() {
        cube([brick_length, brick_width, brick_height]);
        // Add subtle chamfer on top edges
        translate([-0.5, -0.5, brick_height - 0.3])
            cube([brick_length + 1, brick_width + 1, 0.5]);
    }
}

// Create the running bond pattern
module running_bond_pattern() {
    total_width = path_width * (brick_length + mortar_gap);
    
    // Use intersection to clip bricks to the path boundaries
    intersection() {
        // Create all bricks (including ones that extend beyond)
        union() {
            for (row = [0 : path_length - 1]) {
                // Alternate between offset and non-offset rows
                offset = (row % 2) * (brick_length / 2 + mortar_gap / 2);
                
                // Calculate how many bricks we need (including partial ones)
                num_bricks = path_width + 2;
                
                for (col = [0 : num_bricks - 1]) {
                    x_pos = col * (brick_length + mortar_gap) - offset;
                    y_pos = row * (brick_width + mortar_gap);
                    
                    translate([x_pos, y_pos, 0])
                        brick();
                }
            }
        }
        
        // Clipping box to trim bricks at edges
        translate([0, 0, -1])
            cube([
                total_width, 
                path_length * (brick_width + mortar_gap) + mortar_gap,
                brick_height + 2
            ]);
    }
}

// Create base/substrate (optional - represents the ground beneath allows for hieght adjustment)
module base() {
    total_width = path_width * (brick_length + mortar_gap);
    
    color([0.6, 0.5, 0.4])  // Sandy/ground color
    translate([-curb_width, -mortar_gap, -substrate_depth])
        cube([
            total_width-5 + (2 * curb_width), 
            path_length * (brick_width + mortar_gap) + mortar_gap,
            substrate_depth   ]);
    translate([-curb_width, -mortar_gap, -substrate_depth+Rail_Depth])
        cube([
            total_width + (2 * curb_width), 
            path_length * (brick_width + mortar_gap) + mortar_gap,
            substrate_depth -Rail_Depth  ]);
    
    
    
}

// Render the complete pavement
base();
running_bond_pattern();

// Add edge curbs
module curb() {
    color([0.4, 0.4, 0.4])
    cube([curb_width, path_length * (brick_width + mortar_gap), brick_height + 1]);
}

total_width = path_width * (brick_length + mortar_gap);

translate([-curb_width, 0, -1])
    curb();
    
translate([total_width, 0, -1])
    curb();
