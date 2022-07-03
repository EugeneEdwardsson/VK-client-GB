//
//  AllGroupsViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 01.07.2022.
//

import UIKit

class AllGroupsViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
        
    
    var allGroups = [Group]()
    
    
    
    
    
    func fillGroups(){
        
        let groupOne = Group(title: "Apple presentation", avatar: UIImage(systemName: "applelogo")!)
        let groupTwo = Group(title: "National Geographic", avatar: UIImage(systemName: "globe")!)
        let groupThree = Group(title: "RBK", avatar: UIImage(systemName: "dollarsign.circle")!)
        let groupFour = Group(title: "Sci-Fi Movies", avatar: UIImage(systemName: "film")!)
        let groupFive = Group(title: "Rock Music", avatar: UIImage(systemName: "guitars")!)
        let groupSix = Group(title: "Wylsa", avatar: UIImage(systemName: "iphone.circle")!)
        let groupSeven = Group(title: "News vlog", avatar: UIImage(systemName: "newspaper.fill")!)
        let groupEight = Group(title: "Crazy Kitchen", avatar: UIImage(systemName: "fork.knife.circle")!)
        let groupNine = Group(title: "The minimalist", avatar: UIImage(systemName: "figure.walk.diamond")!)
        let groupTen = Group(title: "LIFE", avatar: UIImage(systemName: "hourglass.circle.fill")!)
        let groupEleven = Group(title: "Swift Developers", avatar: UIImage(systemName: "swift")!)
        let groupTwelve = Group(title: "Geo History", avatar: UIImage(systemName: "globe.americas")!)
        let groupThreeteen = Group(title: "Adventures", avatar: UIImage(systemName: "airplane.departure")!)
        let groupFourteen = Group(title: "Movies", avatar: UIImage(systemName: "4k.tv")!)
        let groupFiveteen = Group(title: "Reggy Music", avatar: UIImage(systemName: "headphones")!)
        
        allGroups.append(groupOne)
        allGroups.append(groupTwo)
        allGroups.append(groupThree)
        allGroups.append(groupFour)
        allGroups.append(groupFive)
        allGroups.append(groupSix)
        allGroups.append(groupSeven)
        allGroups.append(groupEight)
        allGroups.append(groupNine)
        allGroups.append(groupTen)
        allGroups.append(groupEleven)
        allGroups.append(groupTwelve)
        allGroups.append(groupThreeteen)
        allGroups.append(groupFourteen)
        allGroups.append(groupFiveteen)
    }
    
    
    

    

        let reuseIdentifierCustom = "reuseIdentifierCustom"
        
        
       
        
        
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            tableView.reloadData()
        }
       
       
          
        
        
      
            
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            fillGroups()
            tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifierCustom)
            tableView.delegate = self
            tableView.dataSource = self
            
            }
        
        
        
        

        

    }



    

    
      
