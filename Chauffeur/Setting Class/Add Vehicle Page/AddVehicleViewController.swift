//
//  AddVehicleViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/20/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class AddVehicleViewController: UIViewController {

    @IBOutlet weak var Save_LBL: UIButton!
    
    //TextFields
    @IBOutlet weak var OwnerName: UITextField!
    @IBOutlet weak var CarModel: UITextField!
    @IBOutlet weak var RcNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Add Vehicle"
        
        self.Save_LBL.layer.cornerRadius = 15
        self.Save_LBL.clipsToBounds = true
        
        TextFieldPadding()
    }
    
    func TextFieldPadding() {
        
        self.OwnerName.setPadding()
        self.OwnerName.bottomBorder()
        self.OwnerName.borderStyle = .none
        self.OwnerName.backgroundColor = UIColor.white
        
        self.CarModel.setPadding()
        self.CarModel.bottomBorder()
        self.CarModel.borderStyle = .none
        self.CarModel.backgroundColor = UIColor.white
        
        self.RcNumber.setPadding()
        self.RcNumber.bottomBorder()
        self.RcNumber.borderStyle = .none
        self.RcNumber.backgroundColor = UIColor.white
    }
    
    @IBAction func SaveVehicle(_ sender: UIButton) {
    }
    
    
    // ---------------------------
    //     CLASS ENDS HERE
    // ---------------------------

}


