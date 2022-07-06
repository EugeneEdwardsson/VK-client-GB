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
    let fromAllGroupsToGroupsSegue = "fromAllGroupsToGroups"
    
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
    
    
    
    
    func isItemArray(group: Group) -> Bool{
        return groupArray.contains { sourceGroup in sourceGroup.title == group.title }
    }
    
    
    @IBAction func groupUnwindAction(unwindSegue: UIStoryboardSegue){
        if unwindSegue.identifier == fromAllGroupsToGroupsSegue,
           let sourceVC = unwindSegue.source as? AllGroupsViewController,
           let selectedGroup = sourceVC.selectedGroup {
            if isItemArray(group: selectedGroup) {return}
            self.groupArray.append(selectedGroup)
            tableView.reloadData()
        }
    }
    

    

}







