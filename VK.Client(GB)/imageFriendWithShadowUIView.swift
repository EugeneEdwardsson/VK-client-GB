//
//  imageFriendWithShadowUIView.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 30.05.2022.
//

import UIKit

class imageFriendWithShadowUIView: UIView {

    
    
    @IBOutlet weak var imageFriends: UIImageView!
    @IBOutlet weak var shadowFriends: UIView!
    
    
    var shadowColor = UIColor.black
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowFriends.layer.shadowColor = shadowColor.cgColor
        shadowFriends.layer.shadowOffset = .zero
        shadowFriends.layer.shadowRadius = 12
        shadowFriends.layer.shadowOpacity = 0.20
        
        
    }
    
    
    override func layoutSubviews() {
        imageFriends.layer.cornerRadius = bounds.height/2
        shadowFriends.layer.cornerRadius = bounds.height/2
    }
    
    
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
