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
    
    
    var shadowColor = UIColor.black
    var avatarColor = UIColor.systemIndigo
    
    
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
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
        avatarView.layer.borderWidth = 1
        avatarView.layer.borderColor = avatarColor.cgColor
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = CGSize(width: 4, height: 4)
        shadowView.layer.shadowRadius = 4
        shadowView.layer.shadowOpacity = 0.60
        
        
    }
    
    
    override func layoutSubviews() {
        avatarView.layer.cornerRadius = cellHeight / 2 - 2
        shadowView.layer.cornerRadius = cellHeight / 2 - 2
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
