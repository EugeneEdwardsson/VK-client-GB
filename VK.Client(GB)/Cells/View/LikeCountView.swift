//
//  LikeCountView.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 05.07.2022.
//

import UIKit



    protocol LikeCountProtocol: AnyObject {
        func likeCountIncrement(count: Int)
        func likeCountDecrement(count: Int)
    }






    @IBDesignable class LikeCountView: UIView {

        @IBOutlet weak var likeButton: UIButton!
        @IBOutlet weak var likeCountLabel: UILabel!
        
        var likeState = false
        @IBInspectable var count: Int = 0

        
        weak var delegate: LikeCountProtocol?
        
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
            let nib = UINib(nibName: "LikeCountView", bundle: bundle)
            guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else {return UIView()}
            return view
        }
        
        
        private func setup() {
            view = loadFromNib()
            guard let view = view else {return}
            view.frame = bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            likeCountLabel.text = String(count)
            addSubview(view)
        }
     

        
        @IBAction func pressLikeButton(_ sender: Any) {
            guard let button = sender as? UIButton else {return}
            if likeState {
                button.setImage(UIImage(systemName: "heart"), for: .normal)
                count -= 1
                likeCountLabel.text = String(count)
                delegate?.likeCountDecrement(count: count)
            }
            else {
                button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                count += 1
                likeCountLabel.text = String(count)
                delegate?.likeCountIncrement(count: count)
            }
            likeState = !likeState
        }
        
        
    }



