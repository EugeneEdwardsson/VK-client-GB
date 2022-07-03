//
//  GroupViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class GroupViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    

    let reuseIdentifierCustom = "reuseIdentifierCustom"
    
    
    var groupArray = [Group]()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
   
   
      
    
    
  
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
        
        }
    
    
    
    

    

}




