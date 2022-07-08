//
//  FuncBarUIView.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 07.07.2022.
//

import UIKit

@IBDesignable class FuncBarView: UIView {

    
    
    private var view: UIView?
    
    override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
     }
    
    required init?(coder: NSCoder) {
         super.init(coder: coder)
        setup()
    }
    
    
     private func loadFromNib() -> UIView {
     let bundle = Bundle(for: type(of: self))
      let nib = UINib(nibName: "FuncBarView", bundle: bundle)
      guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
        return view
     }
    
    
      private func setup() {
        view = loadFromNib()
        guard let view = view else {return}
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        addSubview(view)
     }
 
    
}

