//
//  DeclinedContainerView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class DeclinedContainerView: UIViewController

{
    
    
    @IBOutlet var DeclinedProfileImage: UIImageView!

    @IBOutlet var DeclinedDesignView: UIView!
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //PopupProfileImage Round Shape Design
        
        DeclinedProfileImage.layer.cornerRadius = DeclinedProfileImage.frame.size.height/2.0
        DeclinedProfileImage.layer.cornerRadius = DeclinedProfileImage.frame.size.width/2.0
        DeclinedProfileImage.clipsToBounds = true
        
        //PendingDesignView Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        DeclinedDesignView.layer.borderWidth = 1
        DeclinedDesignView.layer.borderColor = borderColor1.cgColor
        DeclinedDesignView.layer.cornerRadius = 5

        
    }
    

    
}
