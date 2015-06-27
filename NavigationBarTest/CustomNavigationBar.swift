//
//  CustomNavigationBar.swift
//  NavigationBarTest
//
//  Created by venkat on 6/27/15.
//  Copyright (c) 2015 Southwest. All rights reserved.
//

import UIKit


private let ProgressBarHeight: CGFloat = 60

class CustomNavigationBar: UINavigationBar {
    var someView: UIView!
    
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    //    override func drawRect(rect: CGRect) {
    //    // Drawing code
    //
    //        super.drawRect(rect)
    //    }
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initalize()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initalize()
    }
    
    func initalize() {
        
        self.someView = UIView(frame: CGRectMake(0,0, self.frame.size.width, ProgressBarHeight))
        self.someView.backgroundColor = UIColor.purpleColor()
        self.someView.userInteractionEnabled = false
        
        self.addSubview(self.someView)
        
        var value: CGFloat = ProgressBarHeight * -1.0
        
        let transitionOptions = UIViewAnimationOptions.CurveLinear
        
        UIView.animateWithDuration(1.25, animations: { () -> Void in
            self.transform = CGAffineTransformMakeTranslation(0, value)
        })
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var classNamesToReposition = ["_UINavigationBarBackground"]
        
        for view in self.subviews as! [UIView]{
            let typeLongName = NSStringFromClass(view.dynamicType)
            if contains(classNamesToReposition, typeLongName) {
                var bounds = self.bounds
                var frame = view.frame
                frame.origin.y = bounds.origin.y
                frame.size.height = bounds.size.height + ProgressBarHeight
                //                frame.origin.y = -20
                //                frame.size.height = 64
                view.frame = frame
            }
        }
        //
        var viewSize = self.someView.sizeThatFits(CGSizeMake(self.bounds.size.width, 0))
        if viewSize != CGRectZero.size {
            self.someView.frame = CGRectMake(0, 44 + ProgressBarHeight, self.frame.size.width, ProgressBarHeight)
        }
                self.setTitleVerticalPositionAdjustment(0, forBarMetrics: .Default)
        
        
    }
    
    override func sizeThatFits(size: CGSize) -> CGSize {
        var navigationBarSize = super.sizeThatFits(size)
        
        navigationBarSize = CGSizeMake(navigationBarSize.width, 44 + ProgressBarHeight)
        
//        if self.someView.frame != CGRectZero {
//            var buttonSize = self.someView.sizeThatFits(CGSizeMake(size.width, 0))
//            navigationBarSize.height += buttonSize.height
//        } else {
//            navigationBarSize.height += 10
//        }
        
        return navigationBarSize
    }
    
//    func transformLayer(){
//        self.transform = CGAffineTransformMakeTranslation(0, -30.0)
//    }
    
//    func test(button: UIView) {
//        self.someView.removeFromSuperview()
//        
////        HeightIncrease = 30
//        self.someView = button
//        self.addSubview(self.someView)
//        
//        UIView.animateWithDuration(0.25, animations: { () -> Void in
//            self.transformLayer()
//        })
//        
//        self.invalidateIntrinsicContentSize()
//        self.layoutSubviews()
//        self.setNeedsLayout()
//        
//    }
//    
//    func reset() {
//        //        self.transformLayer()
//        
//        
//        self.someView.removeFromSuperview()
//        self.someView = UIView(frame: CGRectZero)
//        self.sizeToFit()
//        self.setNeedsLayout()
//        self.layoutSubviews()
//        
//        //        self.transform = CGAffineTransformMakeTranslation(0, -10)
//        //        self.transform = CGAffineTransformIdentity
//        //        self.invalidateIntrinsicContentSize()
//        
//        
//    }
    
}
