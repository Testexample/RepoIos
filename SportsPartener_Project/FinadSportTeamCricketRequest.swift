//
//  FinadSportTeamCricketRequest.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FinadSportTeamCricketRequest: UIViewController


{

    @IBOutlet var CrickItCloseButoon: UIButton!
    
    @IBOutlet var CrickItProfileImage: UIImageView!
    
    @IBOutlet var CrickItMessagebox: UITextField!
    
    @IBOutlet var CrickItSendButoon: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        //CrickItProfileImage Round Shape Design
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        CrickItProfileImage.layer.borderWidth = 1
        CrickItProfileImage!.layer.borderColor = UIColor.lightGray.cgColor
        CrickItProfileImage.layer.cornerRadius = CrickItProfileImage.frame.size.height/2.0
        CrickItProfileImage.layer.cornerRadius = CrickItProfileImage.frame.size.width/2.0
        CrickItProfileImage.clipsToBounds = true
        
        
        //CrickItMessagebox Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        CrickItMessagebox.layer.borderWidth = 1
        CrickItMessagebox.layer.borderColor = borderColor2.cgColor
        CrickItMessagebox.clipsToBounds = true
        CrickItMessagebox.layer.cornerRadius = 5
        CrickItMessagebox.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        CrickItMessagebox.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        


        
    }

   
    
    @IBAction func CrickItCloseButoonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

        
    }

}
