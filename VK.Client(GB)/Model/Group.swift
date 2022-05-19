//
//  Group.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 16.05.2022.
//

import UIKit


class Group {
    
    var image: UIImage?
    var name: String
    
    init(imageGroup: UIImage? = nil, nameGroup: String) {
        
        self.image = imageGroup
        self.name = nameGroup
        
    }
}
