//
//  FriendViewController+(UISearchBarDelegate).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 04.07.2022.
//

import UIKit





extension FriendViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            self.friendsArray = self.saveArray
        } else {
            self.friendsArray = self.friendsArray.filter({item in item.name.lowercased().contains(searchText.lowercased())})
        }
        self.tableView.reloadData()
    }
    
}




