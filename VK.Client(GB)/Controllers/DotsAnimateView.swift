//
//  DotsAnimateView.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 15.07.2022.
//

import UIKit





extension LoginViewController {
    
    
    
    
    
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
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstIndicatorView.alpha = 1
        secondIndicatorView.alpha = 0
        thirdIndicatorView.alpha = 0
        
        roundAnimate(exitafter: 10, currentCount: 0)

   }
    
    
}
