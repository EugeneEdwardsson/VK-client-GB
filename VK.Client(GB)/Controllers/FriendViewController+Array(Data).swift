//
//  FriendViewController+Array(Data).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit


extension FriendViewController {
    
    
    func fillFriendsArray() {
        
        
        let friendOne = Friend(name: "Barak Obama", avatar: UIImage(named: "minen")!, photos: [UIImage(named: "Two")!])
        let friendTwo = Friend(name: "Ivan Baxter", avatar: UIImage(named: "karate")!, photos: [UIImage(named: "Four")!])
        let friendThree = Friend(name: "Jim Carry", avatar: UIImage(named: "banana")!, photos: [UIImage(named: "haska")!])
        let friendFour = Friend(name: "Steve Jobs", avatar: UIImage(named: "cat")!, photos: [UIImage(named: "clon")!])
        let friendFive = Friend(name: "Bob Marley", avatar: UIImage(named: "fleshas")!, photos: [UIImage(named: "peace")!])
        let friendSix = Friend(name: "Korben Dallas", avatar: UIImage(named: "ratatoui")!, photos: [UIImage(named: "panda")!])
        
        friendsArray.append(friendOne)
        friendsArray.append(friendTwo)
        friendsArray.append(friendThree)
        friendsArray.append(friendFour)
        friendsArray.append(friendFive)
        friendsArray.append(friendSix)
        
        
        
    }
    
}



