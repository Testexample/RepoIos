//
//  SearchResultPoPUpMenuPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 31/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class SearchResultPoPUpMenuPage: UIViewController

{
    
    @IBOutlet var sendprofileimage: UIImageView!

    @IBOutlet var EnterMapLocationText: UITextField!
    @IBOutlet var Startimetext: UITextField!
    @IBOutlet var EndTimeText: UITextField!
    
    @IBOutlet var EnterLocation: UITextField!
    
    @IBOutlet var SendButoon: UIButton!
    @IBOutlet var ClosePopup: UIButton!
    @IBOutlet var uiviewdesign: UIView!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        uiviewdesign.layer.borderColor = borderColor.cgColor
        uiviewdesign.layer.cornerRadius = 5
        uiviewdesign.layer.borderWidth = 1

        
        
        
        //PopupProfileImage Round Shape Design
        
        sendprofileimage.layer.cornerRadius = sendprofileimage.frame.size.height/2.0
        sendprofileimage.layer.cornerRadius = sendprofileimage.frame.size.width/2.0
        sendprofileimage.clipsToBounds = true
        
        
        //EnterMapLocation Border Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        EnterMapLocationText.layer.borderWidth = 1
        EnterMapLocationText.layer.borderColor = borderColor1.cgColor
        EnterMapLocationText.clipsToBounds = true
        EnterMapLocationText.layer.cornerRadius = 5
        EnterMapLocationText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        EnterMapLocationText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //StartTimetextfield Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Startimetext.layer.borderWidth = 1
        Startimetext.layer.borderColor = borderColor2.cgColor
        Startimetext.clipsToBounds = true
        Startimetext.layer.cornerRadius = 5
        Startimetext.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Startimetext.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //StartTimetextfield Border Design
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        EndTimeText.layer.borderWidth = 1
        EndTimeText.layer.borderColor = borderColor3.cgColor
        EndTimeText.clipsToBounds = true
        EndTimeText.layer.cornerRadius = 5
        EndTimeText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        EndTimeText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)

        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        EnterLocation.layer.borderWidth = 1
        EnterLocation.layer.borderColor = borderColor4.cgColor
        EnterLocation.clipsToBounds = true
        EnterLocation.layer.cornerRadius = 5
        EnterLocation.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        EnterLocation.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)


        //Send Border Design
        
        SendButoon.clipsToBounds = true
        SendButoon.layer.cornerRadius = 5
        SendButoon.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SendButoon.titleLabel!.font = UIFont.systemFont(ofSize: 22.0, weight: UIFontWeightMedium)
        

        
    }

    @IBAction func ClosePoPupaction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

    }
    
}
