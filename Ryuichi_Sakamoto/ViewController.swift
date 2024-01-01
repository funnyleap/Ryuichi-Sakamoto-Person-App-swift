//
//  ViewController.swift
//  Ryuichi Sakamoto Person App
//
//  Created by KiyonoKara on 11/15/20.
//  Copyright © 2020 KiyonoKara. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var mapView: MKMapView!

    @IBAction func changeMapType(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            mapView.mapType = .standard
        } else {
            mapView.mapType = .satellite
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation = CLLocation(latitude: 35.6933, longitude: 139.7499)
        let regionRadius: CLLocationDistance = 800.0
        let region = MKCoordinateRegion(center: initialLocation.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(region, animated: true)
        
        mapView.delegate = self
        
    }


}

