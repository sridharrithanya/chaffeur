//
//  ViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/1/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Login_Lbl: UIButton!
    @IBOutlet weak var Signup_Lbl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SetupView()
    
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = true
        UIApplication.shared.statusBarStyle = .default
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.navigationBar.barTintColor = UIColor.black
    }
    
    func SetupView() {
        
        self.Login_Lbl.layer.cornerRadius = 22
        self.Login_Lbl.backgroundColor = UIColor.black
        self.Signup_Lbl.layer.cornerRadius = 22
        self.Signup_Lbl.layer.borderColor = UIColor.black.cgColor
        self.Signup_Lbl.layer.borderWidth = 1
    }

    @IBAction func LoginAction(_ sender: UIButton) {
        
       // sender.pulsate()
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func SignUpAction(_ sender: UIButton) {
        
       // sender.pulsate()
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
}

extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.1
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = false
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: "pulse")
    }
    
}

struct Colors {
    
    static let brightOrange     = UIColor(red: 255.0/255.0, green: 69.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let red              = UIColor(red: 255.0/255.0, green: 115.0/255.0, blue: 115.0/255.0, alpha: 1.0)
    static let orange           = UIColor(red: 255.0/255.0, green: 175.0/255.0, blue: 72.0/255.0, alpha: 1.0)
    static let blue             = UIColor(red: 74.0/255.0, green: 144.0/255.0, blue: 228.0/255.0, alpha: 1.0)
    static let green            = UIColor(red: 91.0/255.0, green: 197.0/255.0, blue: 159.0/255.0, alpha: 1.0)
    static let darkGrey         = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1.0)
    static let veryDarkGrey     = UIColor(red: 13.0/255.0, green: 13.0/255.0, blue: 13.0/255.0, alpha: 1.0)
    static let lightGrey        = UIColor(red: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, alpha: 1.0)
    static let black            = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
    static let white            = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
}

extension UIView {
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
        
    }
}

extension UITextField {
    
    func setPadding() {
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
    }
    
    func bottomBorder() {
        
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        
    }
    
    // ---------------------------
    //     CLASS ENDS HERE
    // ---------------------------
}

