//
//  CancelledViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/8/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class CancelledViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var CancelledTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.CancelledTableview.delegate = self
        self.CancelledTableview.dataSource = self
        self.CancelledTableview.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = CancelledTableview.dequeueReusableCell(withIdentifier: "CancelledCell", for: indexPath) as! CancelledTableViewCell
        
        cell.CancelledCardview.backgroundColor = UIColor.white
        cell.CancelledCardview.layer.cornerRadius = 7
        cell.CancelledCardview.layer.shadowColor = UIColor.black.cgColor
        cell.CancelledCardview.layer.shadowOpacity = 0.30
        cell.CancelledCardview.layer.shadowOffset = CGSize(width: 3, height: 3)
        cell.selectionStyle = .none
        
        return cell
        
    }

    //class end here
}

extension CancelledViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return IndicatorInfo(title: "Cancelled")
    }
}
