//
//  SignUpViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/1/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var ShadowView: UIView!
    
    @IBOutlet weak var ImageLogo: UIImageView!
    @IBOutlet weak var SignUpView: UIView!
    
    @IBOutlet weak var Username_Text: UITextField!
    @IBOutlet weak var Email_Text: UITextField!
    @IBOutlet weak var MobileNumber_Text: UITextField!
    @IBOutlet weak var Password_text: UITextField!
    
    @IBOutlet weak var SignUp_Lbl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.ShadowView.backgroundColor = UIColor.black
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        self.ImageLogo.layer.cornerRadius = 20
        self.ImageLogo.clipsToBounds = true
        
        self.SignUpView.layer.cornerRadius = 10
        self.SignUpView.backgroundColor = UIColor.white
        self.SignUpView.layer.shadowColor = UIColor.lightGray.cgColor
        self.SignUpView.layer.shadowOpacity = 0.50
        self.SignUpView.layer.shadowOffset = CGSize(width: 3, height: 3)
        
        self.SignUp_Lbl.layer.cornerRadius = 22
        self.SignUp_Lbl.backgroundColor = UIColor.black
    
        TextFieldPadding()
        TextFieldImages()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    func TextFieldPadding() {
        
        Username_Text.placeholder = "Enter a Username"
        Email_Text.placeholder = "Enter a email"
        MobileNumber_Text.placeholder = "Enter Mobile Number"
        Password_text.placeholder = "Enter Password"
        
        Username_Text.setPadding()
        Username_Text.bottomBorder()
        
        Email_Text.setPadding()
        Email_Text.bottomBorder()
        
        MobileNumber_Text.setPadding()
        MobileNumber_Text.bottomBorder()
        
        Password_text.setPadding()
        Password_text.bottomBorder()
        
        Username_Text.backgroundColor = UIColor.white
        Email_Text.backgroundColor = UIColor.white
        MobileNumber_Text.backgroundColor = UIColor.white
        Password_text.backgroundColor = UIColor.white
        
        Username_Text.borderStyle = .none
        Email_Text.borderStyle = .none
        MobileNumber_Text.borderStyle = .none
        Password_text.borderStyle = .none
    }
    
    func TextFieldImages() {
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Unseen"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.clear
        button.frame = CGRect(x: CGFloat(Password_text.frame.size.width - 10), y: CGFloat(5), width: CGFloat(25), height: 25)
        button.addTarget(self, action: #selector(self.passwordImage), for: .touchUpInside)
        
        Password_text.rightView = button
        Password_text.rightViewMode = .whileEditing
    }
    
    @objc func passwordImage() {
        
        if Password_text.isSecureTextEntry == true {
            Password_text.isSecureTextEntry = false
            UnseenPassword()
        }else {
            Password_text.isSecureTextEntry = true
            TextFieldImages()
        }
    }
    
    func UnseenPassword() {
        
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Seen"), for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.clear
        button.frame = CGRect(x: CGFloat(Password_text.frame.size.width - 10), y: CGFloat(5), width: CGFloat(25), height: 25)
        button.addTarget(self, action: #selector(self.passwordImage), for: .touchUpInside)
        
        Password_text.rightView = button
        Password_text.rightViewMode = .whileEditing
    }
    
    
    @IBAction func PushLogin(_ sender: UIButton) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func SignupAction(_ sender: UIButton) {
        
        sender.pulsate()
    }
    
    //class ends here
    
}
