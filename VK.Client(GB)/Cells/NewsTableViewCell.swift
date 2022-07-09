//
//  NewsTableViewCell.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var newsTitleView: UILabel!
    @IBOutlet weak var newsTextView: UILabel!
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var newsContainerView: UIView!
    
    
    
    
    override func prepareForReuse(){
        super.prepareForReuse()
        newsTitleView.text = nil
        newsTextView.text = nil
        newsImageView.image = nil
        newsContainerView = nil
    }
    
    
    func configure(news: News){
        newsTitleView.text = news.title
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
