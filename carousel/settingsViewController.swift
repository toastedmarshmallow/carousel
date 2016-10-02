//
//  settingsViewController.swift
//  carousel
//
//  Created by Shannan Hsiao on 10/1/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {
    
    //variables
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    @IBOutlet weak var settingsScrollImage: UIImageView!
    @IBOutlet weak var signOutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsScrollView.contentSize = CGSize(width: 375, height: 818)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPress(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
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
