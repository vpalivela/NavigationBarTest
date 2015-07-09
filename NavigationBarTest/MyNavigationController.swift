//
//  MyNavigationController.swift
//  NavigationBarTest
//
//  Created by venkat on 6/27/15.
//  Copyright (c) 2015 Southwest. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {

    var myNavBar = CustomNavigationBar()
    var defaultNavBar = UINavigationBar()
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.setValue(myNavBar, forKey: "navigationBar")
//        self.myNavBar.setNeedsDisplay()
//        self.view.setNeedsDisplay()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showProgressBar() {
        self.setValue(myNavBar, forKey: "navigationBar")
        self.view.setNeedsDisplay()
    }
    
    func hideProgressBar() {
        self.setValue(defaultNavBar, forKey: "navigationBar")
        self.view.setNeedsDisplay()
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
