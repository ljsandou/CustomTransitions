//
//  ViewController.swift
//  CustomTransitions
//
//  Created by 三斗 on 5/12/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var square: UIView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
  override func viewWillAppear(animated: Bool) {
    setAnimate()
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func setAnimate(){
    square.layer.setAffineTransform(CGAffineTransformMakeScale(0.1, 0.1))
    UIView.animateWithDuration(1, animations: {
      self.square.layer.anchorPoint = CGPointMake(0, 1)
      self.square.layer.setAffineTransform(CGAffineTransformMakeRotation(90))
      }) { (finished) in
      UIView.animateWithDuration(2, animations: {
        self.square.layer.setAffineTransform(CGAffineTransformIdentity)
      })
    }
  
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
