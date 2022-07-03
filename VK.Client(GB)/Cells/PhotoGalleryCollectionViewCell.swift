//
//  PhotoGalleryCollectionViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit

class PhotoGalleryCollectionViewCell: UICollectionViewCell {
    
    
    
    
    @IBOutlet weak var photoView: UIImageView!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.photoView.image = nil
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    
    func configure(image: UIImage){
        photoView.image = image
    }
    
    
    
    
    
    
    
}
