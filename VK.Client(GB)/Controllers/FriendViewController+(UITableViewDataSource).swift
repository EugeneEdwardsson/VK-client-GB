//
//  FriendViewController+(UITableViewDataSource).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit





extension FriendViewController: UITableViewDataSource {
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayWord(source: friendsArray).count
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return miniArrayWord(source: friendsArray, word: arrayWord(source: friendsArray)[section]).count
    }
 
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCustom", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(friend: miniArrayWord(source: friendsArray, word: arrayWord(source: friendsArray)[indexPath.section])[indexPath.row])
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrayWord(source: friendsArray)[section].uppercased()
    }
    
    
    
    
}
