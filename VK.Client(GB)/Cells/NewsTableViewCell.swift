//
//  NewsTableViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var newsTextView: UITextView!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsContainerView: UIView!
    
    
    
    
    override func prepareForReuse() {
        newsTextView.text = nil
        newsImageView.image = nil
        newsContainerView = nil
    }
    
    
    func configure(news: News){
        newsTextView.text = news.text
        newsImageView.image = news.photo
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
