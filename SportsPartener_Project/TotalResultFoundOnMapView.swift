//
//  TotalResultFoundOnMapView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 02/05/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces
import MapKit



class TotalResultFoundOnMapView: UIViewController,GMSMapViewDelegate

{
    var locationManager = CLLocationManager()
    
    @IBOutlet var viewForMap: UIView!
    @IBOutlet var resultFoundLabel: UILabel!
    
    var arrayString  = [AnyObject]()
    var coordinate = CLLocationCoordinate2D()
    var markerLat = [Double]()
    var markerLong = [Double]()
    var locationTitleArray = Array<Any>()
    typealias JSONObject = [String:Any]
    var mapView : GMSMapView!
  
    
    
    var results_fsp_latitude = String()
    
    var results_fsp_longitude = String()
    
    var results_fsp_partner_location = String()
    
  

    override func viewDidLoad()
    {
        super.viewDidLoad()
                let userDefaults = UserDefaults.standard.object(forKey: "StoreResultResponsePartener")!
        
        for dict in (userDefaults  as? [JSONObject])!
        {
            let results_reg_id = dict["reg_id"] as! String
            let results_reg_firstname = dict["reg_firstname"] as! String
            let results_reg_lastname = dict["reg_lastname"] as! String
            let results_user_profile_pic = dict["user_profile_pic"] as! String
            let results_rating = dict["rating"] as! String
            results_fsp_partner_location = dict["fsp_partner_location"] as! String
            results_fsp_latitude = dict["fsp_latitude"] as! String
            results_fsp_longitude = dict["fsp_longitude"] as! String
            let results_reg_year = dict["reg_year"] as! String
            
            markerLat.append(Double(results_fsp_latitude)!)
            markerLong.append(Double(results_fsp_longitude)!)
            locationTitleArray.append(results_fsp_partner_location) as AnyObject

        }
        
    }
    override func viewWillLayoutSubviews()
    {
        let camera = GMSCameraPosition.camera(withLatitude: 23.022505,longitude: 72.5713621,zoom: 16)
        
        let mapSize = CGRect(x: CGFloat(viewForMap.bounds.origin.x), y: CGFloat(viewForMap.bounds.origin.y), width: CGFloat(viewForMap.bounds.size.width ), height: CGFloat(viewForMap.bounds.size.height ))
        
        mapView = GMSMapView.map(withFrame: mapSize, camera: camera)
        
        
        if (markerLat.count != 0)
        {
            if markerLat.count > 0
            {
                for index in 0..<markerLat.count
                {
                    let marker = GMSMarker()
                    marker.position = CLLocationCoordinate2DMake(markerLat[index], markerLong[index])
                    marker.title = (locationTitleArray[index] as AnyObject) as! String
                    marker.infoWindowAnchor = CGPoint(x: 0.3, y: 0.4)
                    marker.accessibilityLabel = "\(index)"
                    marker.map = self.mapView
                    print("Marker Lat = \(markerLat.count)")
                    print("Marker Index = \(index)")
                   
                }
                
            }

        }
        
        self.viewForMap.addSubview(mapView)

        
    }
    //    {
    
    //        let marker = GMSMarker()
    //        marker.position = CLLocationCoordinate2D(latitude: 23.022505, longitude: 72.5713621)
    //        marker.title = "Sydney"
    //        marker.snippet = "Australia"
    //        marker.map = self.mapView
    //
    //        let marker1 = GMSMarker()
    //        marker1.position = CLLocationCoordinate2D(latitude:23.1144114, longitude:72.5799335)
    //        marker1.title = "Sydney"
    //        marker1.snippet = "Australia"
    //        marker1.map = self.mapView
    //
    //        //set the camera for the map
    //        self.mapView.camera = camera
    //        self.mapView.isMyLocationEnabled = true
    
    
    
    //
    
    
    
 
}



