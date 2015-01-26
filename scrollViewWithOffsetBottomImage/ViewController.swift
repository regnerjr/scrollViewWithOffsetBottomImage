import UIKit

class ViewController: UIViewController {

    lazy var screenHeight = UIScreen.mainScreen().bounds.height
    lazy var screenWidth = UIScreen.mainScreen().bounds.width
    
    var scrollView: UIScrollView!

    override func loadView() {
        
        println("Load View")
        //make brown scroll view 2 times as tall as the screen
        let scrollViewRect = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        let scrollView = UIScrollView(frame: scrollViewRect)
        scrollView.contentSize = CGSize(width: screenWidth, height: screenHeight)
        scrollView.backgroundColor = UIColor.brownColor()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.decelerationRate = UIScrollViewDecelerationRateFast
        scrollView.bounces = false
        scrollView.delegate = self
        self.scrollView = scrollView
        view = scrollView
    }
    
    override func viewDidLoad() {
        println("Entered View Did Load")
        //set animationFrame y offset to be bottom section of scroll view
        let animationViewFrame = CGRect(x: 0, y: scrollView.contentSize.height, width: screenWidth, height: 100)
    
        let animationView = UIView(frame: animationViewFrame)
        animationView.backgroundColor = UIColor.blueColor()

        println("about to add subviews")
        scrollView.addSubview(animationView)
        scrollView.contentInset.bottom = 100
        
        println("Finished Setting up scroll view")
        
        //add a button to be in the middle of the bottom drawer.
        let button = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 40))
        button.setTitle("Button", forState: .Normal)
        animationView.addSubview(button)
        
    }
 
}

extension ViewController: UIScrollViewDelegate {

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