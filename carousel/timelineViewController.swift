//
//  timelineViewController.swift
//  carousel
//
//  Created by Shannan Hsiao on 10/1/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class timelineViewController: UIViewController {

    @IBOutlet weak var timelineScrollView: UIScrollView!
    @IBOutlet weak var feedView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timelineScrollView.contentSize = CGSize(width: 375, height: 2006)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
