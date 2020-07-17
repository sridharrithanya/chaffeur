//
//  SavedVehiclesCollectionViewCell.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/20/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class SavedVehiclesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ShadowView: UIView!
    @IBOutlet weak var OwnerName: UILabel!
    @IBOutlet weak var CarModal: UILabel!
    @IBOutlet weak var RcNumber: UILabel!
    @IBOutlet weak var DateAdded: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        DispatchQueue.main.async {
            self.ShadowView.layer.cornerRadius = 13.0
            self.ShadowView.layer.shadowColor = UIColor.lightGray.cgColor
            self.ShadowView.layer.shadowOpacity = 0.5
            self.ShadowView.layer.shadowOpacity = 10.0
            self.ShadowView.layer.shadowOffset = .zero
            self.ShadowView.layer.shadowPath = UIBezierPath(rect: self.ShadowView.bounds).cgPath
            self.ShadowView.layer.shouldRasterize = true
        }
        
    }

}
