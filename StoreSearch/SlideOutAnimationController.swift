//
//  SlideOutAnimationController.swift
//  StoreSearch
//
//  Created by Shehab Saqib on 07/03/2016.
//  Copyright © 2016 Shehab Saqib. All rights reserved.
//

import UIKit

class SlideOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        if let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from),
            let containerView = transitionContext.containerView {
                let duration = transitionDuration(using: transitionContext)
                
                UIView.animate(withDuration: duration, animations: {
                    fromView.center.y -= containerView.bounds.size.height
                    fromView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
                    }, completion: { finished in
                        transitionContext.completeTransition(finished)
                })
        }
        
    }
    
}
