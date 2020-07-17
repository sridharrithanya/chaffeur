//
//  SettingsViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/6/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    @IBOutlet weak var Profile_image: UIImageView!
    
    @IBOutlet weak var FB_Image: UIImageView!
    @IBOutlet weak var Google_Image: UIImageView!
    
    @IBOutlet weak var fb_switch: UISwitch!
    @IBOutlet weak var google_switch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Setting"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        self.Profile_image.layer.cornerRadius = Profile_image.frame.size.width / 2
        self.Profile_image.clipsToBounds = true
        self.Profile_image.layer.borderWidth = 2.0
        self.Profile_image.layer.borderColor = UIColor.white.cgColor
        
        LoadImages()
        
        
    }
    
    
    func LoadImages() {
        
        if fb_switch.isOn == true {
            FB_Image.image = UIImage(named: "FB_color")
        }else {
            FB_Image.image = UIImage(named: "FB_gray")
        }
        
        if google_switch.isOn == true {
            Google_Image.image = UIImage(named: "google_color")
        }else {
            Google_Image.image = UIImage(named: "Google_gray")
        }
    }
    
    
    @IBAction func FbButton(_ sender: UISwitch) {
        
        if sender.isOn == true {
            FB_Image.image = UIImage(named: "FB_color")
        }else {
            FB_Image.image = UIImage(named: "FB_gray")
        }
    }
    
    @IBAction func GoogleButton(_ sender: UISwitch) {
        
        if sender.isOn == true {
            Google_Image.image = UIImage(named: "google_color")
        }else {
            Google_Image.image = UIImage(named: "Google_gray")
        }
    }
    
    @IBAction func Logout(_ sender: UIButton) {
        
        let alert = UIAlertController(title: nil, message: "Do you want to logout from this account", preferredStyle: .actionSheet)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let LogOut = UIAlertAction(title: "Logout", style: .destructive) { (action) in
            
            let launchScreen = UIStoryboard.init(name: "Main", bundle: nil)
            let RootVC = launchScreen.instantiateViewController(withIdentifier: "Navigate")
            UIApplication.shared.keyWindow?.rootViewController = RootVC
            
          }
        
        alert.addAction(LogOut)
        alert.addAction(cancel)
        
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion:{})
        }
        
    }
    
    // CLASS ENDS HERE
    
}
