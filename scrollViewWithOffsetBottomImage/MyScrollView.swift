import UIKit

class MyScrollView: UIView {
    
    //set up content insets for bottom tool bar
    //set up content insets for navigation bar
    
    //when moving move the scrollbar insets to make the animation look cool
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        //save the new touch so we can calculate a new y off set for the drawing and the scrollbar offsets
    }
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        // update the y offset of the touch
    }
    override func touchesCancelled(touches: NSSet!, withEvent event: UIEvent!) {
        //set the scrollbar insets back to the content insets, 
    }
}