//
//  CompletedTableViewCell.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/8/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class CompletedTableViewCell: UITableViewCell {

    @IBOutlet weak var CompletedCardview: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
