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
    
    // init location Manager user coreLocation.
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupProfileImage()
        setupLocationManager()
        
    }
    
    func setupProfileImage() {
        // Makes image circular
        profileImageView.layer.cornerRadius = profileImageView.frame.width
        profileImageView.clipsToBounds = true
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        // Request the location from the user
        locationManager.requestWhenInUseAuthorization()
        // Start the location tracking
        locationManager.startUpdatingLocation()
    }

}

