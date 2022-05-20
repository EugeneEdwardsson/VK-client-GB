//
//  Friend.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 19.05.2022.
//


import UIKit



class Friend {
    
    var image: UIImage?
    var name: String
    var photos: UIImage?
    
    init(imageFriend: UIImage? = nil, nameFriend: String, photosFriend: UIImage? = nil) {
        
        
        self.image = imageFriend
        self.name = nameFriend
        self.photos = photosFriend
        
    }
}
