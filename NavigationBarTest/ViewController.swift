//
//  ViewController.swift
//  NavigationBarTest
//
//  Created by venkat on 6/27/15.
//  Copyright (c) 2015 Southwest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
//    override func viewWillAppear(animated: Bool) {
//        var navController = self.navigationController as! MyNavigationController
//        navController.myLabel.text = "should work..."
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func unwindToMainMenu(sender: UIStoryboardSegue) {
    
    }
    
    override func segueForUnwindingToViewController(toViewController: UIViewController, fromViewController: UIViewController, identifier: String?) -> UIStoryboardSegue {
        let segue = CustomUnwindSegue(identifier: identifier, source: fromViewController, destination: toViewController)
        segue.animationType = .Push
        return segue
    }

}

