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

      
    }

    
    var allGroups = [Group(imageGroup: UIImage.init(systemName: "applelogo"), nameGroup: "Apple presentation"),
                  Group(imageGroup: UIImage.init(systemName: "globe"), nameGroup: "National Geographic"),
                  Group(imageGroup: UIImage.init(systemName: "dollarsign.circle"), nameGroup: "RBK"),
                  Group(imageGroup: UIImage.init(systemName: "film"), nameGroup: "Sci-Fi Movies"),
                  Group(imageGroup: UIImage.init(systemName: "guitars"), nameGroup: "Rock Music"),
                  Group(imageGroup: UIImage.init(systemName: "iphone.circle"), nameGroup: "Wylsa"),
                  Group(imageGroup: UIImage.init(systemName: "newspaper.fill"), nameGroup: "News vlog"),
                  Group(imageGroup: UIImage.init(systemName: "fork.knife.circle"), nameGroup: "Crazy Kitchen"),
                  Group(imageGroup: UIImage.init(systemName: "figure.walk.diamond"), nameGroup: "The minimalist"),
                  Group(imageGroup: UIImage.init(systemName: "hourglass.circle.fill"), nameGroup: "LIFE")]
            
                            
                                              
   
   
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





