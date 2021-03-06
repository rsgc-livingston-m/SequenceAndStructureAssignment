/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Two
 
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

// Generating a grid
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 1
canvas.drawShapesWithBorders = false

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        // This loop makes the colors random
        let hue = random(from: 0, toButNotIncluding: 360)
       
        // Draw the circles 10 by 10
        canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25)
        canvas.fillColor = Color(hue: hue, saturation: 80, brightness: 100, alpha: 100)
        
        
    // If statement regarding whether to draw rectangles or not based on the hue of a circle.
       
        if hue > 180 {
        canvas.drawRectangle(bottomLeftX: y, bottomLeftY: x, width: 10, height: 50)
        canvas.drawRectangle(bottomLeftX: x, bottomLeftY: y, width: 50, height: 10)
            }
    // Putting an else statement showing mini-circles inside of the circles with a hue above 180
         else { canvas.drawEllipse(centreX: y, centreY: x, width: 15, height: 15) }
        
        
        }
}
    





/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
