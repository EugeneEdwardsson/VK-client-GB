//
//  InterfaceBuilder(extension).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 04.07.2022.
//

import UIKit


extension UIView {

  
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue  }

    }
    
    @IBInspectable var borderWidth: CGFloat {
        get { return layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue  }
    }
   
    @IBInspectable var shadowOpacity: Float {
        set { layer.shadowOpacity = newValue }
        get { return layer.shadowOpacity }
    }
   
    @IBInspectable var shadowRadius: CGFloat {
        set {  layer.shadowRadius = newValue }
        get { return layer.shadowRadius }
    }
   
    @IBInspectable var _clipsToBounds: Bool {
        get { return clipsToBounds }
        set { clipsToBounds = newValue }
    }
}
