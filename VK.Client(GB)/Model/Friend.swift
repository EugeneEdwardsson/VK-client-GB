//
//  Friend.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 19.05.2022.
//


import UIKit



class Friend {
    
    var name: String
    var image: UIImage?
    var photos: UIImage?
    
    init(nameFriend: String, imageFriend: UIImage? = nil, photosFriend: UIImage? = nil) {
        
        self.name = nameFriend
        self.image = imageFriend
        self.photos = photosFriend
        
    }
}
