//
//  LoginView.swift
//  SampleProject_Demo
//
//  Created by Nagaraju Kankanala on 20/01/25.
//

import UIKit
import Foundation

class LoginVC:UIViewController {
    @IBOutlet weak var userNameTxtField:UITextField!
    @IBOutlet weak var passwordTxtField:UITextField!
    @IBOutlet weak var loginBtn:UIButton!
    var loginRequest  = featchApiRequest()
    var userDetails: Credentials?
    var alertMessage:String = ""
    override func viewDidLoad() {
        self.title = "LoginView"
        featchRequestUserDeatils()
    }
    
    @IBAction func loginBtnClk(_ sender : UIButton) {
        
        guard let userName  = userNameTxtField.text else { return }
        guard let password  = passwordTxtField.text else { return }
        if userName.validate() && password.validate() {
            if userDetails?.username == userName  && userDetails?.password == password {
                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                self.navigationController?.pushViewController(vc, animated: true)
            }else {
                showAlert(title: "ErrorMessage",message: "User Name Password Does't Match")
            }
        } else {
            if !userName.validate() {
                showAlert(title: "ErrorMessage",message: "Username is invalid")
            }
            if !password.validate() {
                showAlert(title: "ErrorMessage",message: "Password is invalid")
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        userNameTxtField.text = ""
        passwordTxtField.text = ""
    }
}

extension LoginVC {
    func featchRequestUserDeatils() {
        if let userData = loginRequest.fetchCredentials(from: "UserDetails") {
            userDetails = userData
        }
    }
}

extension String {
    func validate() -> Bool {
        return !self.isEmpty && self.count >= 2
    }
}

extension UIViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}
