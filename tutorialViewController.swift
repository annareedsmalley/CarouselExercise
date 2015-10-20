//
//  tutorialViewController.swift
//  CarouselExercise
//
//  Created by Anna Smalley on 10/19/15.
//  Copyright © 2015 Anna Smalley. All rights reserved.
//

import UIKit

class tutorialViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var tutorialPageControl: UIPageControl!
    
    
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

         tutorialScrollView.contentSize = CGSize(width:1280, height: 495)
        
        tutorialScrollView.delegate = self
        
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        tutorialPageControl.currentPage = page
    }
    
    
    //func scrollViewDidEndDecelerating(tutorialScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        //var page : Int = Int(round(tutorialScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        //pageControl.currentPage = page
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
