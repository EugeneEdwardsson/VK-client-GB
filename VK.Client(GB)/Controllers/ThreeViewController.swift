//
//  ThreeViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 19.04.2022.
//

import UIKit

class ThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    override func viewDidAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
        
        navigationController?.navigationBar.backgroundColor = .systemIndigo
    }
}
