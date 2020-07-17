//
//  LoginViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/1/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var ShadowView: UIView!
    @IBOutlet weak var ImageLogo: UIImageView!
    @IBOutlet weak var LoginView: UIView!
    @IBOutlet weak var UserName_Text: UITextField!
    @IBOutlet weak var Password_Text: UITextField!
    @IBOutlet weak var Login_Lbl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.ShadowView.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.isHidden = false
        
        self.ImageLogo.layer.cornerRadius = 20
        self.ImageLogo.clipsToBounds = true
        
        self.LoginView.layer.cornerRadius = 10
        self.LoginView.backgroundColor = UIColor.white
        self.LoginView.layer.shadowColor = UIColor.lightGray.cgColor
        self.LoginView.layer.shadowOpacity = 0.50
        self.LoginView.layer.shadowOffset = CGSize(width: 3, height: 3)

        self.Login_Lbl.layer.cornerRadius = 22
        self.Login_Lbl.backgroundColor = UIColor.black
        
        TextFieldPadding()
        TextFieldImages()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    func TextFieldPadding() {
        
        UserName_Text.placeholder = "Enter a Username"
        Password_Text.placeholder = "Enter Password"
        
        UserName_Text.setPadding()
        UserName_Text.bottomBorder()
        
        Password_Text.setPadding()
        Password_Text.bottomBorder()
        
        UserName_Text.backgroundColor = UIColor.white
        UserName_Text.borderStyle = .none
        
        Password_Text.backgroundColor = UIColor.white
        Password_Text.borderStyle = .none
        
        Password_Text.isSecureTextEntry = true
    }
    
    func TextFieldImages() {
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Unseen"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.clear
        button.frame = CGRect(x: CGFloat(Password_Text.frame.size.width - 10), y: CGFloat(5), width: CGFloat(25), height: 25)
        button.addTarget(self, action: #selector(self.passwordImage), for: .touchUpInside)
        
        Password_Text.rightView = button
        Password_Text.rightViewMode = .whileEditing
    }
    
    @objc func passwordImage() {
        
        if Password_Text.isSecureTextEntry == true {
            Password_Text.isSecureTextEntry = false
            UnseenPassword()
        }else {
            Password_Text.isSecureTextEntry = true
            TextFieldImages()
        }
    }
    
    func UnseenPassword() {
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Seen"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.clear
        button.frame = CGRect(x: CGFloat(Password_Text.frame.size.width - 10), y: CGFloat(5), width: CGFloat(25), height: 25)
        button.addTarget(self, action: #selector(self.passwordImage), for: .touchUpInside)
        
        Password_Text.rightView = button
        Password_Text.rightViewMode = .whileEditing
    }

    @IBAction func PushSignup(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func LoginAction(_ sender: UIButton) {
        
        sender.pulsate()
        
        if UserName_Text.text == "" && Password_Text.text == "" {
            
        }else {
            
            let launchScreen = UIStoryboard.init(name: "Main", bundle: nil)
            let RootVC = launchScreen.instantiateViewController(withIdentifier: "Home")
//            self.window?.rootViewController = RootVC
//            self.window?.makeKeyAndVisible()
            
            UIApplication.shared.keyWindow?.rootViewController = RootVC
        }
        
        if Password_Text.isSecureTextEntry == true {
           Password_Text.isSecureTextEntry = false
        }else {
            Password_Text.isSecureTextEntry = true
        }
        
    }
    
    
}
