//
//  LikePhotoControl.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 30.05.2022.
//

import UIKit

class LikePhotoControl: UIControl {
    
    
    @IBOutlet var likeImage: UIImageView!
    var isLiked: Bool = false
    
    
    
    override func awakeFromNib() {
        
        likeImage.backgroundColor = .clear
        likeImage.tintColor = .red
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
