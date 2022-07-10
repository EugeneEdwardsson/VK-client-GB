//
//  FuncBarUIView.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 07.07.2022.
//

import UIKit

@IBDesignable class FuncBarView: UIView {

    
    
    private var view: UIView?
    
    @IBOutlet weak var viewButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    
        
        
    
        
    
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
         shareButton.setImage(UIImage(systemName: "arrowshape.turn.up.right"), for: .normal)
         viewButton.setImage(UIImage(systemName: "eye"), for: .normal)
         messageButton.setImage(UIImage(systemName: "text.bubble"), for: .normal)
         likeButton.setImage(UIImage(systemName: "hand.thumbsup"), for: .normal)
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

