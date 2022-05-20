//
//  MyGroupTableViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 18.05.2022.
//

import UIKit

class MyGroupTableViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    var groups = [Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Geo Hystory"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Adventures"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Movies"),
                  Group(imageGroup: UIImage.init(systemName: ""), nameGroup: "Reggy Music")]
            
                            
                                              
   
   
    override func numberOfSections(in tableView: UITableView) -> Int {
      
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as? GroupsTableViewCell else {
            preconditionFailure("Error")
        }

        cell.nameGroups.text = groups[indexPath.row].name
        cell.imageGroups.image = groups[indexPath.row].image

        return cell
    }

}
