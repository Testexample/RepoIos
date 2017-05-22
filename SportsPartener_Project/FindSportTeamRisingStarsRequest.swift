//
//  FindSportTeamRisingStarsRequest.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindSportTeamRisingStarsRequest: UIViewController

{
    @IBOutlet var RisingStarsCloseButoon: UIButton!

    @IBOutlet var RisingStarsProfileImage: UIImageView!
    
    @IBOutlet var RisingStarsMessageBox: UITextField!
    
    
    @IBOutlet var RisingStarsSenButoon: UIButton!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        //RisingStarsProfileImage Round Shape Design
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        RisingStarsProfileImage.layer.borderWidth = 1
        RisingStarsProfileImage!.layer.borderColor = UIColor.lightGray.cgColor
        RisingStarsProfileImage.layer.cornerRadius = RisingStarsProfileImage.frame.size.height/2.0
        RisingStarsProfileImage.layer.cornerRadius = RisingStarsProfileImage.frame.size.width/2.0
        RisingStarsProfileImage.clipsToBounds = true
        
        
        //RisingStarsMessageBox Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        RisingStarsMessageBox.layer.borderWidth = 1
        RisingStarsMessageBox.layer.borderColor = borderColor2.cgColor
        RisingStarsMessageBox.clipsToBounds = true
        RisingStarsMessageBox.layer.cornerRadius = 5
        RisingStarsMessageBox.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        RisingStarsMessageBox.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)

        

    }

    @IBAction func RisingStarsCloseButoonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

    }
    
}
