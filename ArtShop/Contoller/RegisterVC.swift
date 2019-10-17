//
//  RegisterVC.swift
//  ArtShop
//
//  Created by Axel Whitford on 7/10/19.
//  Copyright © 2019 Axel Whitford. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {

    //OUTLETS
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var confirmPasswordTxt: UITextField!
    @IBOutlet weak var PassCheckImg: UIImageView!
    @IBOutlet weak var PassConfirmImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        passwordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
        confirmPasswordTxt.addTarget(self, action: #selector(textFieldDidChange(_:)), for: UIControl.Event.editingChanged)
    }
    
    //TextFieldFunction
    @objc func textFieldDidChange(_ textField:UITextField) {
        
        guard let passTxt = passwordTxt.text else { return }
        
        if textField == confirmPasswordTxt {
            PassCheckImg.isHidden = false
            PassConfirmImg.isHidden = false
        } else {
            if passTxt.isEmpty {
                PassCheckImg.isHidden = true
                PassConfirmImg.isHidden = true
                confirmPasswordTxt.text = ""
            }
        }
        //If password match img is green
        if passwordTxt.text == confirmPasswordTxt.text {
            PassCheckImg.image = UIImage(named: Images.GreenCheck)
            PassConfirmImg.image = UIImage(named: Images.GreenCheck)
        } else {
            PassCheckImg.image = UIImage(named: Images.RedCheck)
            PassConfirmImg.image = UIImage(named: Images.RedCheck)
        }
    }
    
    // BUTTON ACTION
    @IBAction func registerClicked(_ sender: Any) {
        
        guard let email = emailTxt.text ,email.isNotEmpty,
            let username = usernameTxt.text ,username.isNotEmpty,
            let password = passwordTxt.text ,password.isNotEmpty else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            if let error = error {
                debugPrint(error)
                return
            }
            print("Success")
        }
    }
    
}
