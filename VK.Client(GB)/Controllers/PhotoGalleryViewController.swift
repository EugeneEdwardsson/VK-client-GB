//
//  PhotoGalleryViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit

class PhotoGalleryViewController: UIViewController {
   

    @IBOutlet weak var collectionView: UICollectionView!
    
   
    
    let reuseIdentifierPhotoGalleryCell = "reuseIdentifierPhotoGalleryCell"
    
    
   
   var photos = [UIImage]()
    
   override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "PhotoGalleryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: reuseIdentifierPhotoGalleryCell)
    }
    


}




    

