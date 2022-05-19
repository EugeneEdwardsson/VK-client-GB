//
//  Group.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 16.05.2022.
//

import UIKit


class Group {
    
    var avatar: UIImage?
    var title: String
    
    init(avatarGroup: UIImage? = nil, titleGroup: String) {
        
        self.avatar = avatarGroup
        self.title = titleGroup
        
    }
}
