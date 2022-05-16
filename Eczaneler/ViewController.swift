//
//  ViewController.swift
//  Eczaneler
//
//  Created by Ömer Faruk Turhan on 12.10.2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
   let locationManger = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        locationManger.requestWhenInUseAuthorization()
        
        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManger.distanceFilter = kCLDistanceFilterNone
        
        locationManger.startUpdatingLocation()
        
        mapView.showsUserLocation = true
        
    }

 

}
