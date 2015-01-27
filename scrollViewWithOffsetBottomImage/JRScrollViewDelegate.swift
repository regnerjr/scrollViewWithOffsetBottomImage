import UIKit

class JRScrollViewDelegate: NSObject, UIScrollViewDelegate {
    
    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        println("did end dragging, with decelerate: \(decelerate)")
        if decelerate == false{
            if scrollView.contentOffset == CGPoint(x: 0, y: 100) {
                scrollView.setContentOffset(CGPoint(x: 0, y: 100), animated: true)
            } else {
                scrollView.setContentOffset(CGPointZero, animated: true)
            }
        }
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        println("Did end Decelerating")
        if scrollView.contentOffset != CGPoint(x: 0, y: 100) {
            scrollView.setContentOffset(CGPointZero, animated: true)
        }
    }
    
}
