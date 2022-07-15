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
    

    
    
    func roundAnimate() {
        
      UIView.animate(withDuration: 2) {[weak self] in
      self?.firstIndicatorView.alpha = 0
      self?.secondIndicatorView.alpha = 1
  } completion: { _ in
      UIView.animate(withDuration: 2) {[weak self] in
      self?.secondIndicatorView.alpha = 0
      self?.thirdIndicatorView.alpha = 1
  } completion: { _ in
      UIView.animate(withDuration: 2) {[weak self] in
      self?.thirdIndicatorView.alpha = 0
      self?.firstIndicatorView.alpha = 1
  } completion: { _ in
      
     
     }
      
   }
 
}
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstIndicatorView.alpha = 1
        secondIndicatorView.alpha = 0
        thirdIndicatorView.alpha = 0
        
        roundAnimate()

}
            
   
        
}

