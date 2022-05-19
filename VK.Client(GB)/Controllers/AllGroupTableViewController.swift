//
//  AllGroupTableViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 18.05.2022.
//

import UIKit

class AllGroupTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    var allGroups = [Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Geo Hystory"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Adventures"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Movies"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Reggy Music"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers")]
            
                            
                                              
   
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return allGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as? AllGroupsTableViewCell else {
            preconditionFailure("Error")
        }

        cell.nameAllGroups.text = allGroups[indexPath.row].name
        cell.imageAllGroups.image = allGroups[indexPath.row].image

        return cell
    }

   

}
