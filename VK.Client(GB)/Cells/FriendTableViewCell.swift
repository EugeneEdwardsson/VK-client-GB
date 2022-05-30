//
//  FriendTableViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 16.05.2022.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var imageFriends: UIImageView!
    @IBOutlet weak var nameFriends: UILabel!
    
    
    
    
    
     override func awakeFromNib() {
        super.awakeFromNib()
         
         imageFriends.layer.cornerRadius = imageFriends.bounds.width/2
       
     }
    
   
     override func setSelected(_ selected: Bool, animated: Bool) {
      super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
     }

    }
