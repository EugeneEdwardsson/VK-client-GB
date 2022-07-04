//
//  FriendViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit





class FriendViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
    
    
    
    
    
    let reuseIdentifierCustom = "reuseIdentifierCustom"
    let fromFriendsToGallery = "fromFriendsToGallery"
    var friendsArray = [Friend]()
    var saveArray = [Friend]()
    
    
    
    func arrayWord(source: [Friend]) -> [String] {
        var result = [String]()
        
        for item in source {
            let name = String(item.name.prefix(1))
            if !result.contains(name.lowercased()) {
                result.append(name.lowercased())
            }
        }
        
        return result
    }
    
    
    
    
    
    func miniArrayWord(source: [Friend], word: String) -> [Friend] {
        
        var result = [Friend]()
        
        for item in source {
            let name = String(item.name.prefix(1)).lowercased()
            if name == word.lowercased() {
                result.append(item)
            }
        }
        
        return result
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillFriendsArray()
        saveArray = friendsArray
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == fromFriendsToGallery,
          //let sourceVC = segue.source as? FriendViewController,
           let destinationVC = segue.destination as? PhotoGalleryViewController,
           let friends = sender as? Friend {
            
            destinationVC.photos = friends.photos
            
        }
    }
    
    
    
    

}







    
    

