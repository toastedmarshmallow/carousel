//
//  tutorialViewController.swift
//  carousel
//
//  Created by Shannan Hsiao on 10/1/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class tutorialViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var tutorialScroll: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var spinButton: UIView!
    @IBOutlet weak var fourthView: UIImageView!
    @IBOutlet weak var backup_button: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tutorialScroll.contentSize = CGSize(width: 1500, height: 667)
        
        tutorialScroll.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.bounds.width)
        
       // print(pageControl.currentPage)
        
//        if Int(pageControl.currentPage) == 3 {
//            // Fade in
//            
//            UIView.animate(withDuration: 0.5, animations: {
//                self.backup_button.alpha = 1.0
//            })
//        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
