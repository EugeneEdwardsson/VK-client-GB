//
//  GroupViewController+(UITableViewDelegate,UITableViewDataSource).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 03.07.2022.
//

import UIKit



extension GroupViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupArray.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCustom", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(group: groupArray[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return cellHeight
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            groupArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        
    }


}

