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
        
        
        let friendOne = Friend(name: "Barak Obama", avatar: UIImage(named: "minen")!, photos: [UIImage(named: "One")!])
        let friendTwo = Friend(name: "Ivan Baxter", avatar: UIImage(named: "karate")!, photos: [UIImage(named: "Two")!])
        let friendThree = Friend(name: "Jim Carry", avatar: UIImage(named: "banana")!, photos: [UIImage(named: "Three")!])
        let friendFour = Friend(name: "Steve Jobs", avatar: UIImage(named: "cat")!, photos: [UIImage(named: "Four")!])
        let friendFive = Friend(name: "Bob Marley", avatar: UIImage(named: "fleshas")!, photos: [UIImage(named: "One")!])
        let friendSix = Friend(name: "Korben Dallas", avatar: UIImage(named: "ratatoui")!, photos: [UIImage(named: "One")!])
        
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
