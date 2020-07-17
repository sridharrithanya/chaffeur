//
//  CompletedViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/8/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class CompletedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Completedtableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.Completedtableview.delegate = self
        self.Completedtableview.dataSource = self
        self.Completedtableview.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Completedtableview.dequeueReusableCell(withIdentifier: "CompletedCell", for: indexPath) as! CompletedTableViewCell
        
        cell.CompletedCardview.backgroundColor = UIColor.white
        cell.CompletedCardview.layer.cornerRadius = 7
        cell.CompletedCardview.layer.shadowColor = UIColor.black.cgColor
        cell.CompletedCardview.layer.shadowOpacity = 0.30
        cell.CompletedCardview.layer.shadowOffset = CGSize(width: 3, height: 3)
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let more = UITableViewRowAction(style: .normal, title: "More") { action, index in
            print("more button tapped")
        }
        more.backgroundColor = .red
        return [more]
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    
    //class end here
}

extension CompletedViewController: IndicatorInfoProvider {
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        
        return IndicatorInfo(title: "Completed")
    }
}
