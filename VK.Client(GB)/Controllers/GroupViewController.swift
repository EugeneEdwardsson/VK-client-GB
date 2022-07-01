//
//  GroupViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class GroupViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    

    let reuseIdentifierCustom = "reuseIdentifierCustom"
    
    
    var groupArray = [Group]()
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
   
   
      
    
    
    
        //var groups = [Group(imageGroup: UIImage.init(systemName: "swift"), nameGroup: "Swift Developers"),
        // Group(imageGroup: UIImage.init(systemName: "globe.americas"), nameGroup: "Geo History"),
        // Group(imageGroup: UIImage.init(systemName: "airplane.departure"), nameGroup: "Adventures"),
        //   Group(imageGroup: UIImage.init(systemName: "4k.tv"), nameGroup: "Movies"),
        //           Group(imageGroup: UIImage.init(systemName: "headphones"), nameGroup: "Reggy Music")]
        
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
        
        }
    
    
    
    

    

}



extension GroupViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupArray.count
    }
    
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifierCustom", for: indexPath) as? CustomTableViewCell else {return UITableViewCell()}
        cell.configure(group: groupArray[indexPath.row])
        
        return cell
    }
    
    

}
