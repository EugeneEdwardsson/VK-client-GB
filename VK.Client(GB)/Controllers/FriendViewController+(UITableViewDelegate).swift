//
//  FriendViewController+(UITableViewDelegate).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit



extension FriendViewController: UITableViewDelegate {
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        performSegue(withIdentifier: fromFriendsToGallery, sender: friendsArray[indexPath.row])
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return cellHeight
    }
    
    
}
