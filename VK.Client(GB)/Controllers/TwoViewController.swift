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
    
    
    
    
    
    func addShadow(view: UIView){
       
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 10, height: 10)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let tapScreen = UITapGestureRecognizer(target: self, action: #selector(hideScreen))
        scrollView?.addGestureRecognizer(tapScreen)
        passwordTextField.isSecureTextEntry = true
        
        
        addShadow(view: loginTextField)
        addShadow(view: passwordTextField)
       
        
    }
    
    
    @objc func hideScreen() {
        self.scrollView?.endEditing(true)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(willShowKeyboard(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(willHideKeyboard(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
       super.viewWillDisappear(animated)
        
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
        
    }
    
    
  
    

   @objc func willShowKeyboard(_ notification: Notification) {
       
       let info = notification.userInfo! as NSDictionary
       let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
       let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
             
       self.scrollView?.contentInset = contentInsets
       scrollView?.scrollIndicatorInsets = contentInsets
       
       print("ShowKeyboard - \(#function)")
        
    }
    
  
    @objc func willHideKeyboard(_ notification: Notification) {
        
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        
        print("HideKeyboard - \(#function)")
        
    }
    
    
    
    
    @IBAction func tapButton(_ sender: Any) {
        
        
           guard let login = loginTextField.text,
                 let password = passwordTextField.text,
                 login == "",
           password == "" else {
               
              
               
               let alert = UIAlertController(title: "Error", message: "Error password or login!", preferredStyle: .alert)
               
               let enterButton =  UIAlertAction(title: "OK", style: .default) { _ in
                   
                   self.loginTextField.text?.removeAll()
                   self.passwordTextField.text = ""
                  
               
               }
               
               
               
               alert.addAction(enterButton)
               
               present(alert, animated: true, completion: nil)
               
              
               return
               
               
               
           }
           
           performSegue(withIdentifier: "login", sender: nil)
       }
}
