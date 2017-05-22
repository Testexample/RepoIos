//
//  GoogleMap.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 15/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces


class GoogleMap : UIViewController,UISearchBarDelegate,LocateOnTheMap,GMSAutocompleteFetcherDelegate
    
{
    
    
    
    /**
     * Called when an autocomplete request returns an error.
     * @param error the error that was received.
     */
    public func didFailAutocompleteWithError(_ error: Error) {
        //        resultText?.text = error.localizedDescription
    }
    
    /**
     * Called when autocomplete predictions are available.
     * @param predictions an array of GMSAutocompletePrediction objects.
     */
    public func didAutocomplete(with predictions: [GMSAutocompletePrediction]) {
        //self.resultsArray.count + 1
        
        for prediction in predictions {
            
            if let prediction = prediction as GMSAutocompletePrediction!{
                self.resultsArray.append(prediction.attributedFullText.string)
            }
        }
        self.searchResultController.reloadDataWithArray(self.resultsArray)
        //   self.searchResultsTable.reloadDataWithArray(self.resultsArray)
        print(resultsArray)
    }
    
    
    @IBOutlet var GoogleMapContainerView: UIView!
    
    // var GoogleMapsView : GMSMapView!
    var searchResultController : SearchResultsController!
    var resultsArray = [String]()
    var gmsFetcher: GMSAutocompleteFetcher!
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
    }
    
    
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(true)
        
        //  self.GoogleMapsView = GMSMapView(frame: self.GoogleMapContainerView.frame)
        // self.view.addSubview(self.GoogleMapsView)
        searchResultController = SearchResultsController()
        searchResultController.delegate = self
        gmsFetcher = GMSAutocompleteFetcher()
        gmsFetcher.delegate = self
        
    }
    
    
    override func didReceiveMemoryWarning()
        
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    
    @IBAction func SearchWithGoogleMap(_ sender: UIBarButtonItem)
    {
        
        let searchController = UISearchController(searchResultsController: searchResultController)
        searchController.searchBar.delegate = self
        self.present(searchController, animated:true, completion: nil)
        
    }
    
    
    
    /**
     Locate map with longitude and longitude after search location on UISearchBar
     
     - parameter lon:   longitude location
     - parameter lat:   latitude location
     - parameter title: title of address location
     */
    func locateWithLongitude(_ lon: Double, andLatitude lat: Double, andTitle title: String) {
        
        
        
        DispatchQueue.main.async { () -> Void in
            
            let position = CLLocationCoordinate2DMake(lat, lon)
            let marker = GMSMarker(position: position)
            
            let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: lon, zoom: 20)
            //   self.GoogleMapsView.camera = camera
            
            marker.title = "Address : \(title)"
            print("Address : \(title)")
            //  marker.map = self.GoogleMapsView
            print("MarkerMap =\(marker.map)")
            
            
            //SearchResult Stored
            
            UserDefaults.standard.setValue(title, forKey: "Gioaddress")
            
            self.performSegue(withIdentifier: "EnterDetailPageGoogleSegue", sender: self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let GoSimpleSignUp3 = segue.destination as! EnterSomeDetailPage
        
        if segue.identifier ==  "EnterDetailPageGoogleSegue"
        {
            
        }
    }
    
    
    /**
     Searchbar when text change
     
     - parameter searchBar:  searchbar UI
     - parameter searchText: searchtext description
     */
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        let placeClient = GMSPlacesClient()
        
        
        placeClient.autocompleteQuery(searchText, bounds: nil, filter: nil)  {(results, error: Error?) -> Void in
            // NSError myerr = Error;
            print("Error @%",Error.self)
            
            self.resultsArray.removeAll()
            if results == nil {
                return
            }
            
            for result in results! {
                if let result = result as? GMSAutocompletePrediction {
                    self.resultsArray.append(result.attributedFullText.string)
                }
            }
            
            self.searchResultController.reloadDataWithArray(self.resultsArray)
            
        }
        
        
        self.resultsArray.removeAll()
        gmsFetcher?.sourceTextHasChanged(searchText)
        
        
    }
    
    
    
    
    
    
    
}
