//
//  CustomTableViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit
protocol CustomTableCellProtocol: AnyObject {
func setCurrentCount(count: Int)
}




class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var shadowView: UIView!
    
  
    var shadowColor = UIColor.black
    var avatarColor = UIColor.systemIndigo
    
    
    weak var delegate: CustomTableCellProtocol?
    var completion: ((Friend) -> Void)?
    var friend: Friend?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        avatarView.image = nil
        titleLabel.text = nil
        completion = nil
        friend = nil
    }
    
    
    
    func configure(friend: Friend, completion: ((Friend) -> Void)?) {
        self.completion = completion
        self.friend = friend
        avatarView.image = friend.avatar
        titleLabel.text = friend.name
       
    }
    
    
    func configure(group: Group) {
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
    
    
    
    @IBAction func pressAvatarButton(_ sender: Any) {
        
        let scale = CGFloat(8)
        
        
        
        UIView.animate(withDuration: 2) { [weak self] in
            guard let self = self else {return}
            self.avatarView.frame = CGRect(x: self.avatarView.frame.origin.x + scale / 2, y: self.avatarView.frame.origin.y + scale / 2, width: self.avatarView.frame.width - scale, height: self.avatarView.frame.height - scale)
        } completion: { isSuccessfully in
            UIView.animate(withDuration: 2,
                           delay: 0,
                           usingSpringWithDamping: 0.3,
                           initialSpringVelocity: 0.7,
                           options: []) { [weak self] in
                guard let self = self else {return}
                self.avatarView.frame = CGRect(x: self.avatarView.frame.origin.x + scale / 2, y: self.avatarView.frame.origin.y + scale / 2, width: self.avatarView.frame.width - scale, height: self.avatarView.frame.height - scale)
            } completion: { [weak self] isAllSuccessfully in
                guard let self = self else {return}
                self.delegate?.setCurrentCount(count: 15)
                if isAllSuccessfully,
                   let friend = self.friend
                {
                    self.completion?(friend)
                }
            }

        }

    }
    
    
}
