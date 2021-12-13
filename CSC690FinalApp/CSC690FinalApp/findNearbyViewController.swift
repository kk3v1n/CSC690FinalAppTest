//
//  findNearbyViewController.swift
//  CSC690FinalApp
//
//  Created by Kevin Karmacharya on 12/9/21.
//

import UIKit
import MapKit


class findNearbyViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    
    //coordinates of convention center
    //37.3292° N, -121.8890° W
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization() //ask user for thier location
        locationManager.desiredAccuracy = kCLLocationAccuracyBest // get the best location
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        mapView.showsUserLocation = true
        
        let point = MKPointAnnotation()
        point.coordinate = CLLocationCoordinate2D(latitude: 37.3292, longitude: -121.8890)
        
        mapView.addAnnotation(point)
        
        
    }


}
