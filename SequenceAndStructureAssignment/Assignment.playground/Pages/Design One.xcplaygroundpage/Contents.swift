/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 1

// No borders on shapes
canvas.drawShapesWithBorders = false

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Generate a random number to help with shape selection
        var shapeSelector = random(from: 0, toButNotIncluding: 2)
        
        // Generate a random number to decide whether to create appearance of "sinking" or "rising" by changing brightness of fill
        var depthSelector = random(from: 0, toButNotIncluding: 2)
        
        // Loop five times to create shapes with decreasing size
        for size in stride(from: 50, through: 10, by: -10) {
            
            // Set fill to create appearance of "sinking" or "rising"
            if depthSelector == 0 {
                canvas.fillColor = Color(hue: 240, saturation: 40, brightness: 80 - size, alpha: 100)
            } else {
                canvas.fillColor = Color(hue: 240, saturation: 40, brightness: 30 + size, alpha: 100)
            }
            
            // Depending on random number, draw squares or circles
            if shapeSelector == 0 {
                
                canvas.drawRectangle(centreX: x, centreY: y, width: size, height: size)
                
            } else {
                
                canvas.drawEllipse(centreX: x, centreY: y, width: size, height: size)
                
            }
            
        }
        
        
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
