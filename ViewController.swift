//
//  ViewController.swift
//  AlertProject
//
//  Created by Burak Karataş on 9.10.2020.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var HeadLabel: UILabel!
    @IBOutlet weak var Username: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Password2: UITextField!
    
   
    @IBAction func SignUpClicked(_ sender: Any) {
        
        if Username.text == ""{
            signUp(titleInput: "Error!", messageInput: "Username not found!")
        }else if Password.text == "" {
            signUp(titleInput: "Error", messageInput: "Password not found")
        }else if Password2.text != Password.text {
            signUp(titleInput: "Error", messageInput: "Password do not match")
        }else {
            signUp(titleInput: "Success", messageInput: "Sign up completed.")
        }
       
    }
    func signUp(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)

}

}

