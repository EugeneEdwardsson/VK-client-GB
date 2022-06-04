//
//  PhotosCollectionViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 19.05.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
      
    
    @IBOutlet weak var photosFriend: UIImageView!
    
    
    @IBOutlet var likeControl: LikePhotoControl!
    @IBOutlet var containerView: UIView!
    
    override func awakeFromNib() {
        let tapLike = UITapGestureRecognizer(target: self, action: #selector(handlerTap(_:)))
        tapLike.numberOfTapsRequired = 2
        //containerView.addGestureRecognizer(tapLike)
        
    }
    
    @objc func handlerTap(_: UITapGestureRecognizer){
        
        likeControl.isLiked.toggle()
        
        if likeControl.isLiked {
            
            //likeControl.likeImage.image = UIImageView(systemName: "person.fill")
        }
    }
}
