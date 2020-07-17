//
//  SavedVehicesViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/19/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit

class SavedVehicesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var VehicleCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "My vehicle"
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        SetupVehicle()
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(AddVehicle))
        self.navigationItem.rightBarButtonItem = add
    }
    
    @objc func AddVehicle() {
        
        let AddVehicle = storyboard?.instantiateViewController(withIdentifier: "AddVehicleViewController") as! AddVehicleViewController
        self.navigationController?.pushViewController(AddVehicle, animated: true)
    }
    
    func SetupVehicle() {
        
        self.VehicleCollectionView.delegate = self
        self.VehicleCollectionView.dataSource = self
        
        self.VehicleCollectionView.backgroundColor = UIColor(displayP3Red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        self.view.backgroundColor = UIColor(displayP3Red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1)
        
        VehicleCollectionView.register(UINib.init(nibName: "SavedVehiclesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        
        let FlowLayout = UPCarouselFlowLayout()
        FlowLayout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: 200)
        FlowLayout.scrollDirection = .horizontal
        FlowLayout.sideItemScale = 0.8
        FlowLayout.sideItemAlpha = 1.0
        FlowLayout.spacingMode = .fixed(spacing: 5.0)
        VehicleCollectionView.collectionViewLayout = FlowLayout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = VehicleCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! SavedVehiclesCollectionViewCell
        cell.OwnerName.text = "G.S.Velcharan"
        cell.CarModal.text = "Volvo S90"
        cell.RcNumber.text = "AP37AR4564"
        cell.DateAdded.text = "17-11-2018"
        return cell
    }
    

    //CLASS ENDS HERE
}
