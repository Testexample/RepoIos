//
//  ExpiredContainerView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class ExpiredContainerView: UIViewController

{

    @IBOutlet var Expiredprofileimage: UIImageView!
    
    @IBOutlet var ExpiredDesignView: UIView!
    
    @IBOutlet var InviteAgainButoon: UIButton!
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //PopupProfileImage Round Shape Design
        
        Expiredprofileimage.layer.cornerRadius = Expiredprofileimage.frame.size.height/2.0
        Expiredprofileimage.layer.cornerRadius = Expiredprofileimage.frame.size.width/2.0
        Expiredprofileimage.clipsToBounds = true
        
        //PendingDesignView Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        ExpiredDesignView.layer.borderWidth = 1
        ExpiredDesignView.layer.borderColor = borderColor1.cgColor
        ExpiredDesignView.layer.cornerRadius = 5
        
        
        
        //InviteAgainButoon Design
        
     
        
        InviteAgainButoon.clipsToBounds = true
        InviteAgainButoon.layer.cornerRadius = 5

        
    }

    
}
