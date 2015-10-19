//
//  signInViewController.swift
//  CarouselExercise
//
//  Created by Anna Smalley on 10/18/15.
//  Copyright © 2015 Anna Smalley. All rights reserved.
//

import UIKit

class signInViewController: UIViewController {

    var initialY: CGFloat!
    let offset: CGFloat = -50
    
     let emptyFieldAlertController = UIAlertController(title: "Oops - forget something?", message: "Please enter your email address and password", preferredStyle: .Alert)
    
     let incorrectCredentialsAlertController = UIAlertController(title: "Oops - try again", message: "Incorrect email or password", preferredStyle: .Alert)
    
    let OKAction = UIAlertAction(title: "OK", style: .Default) { (hide) in  // handle response here.}
        
        
      
    //optional code here
    
}
    

    @IBOutlet weak var signInContent: UIView!
    
    @IBOutlet weak var signInScrollView: UIScrollView!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
   
    @IBOutlet weak var bothSignInButtons: UIImageView!

    @IBOutlet weak var realBothSignInButtons: UIView!
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        signInScrollView.contentSize = CGSize(width: 320, height: 568)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        
        signInScrollView.contentOffset.y = 95
        
        realBothSignInButtons.transform = CGAffineTransformMakeTranslation( 0, -160)
        
       
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
 
    
    
    @IBAction func didPressSignIn(sender: AnyObject) {
        
    
        if emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty {
            
            self.emptyFieldAlertController.addAction(self.OKAction)
            presentViewController(emptyFieldAlertController, animated: true){
                

            
            }
            
            
        }
      
        //var email = emailTextField.text
        //var password = passwordTextField.text
        
        if (emailTextField.text != "a" || passwordTextField.text != "b") {
            print ("incorrect something")
            
            self.incorrectCredentialsAlertController.addAction(self.OKAction)
            presentViewController(incorrectCredentialsAlertController, animated: true){
                
                
                
            }

        }
        
        else {
            
        print ("both correct")
        
        performSegueWithIdentifier("loginSegue", sender: nil)
        }
        //&& passwordTextField.text = "password"
    }
    
    
 
    
    
    //print ("oops")
        //presentViewController(emptyFieldAlertController, animated: true)
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    }
