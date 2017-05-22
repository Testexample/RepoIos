//
//  FindSportTeamCenturyHittersRequest.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindSportTeamCenturyHittersRequest: UIViewController

{
    @IBOutlet var CenturyHittersCloseButoon: UIButton!
    
    @IBOutlet var CenturyHittersProfileImage: UIImageView!
    
    @IBOutlet var CenturyHittersMessageBox: UITextField!

    @IBOutlet var CenturyHittersSebdButoon: UIButton!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //CenturyHittersProfileImage Round Shape Design
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        CenturyHittersProfileImage.layer.borderWidth = 1
        CenturyHittersProfileImage!.layer.borderColor = UIColor.lightGray.cgColor
        CenturyHittersProfileImage.layer.cornerRadius = CenturyHittersProfileImage.frame.size.height/2.0
        CenturyHittersProfileImage.layer.cornerRadius = CenturyHittersProfileImage.frame.size.width/2.0
        CenturyHittersProfileImage.clipsToBounds = true
        
        
        //CenturyHittersMessageBox Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        CenturyHittersMessageBox.layer.borderWidth = 1
        CenturyHittersMessageBox.layer.borderColor = borderColor2.cgColor
        CenturyHittersMessageBox.clipsToBounds = true
        CenturyHittersMessageBox.layer.cornerRadius = 5
        CenturyHittersMessageBox.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        CenturyHittersMessageBox.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)


        
    }

    @IBAction func CenturyHittersCloseButoonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    

}
