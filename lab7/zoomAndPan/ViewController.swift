//
//  ViewController.swift
//  zoomAndPan
/*
 Using a UIScrollView, allow the user to zoom and pan on an image (you choose the image and assign the image to a UIImageView inside of the UIScrollView)
    - add a button "Zoom In" that changes the zoomScale of an image by .5
    - add a button "Zoom Out" that changes the zoomScale of an image by -.5
    - add a button "Reset" that changes the zoomScale to 1.0
    - the min zoomScale should be set to 1.0 and the max zoomScale should be set to 4.0. When the user hits the min or max zoomScale, you should disable/enable the corresponding buttons
    - your 3 buttons should be anchored to the top and left of the screen with a margin of 40
    - your 3 buttons should be layered on top of your image
 */
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func zoomClicked(_ sender: UIButton) {
        if (sender.currentTitle == "+") {
            scrollView.zoomScale = scrollView.zoomScale + 0.5
        } else {
            scrollView.setZoomScale((scrollView.zoomScale - 0.5), animated: false)
        }
    }
    
    @IBAction func resetClicked(_ sender: UIButton) {
        scrollView.zoomScale = 1
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 4
//        scrollView
        
        imageView.image = UIImage(named: "jaire")
    }
}
