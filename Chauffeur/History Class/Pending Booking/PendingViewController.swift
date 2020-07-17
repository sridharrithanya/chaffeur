//
//  PendingViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/8/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class PendingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var list = ["test", "test2", "test3", "test4"]
    
    @IBOutlet weak var PendingTableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.PendingTableview.delegate = self
        self.PendingTableview.dataSource = self
        self.PendingTableview.separatorStyle = .none
//        self.PendingTableview.backgroundColor = UIColor(displayP3Red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = PendingTableview.dequeueReusableCell(withIdentifier: "PendingCell", for: indexPath) as! PendingTableViewCell
        
        cell.Cardview.backgroundColor = UIColor.white
        cell.Cardview.layer.cornerRadius = 7
        cell.Cardview.layer.shadowColor = UIColor.black.cgColor
        cell.Cardview.layer.shadowOpacity = 0.30
        cell.Cardview.layer.shadowOffset = CGSize(width: 3, height: 3)
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath.row + 1)
        
        
    }
    
    
    //class end here
}

extension PendingViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return IndicatorInfo(title: "Ongoing")
    }
}
