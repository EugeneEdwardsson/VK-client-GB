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

    
    var allGroups = [Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Apple presentation"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "National Geographic"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "RBK"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Sci-Fi Movies"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "World Music"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Wylsa"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "News vlog"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Crazy Kitchen"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "The minimalist"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "LIFE")]
            
                            
                                              
   
   
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
