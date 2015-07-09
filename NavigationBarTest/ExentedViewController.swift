//
//  ExentedViewController.swift
//  NavigationBarTest
//
//  Created by venkat on 6/27/15.
//  Copyright (c) 2015 Southwest. All rights reserved.
//

import UIKit

class ExentedViewController: ProgressbarViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        myNavController.showProgressBar()
//        myNavController.showProgressBar()
        
    }
    
    
    override func viewWillDisappear(animated: Bool) {

        let items = self.myNavController.viewControllers.filter({ m in m as! NSObject == self})
        if items.count < 1 {
            myNavController.hideProgressBar()
        }
//        if !contains(self.myNavController.viewControllers, self) {
//        myNavController.hi
//        }
        
        super.viewWillDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clicked(sender: AnyObject) {
//        myNavController.hideProgressBar()
        self.performSegueWithIdentifier("unwindToMainMenu", sender: self)
    }
    
    @IBAction func popUpclicked(sender: AnyObject) {
        myNavController.hideProgressBar()
        self.enteredPopup = true
        self.performSegueWithIdentifier("somePopup", sender: self)
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

class ProgressbarViewController: UIViewController {
    var myNavController: MyNavigationController!
    var enteredPopup = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNavController = self.navigationController as! MyNavigationController
    }
    
    override func viewWillAppear(animated: Bool) {
        if enteredPopup {
            myNavController.view.setNeedsDisplay()
            self.enteredPopup = false
        }
        else {myNavController.showProgressBar()}
        
        
        super.viewWillAppear(animated)
    }
    
//    override func viewWillDisappear(animated: Bool) {
////        myNavController.hideProgressBar()
//        
//        super.viewWillDisappear(animated)
//    }
    
}