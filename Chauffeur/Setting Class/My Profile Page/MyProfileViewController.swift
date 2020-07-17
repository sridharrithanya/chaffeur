//
//  MyProfileViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/19/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class MyProfileViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ProfilePic: UIImageView!
    
    @IBOutlet weak var EmailTextfield: UITextField!
    @IBOutlet weak var MobileNumberTextfield: UITextField!
    @IBOutlet weak var AddressTextfield: UITextField!
    
    @IBOutlet weak var SaveLBL: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "My Profile"
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        SetupDesign()
    }
    
    func SetupDesign() {
        
        //Textfield Padding
        self.EmailTextfield.setPadding()
        self.EmailTextfield.bottomBorder()
        self.EmailTextfield.borderStyle = .none
        self.EmailTextfield.backgroundColor = UIColor.white
        
        self.MobileNumberTextfield.setPadding()
        self.MobileNumberTextfield.bottomBorder()
        self.MobileNumberTextfield.borderStyle = .none
        self.MobileNumberTextfield.backgroundColor = UIColor.white
        
        self.AddressTextfield.setPadding()
        self.AddressTextfield.bottomBorder()
        self.AddressTextfield.borderStyle = .none
        self.AddressTextfield.backgroundColor = UIColor.white
        
        //Profile Picture Corner Circle
        self.ProfilePic.layer.cornerRadius = self.ProfilePic.frame.height/2
        self.ProfilePic.clipsToBounds = true
        self.ProfilePic.layer.borderColor = UIColor.black.cgColor
        self.ProfilePic.layer.borderWidth = 2.0
        
        //Save Button Corner Radius
        self.SaveLBL.layer.cornerRadius = 15
        self.SaveLBL.clipsToBounds = true
        
    }
    
    
    @IBAction func EditProfile(_ sender: UIButton) {
        
        ChangeProfile()
    }
    
    @IBAction func SaveProfile(_ sender: UIButton) {
    }
    
    //Changing Profile Picture With Edit Button
    func ChangeProfile() {
        
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let Gallery = UIAlertAction(title: "Photo Library", style: .default) { (UIAlertAction) in
            
            //Gallery
            self.PhotoLibary()
        }
        
        let Camera = UIAlertAction(title: "Camera", style: .default) { (UIAlertAction) in
            
            //Camera
            self.TakePhotos()
        }
        
        let Cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(Gallery)
        alert.addAction(Camera)
        alert.addAction(Cancel)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func PhotoLibary() {
        
        let Image = UIImagePickerController()
        Image.allowsEditing = true
        Image.sourceType = UIImagePickerController.SourceType.photoLibrary
        Image.delegate = self
        
        present(Image, animated: true, completion: nil)
    }
    
    func TakePhotos() {
        
        let camera = UIImagePickerController()
        camera.allowsEditing = true
        camera.sourceType = UIImagePickerController.SourceType.camera
        camera.delegate = self
        
        present(camera, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let picture = info[.originalImage] as? UIImage
        self.ProfilePic.image = picture
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    // CLASS ENDS HERE
}
