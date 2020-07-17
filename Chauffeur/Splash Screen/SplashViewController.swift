//
//  SplashViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/1/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    @IBOutlet weak var ShadowView: UIView!
    @IBOutlet weak var ProgressView: UIProgressView!
    
    var time = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .white
        
        // Progress view Configure
        time = Timer.scheduledTimer(timeInterval: 0.0009, target: self, selector: #selector(SplashViewController.start), userInfo: nil, repeats: true)
    }
    
    @objc func start() {
        
        ProgressView.progress += 0.0004
    }

    
    // -----------------
    // CLASS END HERE
    // -----------------
}
