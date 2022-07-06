//
//  NewsViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 06.07.2022.
//

import UIKit

class NewsViewController: UIViewController {
    
    
    

    let reuseIdentifierNews = "reuseIdentifierNews"
    var newsArray = [News]()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
 

    override func viewDidLoad() {
        super.viewDidLoad()
        fillNews()
        tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierNews)
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    

    

}
