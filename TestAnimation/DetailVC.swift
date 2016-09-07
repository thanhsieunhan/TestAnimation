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
    @IBOutlet weak var nameAnimation: UILabel!
    
    @IBOutlet weak var delayTV: UITextField!
    
    @IBOutlet weak var forceTV: UITextField!
    
    @IBOutlet weak var durationTV: UITextField!
    
    @IBOutlet weak var dampingTV: UITextField!
    
    @IBOutlet weak var velocityTV: UITextField!
    
    
    var nameAnimate : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameAnimation.text = nameAnimate
        if let name = nameAnimate {
        viewAnimation.animation = name
        }
    }
    
    @IBAction func action(sender: AnyObject) {
        viewAnimation.animation = nameAnimate!

        viewAnimation.delay = CGFloat(Float(delayTV.text!)!)
        viewAnimation.force = CGFloat(Float(forceTV.text!)!)
        viewAnimation.duration = CGFloat(Float(durationTV.text!)!)
        viewAnimation.damping = CGFloat(Float(dampingTV.text!)!)
        viewAnimation.velocity = CGFloat(Float(velocityTV.text!)!)

        viewAnimation.animate()
    }
}
