//
//  AllGroupViewController+(UITableViewDelegate,UITableViewDataSource).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit




extension AllGroupsViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroups.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCustom", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(group: allGroups[indexPath.row])
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        self.selectedGroup = allGroups[indexPath.row]
        performSegue(withIdentifier: fromAllGroupsToGroupsSegue, sender: nil)
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return cellHeight
    }

    
    
}
