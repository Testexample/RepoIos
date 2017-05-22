//
//  AcceptedContainerView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class AcceptedContainerView: UIViewController

{
    @IBOutlet var AcceptedProfileimage: UIImageView!

    @IBOutlet var AcceptedDesignView: UIView!
    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()

        
        //PopupProfileImage Round Shape Design
        
        AcceptedProfileimage.layer.cornerRadius = AcceptedProfileimage.frame.size.height/2.0
        AcceptedProfileimage.layer.cornerRadius = AcceptedProfileimage.frame.size.width/2.0
        AcceptedProfileimage.clipsToBounds = true
        
        //PendingDesignView Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        AcceptedDesignView.layer.borderWidth = 1
        AcceptedDesignView.layer.borderColor = borderColor1.cgColor
        AcceptedDesignView.layer.cornerRadius = 5
        

        
    }

    
}
