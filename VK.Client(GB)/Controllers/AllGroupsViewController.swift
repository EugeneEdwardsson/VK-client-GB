//
//  AllGroupsViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class AllGroupsViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
        
    
    var allGroups = [Group]()
    let fromAllGroupsToGroupsSegue = "fromAllGroupsToGroups"
    
    var selectedGroup: Group?
    let reuseIdentifierCustom = "reuseIdentifierCustom"
        
        
       
        
        
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            tableView.reloadData()
        }
       
       
          
        
        
      
            
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            fillGroups()
            tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
            tableView.delegate = self
            tableView.dataSource = self
            
            }
        
        
        
    

        

    }



    

    
      
