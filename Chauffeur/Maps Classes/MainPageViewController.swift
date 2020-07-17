//
//  MainPageViewController.swift
//  Chauffeur
//
//  Created by Sridhar Velcharan on 11/6/18.
//  Copyright © 2018 Dataevolve Solutions. All rights reserved.
//

import UIKit
import GoogleMaps

class MainPageViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var MapView: GMSMapView!
    @IBOutlet weak var TopView: UIView!
    @IBOutlet weak var SearchTextfield: UITextField!
    @IBOutlet weak var ShadowView: UIView!
    @IBOutlet weak var Confirm_Lbl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        SetupNav()
        CurrentLocation()
        SearchImage()
        
    }
    
    func SetupNav() {
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        self.navigationController!.navigationBar.isTranslucent = true
        
        self.view.backgroundColor = UIColor.white
    }
    
    func CurrentLocation() {
        
        let camera = GMSCameraPosition.camera(withLatitude: 17.4728551, longitude: 78.3849553, zoom: 14.0)
       // var MapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        let MapView = GMSMapView.map(withFrame: self.view.bounds, camera: camera)
        self.view.addSubview(MapView)
        MapView.isMyLocationEnabled = true
        MapView.settings.myLocationButton = true
        
        do {
            // Set the map style by passing the URL of the local file.
            if let styleURL = Bundle.main.url(forResource: "MapStyle", withExtension: "json") {
                MapView.mapStyle = try GMSMapStyle(contentsOfFileURL: styleURL)
            } else {
                NSLog("Unable to find style.json")
            }
        } catch {
            NSLog("One or more of the map styles failed to load. \(error)")
        }
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 17.4728551, longitude: 78.3849553)
        marker.title = "KPHB 7th Phases"
        marker.snippet = "Hyderabad"
        marker.map = MapView
        
        //MARK:- Presenting TopView nd SearchTextfield on Screen
        self.view.addSubview(TopView)
        self.TopView.addSubview(SearchTextfield)
    }
    
    func SearchImage() {
        
        SearchTextfield.leftViewMode = .always
        let searchImage = UIImageView()
        searchImage.frame = CGRect(x: 80, y: 0, width: 25, height: 23)
        let image = UIImage(named: "search")
        searchImage.image = image
        SearchTextfield.leftView = searchImage
        
        SearchTextfield.delegate = self
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if textField == SearchTextfield {
            SearchTextfield.resignFirstResponder()
            let firstVC = storyboard?.instantiateViewController(withIdentifier: "SelectDestinationViewController") as! SelectDestinationViewController
            navigationController?.pushViewController(firstVC, animated: true)
        }
        
    }
    

    //CLASS ENDS HERE
}
