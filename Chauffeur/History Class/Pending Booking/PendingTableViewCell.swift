//
//  PendingTableViewCell.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/8/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class PendingTableViewCell: UITableViewCell {

    @IBOutlet weak var Cardview: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
//        self.contentView.backgroundColor = UIColor(displayP3Red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    //CLASS ENDS HERE
}
