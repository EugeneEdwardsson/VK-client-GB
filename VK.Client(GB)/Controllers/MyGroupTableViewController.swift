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
    
    var groups = [Group(imageGroup: UIImage.init(systemName: "swift"), nameGroup: "Swift Developers"),
                  Group(imageGroup: UIImage.init(systemName: "globe.americas"), nameGroup: "Geo Hystory"),
                  Group(imageGroup: UIImage.init(systemName: "airplane.departure"), nameGroup: "Adventures"),
                  Group(imageGroup: UIImage.init(systemName: "4k.tv"), nameGroup: "Movies"),
                  Group(imageGroup: UIImage.init(systemName: "headphones"), nameGroup: "Reggy Music")]
            
                            
                                              
   
   
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
