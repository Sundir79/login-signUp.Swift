//
//  secondViewController.swift
//  login&sigin.Swift
//
//  Created by Sundir Talari on 22/05/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var signUpButtonObject: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        emailTextField.delegate = self
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        confirmPasswordTextField.delegate = self
        signUpButtonObject.layer.cornerRadius = signUpButtonObject.frame.size.height/2
        signUpButtonObject.layer.borderWidth = 3
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
       
    }

    @IBAction func signUpButtonAction(_ sender: Any) {
        if(firstNameTextField.text == ""){
            print("Enter Your First Name")
            showAlertWithTitle(title: "Enter Your First Name")
        }
        else if(lastNameTextField.text == ""){
            print("Enter Your Last Name")
            showAlertWithTitle(title: "Enter Your Last Name")
        }else if(emailTextField.text == ""){
            print("Enter Your Email")
            showAlertWithTitle(title: "Enter Your Email")
        }else if(userNameTextField.text == ""){
            print("Enter Your UserName")
            showAlertWithTitle(title: "Enter Your UserName")
        }else if(passwordTextField.text == ""){
            print("Enter Your Password")
            showAlertWithTitle(title: "Enter Your Password")
        }else if(confirmPasswordTextField.text == ""){
            print("Confirm Your Password")
            showAlertWithTitle(title: "Confirm Your Password")
        }else{
            print("Account Created successfully")
            showAlertWithTitle(title: "Account Created successfully")
        }
            
       
    }
    
    func showAlertWithTitle(title:String) {
         let alertiView = UIAlertController(title: nil, message: title, preferredStyle: .alert)
        alertiView.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alertiView, animated: true, completion: nil)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @objc func tap(gesture: UITapGestureRecognizer) {
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        
    }

    
}

