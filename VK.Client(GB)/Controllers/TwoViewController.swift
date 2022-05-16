//
//  TwoViewController.swift
//  VK.Client(GB)
//
//  Created by Eugene Berezkin on 08.04.2022.
//

import UIKit

class TwoViewController: UIViewController {

    
    @IBOutlet var scrollView: UIScrollView!
    
    
    @IBOutlet var loginTextField: UITextField!
    
    
    @IBOutlet var passwordTextField: UITextField!
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapScreen = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
        view.addGestureRecognizer(tapScreen)
        
    }
    
    @objc func hideScreen() {
        view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        
        
        
        
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    

   @objc func willShowKeyboard(_ notification: NotificationCenter) {
       
       print("ShowKeyboard - \(#function)")
        
    }
    
  
    @objc func willHideKeyboard(_ notification: NotificationCenter) {
        
        print("HideKeyboard - \(#function)")
    }
    
    @IBAction func tapButton(_ sender: Any) {
        
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text,
              login == "",
        password == "" else {showError(message: "Error password")
            return}
        
        performSegue(withIdentifier: "login", sender: nil)
    }
    
}
