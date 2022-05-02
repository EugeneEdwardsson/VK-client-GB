//
//  UIViewController(+extension).swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 02.05.2022.
//

import UIKit


extension UIViewController {
    
    func showError(message: String){
        
        let alertViewController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        
        let tapOkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertViewController.addAction(tapOkAction)
        
        present(alertViewController, animated: true, completion: nil)
    }
}
