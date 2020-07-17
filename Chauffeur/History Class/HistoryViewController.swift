//
//  HistoryViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/6/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class HistoryViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        LoadDesign()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.title = "history"
        
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let pending = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PendingViewController")
        let completed = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CompletedViewController")
        let cancelled = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CancelledViewController")
        
        return [pending, completed, cancelled]
    }
    
    func LoadDesign() {
        
        let UnderLine = UIColor.black
        
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = UnderLine
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .red
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 15
        settings.style.buttonBarRightContentInset = 15
        
        changeCurrentIndexProgressive = { (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = UIColor.lightGray
            newCell?.label.textColor = UIColor.black
            
        }
        
    }
    
    //class ends here 

}
