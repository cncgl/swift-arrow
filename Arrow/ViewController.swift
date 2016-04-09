//
//  ViewController.swift
//  Arrow
//
//  Created by Shigeru on 2016/04/06.
//  Copyright © 2016年 concigel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let touchButton = UIButton()
        touchButton.frame = CGRectMake(0, 0, 200, 80)
        touchButton.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
        touchButton.setTitle("Touch", forState: .Normal)
        touchButton.addTarget(self, action: #selector(ViewController.showArrow), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(touchButton)
        
        touchButton.translatesAutoresizingMaskIntoConstraints = false
        let constraintX = NSLayoutConstraint(
            item: touchButton,
            attribute: NSLayoutAttribute.CenterX,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterX,
            multiplier: 1,
            constant: 0
        )
        let constraintY = NSLayoutConstraint(
            item: touchButton,
            attribute: NSLayoutAttribute.CenterY,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.CenterY,
            multiplier: 1,
            constant: 0
        )
        self.view.addConstraint(constraintX)
        self.view.addConstraint(constraintY)
    }
    
    func showArrow(sender: AnyObject) {
        // 矢印のページに遷移
        let nextVC = self.storyboard?.instantiateViewControllerWithIdentifier("arrowPage")
        nextVC?.modalTransitionStyle = .FlipHorizontal
        presentViewController(nextVC!, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

