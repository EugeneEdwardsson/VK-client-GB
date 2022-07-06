//
//  FriendViewController+Array(Data).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit


extension FriendViewController {
    
    
    func fillFriendsArray() {
        
        
        let friendOne = Friend(name: "Elvis Minen", avatar: UIImage(named: "minen")!, photos: [UIImage(named: "panda")!])
        let friendTwo = Friend(name: "Shi-fu", avatar: UIImage(named: "karate")!, photos: [UIImage(named: "Four")!])
        let friendThree = Friend(name: "Minen Banana", avatar: UIImage(named: "banana")!, photos: [UIImage(named: "haska")!])
        let friendFour = Friend(name: "Cat Boots ", avatar: UIImage(named: "cat")!, photos: [UIImage(named: "clon")!])
        let friendFive = Friend(name: "Elf Archer", avatar: UIImage(named: "fleshas")!, photos: [UIImage(named: "Four")!])
        let friendSix = Friend(name: "Ratatoui", avatar: UIImage(named: "ratatoui")!, photos: [UIImage(named: "panda")!])
        
        friendsArray.append(friendOne)
        friendsArray.append(friendTwo)
        friendsArray.append(friendThree)
        friendsArray.append(friendFour)
        friendsArray.append(friendFive)
        friendsArray.append(friendSix)
        
        
        
    }
    
}



