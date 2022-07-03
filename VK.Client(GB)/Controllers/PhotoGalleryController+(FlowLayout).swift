//
//  PhotoGalleryController+(FlowLayout).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit



extension PhotoGalleryViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionViewWidth = collectionView.bounds.width
        let oneSpace = CGFloat(10)
        let lineCount = CGFloat(2)
        let cellWidth = collectionViewWidth / lineCount - oneSpace
        return CGSize(width: cellWidth, height: cellWidth)
    }
    
}
