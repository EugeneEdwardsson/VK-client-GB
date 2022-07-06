//
//  PhotoGalleryViewController+(UICollectionViewDelegate,UICollectionViewDataSource).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit


extension PhotoGalleryViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifierPhotoGalleryCell, for: indexPath) as? PhotoGalleryCollectionViewCell else {return UICollectionViewCell()}
        
        cell.configure(image: self.photos[indexPath.item])
        
        return cell
    }
    
    
    
    
    
}
