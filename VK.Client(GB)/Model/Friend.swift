//
//  Friend.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 19.05.2022.
//


import UIKit



class Friend {
    
    var name: String
    var avatar: UIImage?
    var photos: UIImage?
    
    init(nameFriend: String, avatarFriend: UIImage? = nil, photosFriend: UIImage? = nil) {
        
        self.name = nameFriend
        self.avatar = avatarFriend
        self.photos = photosFriend
        
    }
}
