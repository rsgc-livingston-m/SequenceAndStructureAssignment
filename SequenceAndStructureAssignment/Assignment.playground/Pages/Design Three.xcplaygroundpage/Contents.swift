/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
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
// Makes centre point in canvas

// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    for y in stride(from: 0, to: 500, by: 500){
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
        // Draw the square colours
    // this will make an ecclipse in the corners as planned
    canvas.drawEllipse(centreX: y, centreY: y, width: 250, height: 250)
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        // Get the colour for each box
        let hue = random(from: 0, toButNotIncluding: 360)
         canvas.fillColor = Color(hue: hue, saturation: 80, brightness: 100, alpha: 100)
        
        if hue > 120 {
           
        canvas.fillcolor
            
        } else {
            
        }

        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
        // Draw the square colours
       
       
        }

       

    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
