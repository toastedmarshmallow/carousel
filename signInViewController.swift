//
//  signInViewController.swift
//  carousel
//
//  Created by Shannan Hsiao on 9/30/16.
//  Copyright © 2016 Shannan Hsiao. All rights reserved.
//

import UIKit

class signInViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    //Buttons and Fields
    @IBOutlet weak var backUIButton: UIButton!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var spinner:UIActivityIndicatorView!
    
    
    //View Outlets
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    
    var initialY: CGFloat!
    var buttonInitialY: CGFloat!
    var scrollViewInitialY: CGFloat!
    var offset: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialY = fieldParentView.frame.origin.y
        buttonInitialY = buttonParentView.frame.origin.y
        scrollViewInitialY = scrollView.frame.origin.y
        offset = -100
        
        self.navigationItem.title = "Sign In to Dropbox"
        
        scrollView.delegate = self
        
        // Set the scroll view content size
        scrollView.contentSize = scrollView.frame.size
        
        // Set the content insets
        scrollView.contentInset.bottom = 100

        // when keyboard is about to display
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
                        
            self.buttonParentView.frame.origin.y = self.buttonInitialY + self.offset
            
            // Scroll the scrollview up
            self.scrollView.contentOffset.y = self.scrollView.contentInset.bottom
        }
        
        // when keyboard is about to hide
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            
             self.scrollView.contentOffset.y = self.initialY
            
            self.fieldParentView.frame.origin.y = self.initialY
            
            self.buttonParentView.frame.origin.y = self.buttonInitialY
        }
        
        //End observers for keyboard
        
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
    @IBAction func didTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func didPress(_ sender: AnyObject) {
        
        self.checkPass()
        
    }
    
    func checkPass(){
        
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty{
            
            //display an error
            let alertController = UIAlertController(title: "oops", message: "Please type in your email and password", preferredStyle: .alert)
            
            present(alertController, animated: true, completion: nil)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            //self.performSegue(withIdentifier: "firstSegue", sender: nil)
            
        }else if self.emailField.text == "zoma@any.com" && self.passwordField.text == "password"{
                
                self.spinner.startAnimating()
                delay(2){
                    self.spinner.stopAnimating()
                    //segue
                }
                performSegue(withIdentifier: "showTutorialSegue", sender: nil)
            }
        else{
            //display an error
            let alertController = UIAlertController(title: "Invalid email or password", message: "Please type in a valid email or password", preferredStyle: .alert)
            
            self.present(alertController, animated: true, completion: nil)
            
            // create an OK action
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // handle response here.
            }
            // add the OK action to the alert controller
            alertController.addAction(OKAction)
            
            }

            
            
        }
    
    @IBAction func onPress(_ sender: AnyObject) {
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


