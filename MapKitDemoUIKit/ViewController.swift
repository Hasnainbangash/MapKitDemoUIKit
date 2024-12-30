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
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        } else {
            // Set map to the default location
            setInitialMapLocation()
        }
        
    }
    
    func setupProfileImage() {
        // Makes image circular
        profileImageView.layer.cornerRadius = profileImageView.frame.width / 2
        profileImageView.clipsToBounds = true
    }
    
    func setupLocationManager() {
        locationManager.delegate = self
        // Request the location from the user
        locationManager.requestWhenInUseAuthorization()
        // Start the location tracking
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let userLocation = locations.last else {return}
        // Center the map on the user
        let region = MKCoordinateRegion(
            center: userLocation.coordinate,
            latitudinalMeters: 5000,
            longitudinalMeters: 5000
        )
        mapView.setRegion(region, animated: true)
    }
    
    func setInitialMapLocation() {
        let initialLocation = CLLocation(latitude: 49.254606, longitude: -123.217643)
        let region = MKCoordinateRegion(
            center: initialLocation.coordinate,
            latitudinalMeters: 5000,
            longitudinalMeters: 5000
        )
        mapView.setRegion(region, animated: true)
    }
    
}

