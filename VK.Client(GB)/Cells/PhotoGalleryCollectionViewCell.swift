//
//  PhotoGalleryCollectionViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit

class PhotoGalleryCollectionViewCell: UICollectionViewCell {
    
    
    var likeState = false
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoView.image = nil
        likeState = false
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    
    func configure(image: UIImage){
        photoView.image = image
    }
    
    
    @IBAction func pressLikeButton(_ sender: Any) {
        
        guard let button = sender as? UIButton else {return}
        
        if likeState {
            button.setImage(UIImage(systemName: "heart"), for: .normal)
        }else {
            button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        likeState = !likeState
    }
    
    
    
    
    
}
