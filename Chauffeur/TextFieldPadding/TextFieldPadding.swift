//
//  TextFieldPadding.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/20/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import Foundation
import UIKit

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
