//
//  feedViewController.swift
//  CarouselExercise
//
//  Created by Anna Smalley on 10/19/15.
//  Copyright © 2015 Anna Smalley. All rights reserved.
//

import UIKit

class feedViewController: UIViewController {

    
    @IBOutlet weak var feedScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        feedScrollView.contentSize =
        CGSize (width: 320, height: 1564)
 

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
