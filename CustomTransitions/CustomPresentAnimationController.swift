//
//  CustomPresentAnimationController.swift
//  CustomTransitions
//
//  Created by 三斗 on 5/12/16.
//  Copyright © 2016 Appcoda. All rights reserved.
//

import UIKit

class CustomPresentAnimationController: NSObject,UIViewControllerAnimatedTransitioning{
  func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
    return 1
  }
  
  func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
    let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey)!
    let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)!
    let finalFrameForVc = transitionContext.finalFrameForViewController(toViewController)
    let containerView = transitionContext.containerView()
    let bounds = UIScreen.mainScreen().bounds
    toViewController.view.frame = CGRectOffset(finalFrameForVc, 0, bounds.size.height)
    containerView?.addSubview(toViewController.view)
    
    UIView.animateWithDuration(transitionDuration(transitionContext), delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .CurveLinear, animations: {
      fromViewController.view.alpha = 0.5
      toViewController.view.frame = finalFrameForVc
      }) { (finished) in
        transitionContext.completeTransition(true)
        fromViewController.view.alpha = 1
    }
  }
}
