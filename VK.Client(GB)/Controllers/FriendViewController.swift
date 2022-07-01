//
//  FriendViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class FriendViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    let reuseIdentifierCustom = "reuseIdentifierCustom"
    
    
    var friendsArray = [Friend]()
    
    
   
   
      
    
    
    func fillFriendsArray() {
        
        
        let friendOne = Friend(name: "Barak Obama", avatar: UIImage(systemName: "brain.head.profile")!, photos: [UIImage(named: "One")!])
        let friendTwo = Friend(name: "Ivan Baxter", avatar: UIImage(systemName: "person.crop.rectangle")!, photos: [UIImage(named: "Two")!])
        let friendThree = Friend(name: "Jim Carry", avatar: UIImage(systemName: "face.smiling.fill")!, photos: [UIImage(named: "Three")!])
        let friendFour = Friend(name: "Steve Jobs", avatar: UIImage(systemName: "eyeglasses")!, photos: [UIImage(named: "Four")!])
        let friendFive = Friend(name: "Bob Marley", avatar: UIImage(systemName: "music.mic.circle")!, photos: [UIImage(named: "One")!])
        let friendSix = Friend(name: "Korben Dallas", avatar: UIImage(systemName: "person.circle")!, photos: [UIImage(named: "One")!])
        
        friendsArray.append(friendOne)
        friendsArray.append(friendTwo)
        friendsArray.append(friendThree)
        friendsArray.append(friendFour)
        friendsArray.append(friendFive)
        friendsArray.append(friendSix)
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillFriendsArray()
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
        
        
        

    }
    
    
    
    

    

}



extension FriendViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCustom", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(friend: friendsArray[indexPath.row])
        
        return cell
    }
    
    
}
