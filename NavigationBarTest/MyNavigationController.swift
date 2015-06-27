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
    var myLabel: UILabel!
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myLabel = UILabel(frame: CGRectMake(0,0, 200,100))
        myLabel.text = "Hello World"
        myLabel.hidden = true
        self.view.addSubview(myLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showProgressBar() {
        self.setValue(myNavBar, forKey: "navigationBar")
    }
    
    func hideProgressBar() {
        self.setValue(defaultNavBar, forKey: "navigationBar")

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
