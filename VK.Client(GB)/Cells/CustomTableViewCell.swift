//
//  CustomTableViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    
    
    
    
    
    override func prepareForReuse() {
        avatarView.image = nil
        titleLabel.text = nil
    }
    
    
    
    
    func configure(friend: Friend){
        avatarView.image = friend.avatar
        titleLabel.text = friend.name
        
    }
    
    
    func configure(group: Group){
       
        avatarView.image = group.avatar
        titleLabel.text = group.title
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarView.layer.cornerRadius = cellHeight / 2 - 6
        shadowView.layer.cornerRadius = cellHeight / 2 - 6
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 10, height: 10)
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOpacity = 0.1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
