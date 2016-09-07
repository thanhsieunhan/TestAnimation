//
//  MasterTBVC.swift
//  TestAnimation
//
//  Created by Le Ha Thanh on 9/7/16.
//  Copyright © 2016 le ha thanh. All rights reserved.
//

import UIKit

class MasterTBVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    let animationList = ["slideLeft","slideRight","slideDown","slideUp","squeezeLeft","squeezeRight","squeezeDown","squeezeUp","fadeIn","fadeOut","fadeOutIn","fadeInLeft","fadeInRight","fadeInDown","fadeInUp","zoomIn","zoomOut","fall","shake","pop","flipX","flipY","morph","squeeze","flash","wobble","swing"]
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animationList.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as? CustomCell
        cell?.nameAnimation.text = "\(indexPath.row+1). \(animationList[indexPath.row])"
        return cell!
    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        
        let v2 = self.storyboard?.instantiateViewControllerWithIdentifier("Detail") as! DetailVC
        self.navigationController?.pushViewController(v2, animated: true)
        v2.nameAnimate = animationList[indexPath.row]
        v2.animationList = animationList
        
    }
}
