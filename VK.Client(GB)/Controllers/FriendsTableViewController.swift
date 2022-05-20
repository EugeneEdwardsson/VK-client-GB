//
//  FriendsTableViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 09.05.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    var friends = [Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Barak Obama"),
                   Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Ivan Baxter"),
                   Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Jim Carry"),
                   Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Steve Jobs"),
                   Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Bob Marley"),
                   Friend(imageFriend: UIImage.init(systemName: "person"), nameFriend: "Korben Dallas")]
                            
                                              
   
   
    


    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard  let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendTableViewCell else {
            preconditionFailure("Error")
        }

        cell.imageFriends.image = friends[indexPath.row].image
        cell.nameFriends.text = friends[indexPath.row].name


        return cell
    }
    

}
