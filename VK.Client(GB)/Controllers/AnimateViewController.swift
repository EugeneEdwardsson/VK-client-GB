//
//  AnimateViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 13.07.2022.
//

import UIKit

class AnimateViewController: UIViewController {
    
    
    @IBOutlet weak var firstIndicatorView: UIView!
    @IBOutlet weak var secondIndicatorView: UIView!
    @IBOutlet weak var thirdIndicatorView: UIView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    

    
    
    func roundAnimate(exitafter: Int, currentCount: Int) {
        
      
        
      UIView.animate(withDuration: 1) {[weak self] in
      self?.firstIndicatorView.alpha = 0
      self?.secondIndicatorView.alpha = 1
  } completion: { _ in
      UIView.animate(withDuration: 1) {[weak self] in
      self?.secondIndicatorView.alpha = 0
      self?.thirdIndicatorView.alpha = 1
  } completion: { _ in
      UIView.animate(withDuration: 1) {[weak self] in
      self?.thirdIndicatorView.alpha = 0
      self?.firstIndicatorView.alpha = 1
      } completion: { [weak self] _ in
          if currentCount < exitafter {
              self?.roundAnimate(exitafter: exitafter, currentCount: currentCount + 1)
              
        }
          else {
              self?.firstIndicatorView.alpha = 0
            }
         
         }
      
      }
 
   }
    
}
    
    
    func roundAnimateKeyFrame(exitafter: Int, currentCount: Int) {
        UIView.animateKeyframes(withDuration: 3,
                                delay: 0,
                                options: []) {
            
            UIView.addKeyframe(withRelativeStartTime: 0,
                               relativeDuration: 0.333333333) { [weak self] in
                self?.firstIndicatorView.alpha = 0
                self?.secondIndicatorView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.333333333,
                               relativeDuration: 0.333333333) { [weak self] in
                self?.secondIndicatorView.alpha = 0
                self?.thirdIndicatorView.alpha = 1
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.66666666,
                               relativeDuration: 0.333333334) { [weak self] in
                self?.thirdIndicatorView.alpha = 0
                self?.firstIndicatorView.alpha = 1
            }
            
            
        } completion: { [weak self] _ in
            if currentCount < exitafter {
                self?.roundAnimateKeyFrame(exitafter: exitafter, currentCount: currentCount + 1)
          }
            else {
                self?.firstIndicatorView.alpha = 0
              }
           
           }

        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstIndicatorView.alpha = 1
        secondIndicatorView.alpha = 0
        thirdIndicatorView.alpha = 0
        
        roundAnimateKeyFrame(exitafter: 3, currentCount: 0)

   }
            
   
        
}

