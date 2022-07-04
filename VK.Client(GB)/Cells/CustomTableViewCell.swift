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
        
        shadowView.layer.shadowColor = shadowColor.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 12
        shadowView.layer.shadowOpacity = 0.50
        
        
    }
    
    
    override func layoutSubviews() {
        avatarView.layer.cornerRadius = bounds.height/2
        shadowView.layer.cornerRadius = bounds.height/2
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
