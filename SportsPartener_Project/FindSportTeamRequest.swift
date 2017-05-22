//
//  FindSportTeamRequest.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindSportTeamRequest: UIViewController


{

    @IBOutlet var RoyalStckersProfile: UIImageView!
    @IBOutlet var RoyalStickerClose: UIButton!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        //RoyalStckersProfile Round Shape Design
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        RoyalStckersProfile.layer.borderWidth = 1
        RoyalStckersProfile!.layer.borderColor = UIColor.lightGray.cgColor
        RoyalStckersProfile.layer.cornerRadius = RoyalStckersProfile.frame.size.height/2.0
        RoyalStckersProfile.layer.cornerRadius = RoyalStckersProfile.frame.size.width/2.0
        RoyalStckersProfile.clipsToBounds = true
        
        
        //MessageBoxTexfield Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        MessageBoxTexfield.layer.borderWidth = 1
        MessageBoxTexfield.layer.borderColor = borderColor2.cgColor
        MessageBoxTexfield.clipsToBounds = true
        MessageBoxTexfield.layer.cornerRadius = 5
        MessageBoxTexfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        MessageBoxTexfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        



       
    }

    @IBOutlet var MessageBoxTexfield: UITextField!
    
    @IBOutlet var RoualStackersSendButoon: UIButton!
   
    @IBAction func RoyalStackersCloseButoonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

    }

}
