//
//  ViewController.swift
//  MapKitDemoUIKit
//
//  Created by Elexoft on 30/12/2024.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupProfileImage()
        setupLocationManager()
        
    }
    
    func setupProfileImage() {
        
    }
    
    func setupLocationManager() {
        
    }

}

