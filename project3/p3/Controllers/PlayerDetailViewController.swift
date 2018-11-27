//
//  PlayerDetailViewController.swift
//  iOSProject3
//
//  Created by Aaron Goldbin on 11/20/18.
//  Copyright © 2018 bryan witkowski. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController, UIScrollViewDelegate {
    var playerDetails: Player?
    
    @IBOutlet weak var playerNameLbl: UILabel!
    @IBOutlet weak var playerInfoLbl: UILabel!
    @IBOutlet weak var playerImg: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func zoomClicked(_ sender: UIButton) {
        if (sender.currentTitle == "+") {
            scrollView.zoomScale = scrollView.zoomScale + 0.5
        } else {
            scrollView.setZoomScale((scrollView.zoomScale - 0.5), animated: false)
        }
    }
    
    @IBAction func resetZoom(_ sender: UIButton) {
        scrollView.zoomScale = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 4
        
        playerNameLbl.text = playerDetails?.Name
        playerImg.image = UIImage(named: imageFileName(playerName: (playerDetails?.Name)!))
        let playerDets = "#\(playerDetails!.Number)\nDOB: \(playerDetails!.DOB)\nHeight: \(playerDetails!.Ht)\nWeight: \(playerDetails!.Wt)"
        playerInfoLbl.text = playerDets
    }
 
    // function to enable scrolling and zooming
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return playerImg
    }
    
    // function to get the filename of image to be searched for
    func imageFileName(playerName: String) -> String {
        let first = playerName.prefix(1)
        let c = playerName.characters
        if let space = c.index(of: " ") {

            print(first + String(playerName[c.index(after: space)..<playerName.endIndex]))
            return (first + String(playerName[c.index(after: space)..<playerName.endIndex]))
        }
        return ""
    }

}
