//
//  ViewController.swift
//  login&sigin.Swift
//
//  Created by Sundir Talari on 22/05/18.
//  Copyright © 2018 Sundir Talari. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var userNameView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButtonObject: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var createAccButtonObject: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        loginButtonObject.layer.cornerRadius = loginButtonObject.frame.size.height/2
        loginButtonObject.layer.borderWidth = 3
        userNameView.layer.cornerRadius = 5
        passwordView.layer.cornerRadius = 5
        createAccButtonObject.layer.cornerRadius = createAccButtonObject.frame.size.height/2
        createAccButtonObject.layer.borderWidth = 3
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        self.view.addGestureRecognizer(tapGesture)
    }

    @IBAction func loginButtonAction(_ sender: Any) {
        if (self.userNameTextField.text == "" && self.passwordTextField.text == "") {
            print("username and password are Empty")
            showAlertWithTitle(title: "Username and Password are Empty")
        }
        else if (userNameTextField.text == "") {
            print("userName is Empty")
            showAlertWithTitle(title: "Username Is Empty")
            
        }else if (passwordTextField.text == "") {
            print("password is Empty")
            showAlertWithTitle(title: "Password Is Empty")
            
        }else {
            print("LoginSuccessful..")
            showAlertWithTitle(title: "Login Successful")
        }
    }
    
    @IBAction func createAccButtonAction(_ sender: Any) {
        
        performSegue(withIdentifier: "segue", sender: nil)
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextViewController = segue.destination as! secondViewController
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

