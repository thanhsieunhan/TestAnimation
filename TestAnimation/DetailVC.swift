//
//  DetailVC.swift
//  TestAnimation
//
//  Created by Le Ha Thanh on 9/7/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit


class DetailVC: UIViewController {

    @IBOutlet weak var viewAnimation: SpringView!
    
    @IBOutlet weak var delayTV: UITextField!
    
    @IBOutlet weak var forceTV: UITextField!
    
    @IBOutlet weak var durationTV: UITextField!
    
    @IBOutlet weak var dampingTV: UITextField!
    
    @IBOutlet weak var velocityTV: UITextField!
    var animationList = [String]()
    var index : Int?
    var nameAnimate : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        title = nameAnimate
        index = animationList.indexOf(nameAnimate!)
    }
    
    @IBAction func action(sender: AnyObject) {
        viewAnimation.animation = animationList[index!]
        viewAnimation.delay = CGFloat(Float(delayTV.text!)!)
        viewAnimation.force = CGFloat(Float(forceTV.text!)!)
        viewAnimation.duration = CGFloat(Float(durationTV.text!)!)
        viewAnimation.damping = CGFloat(Float(dampingTV.text!)!)
        viewAnimation.velocity = CGFloat(Float(velocityTV.text!)!)
//        viewAnimation.repeatCount = 10.0
        viewAnimation.animate()
        
    }
    @IBAction func nextAction(sender: AnyObject) {
        
        if index < animationList.count-1 {
        index = index! + 1
        } else {
            index = 0
        }
        
        nameAnimate = animationList[index!]
        title = nameAnimate
        
    }
    @IBAction func prevAction(sender: AnyObject) {
        if index > 0 {
            index = index! - 1
        } else {
            index = animationList.count - 1
        }
        
        nameAnimate = animationList[index!]
        title = nameAnimate
    }
}
