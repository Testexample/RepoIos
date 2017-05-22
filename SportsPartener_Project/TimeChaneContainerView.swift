//
//  TimeChaneContainerView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class TimeChaneContainerView: UIViewController

{
    @IBOutlet var Timemachineprofileimage: UIImageView!

    
    
    @IBOutlet var TimeMachineView: UIView!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //PopupProfileImage Round Shape Design
        
        Timemachineprofileimage.layer.cornerRadius = Timemachineprofileimage.frame.size.height/2.0
        Timemachineprofileimage.layer.cornerRadius = Timemachineprofileimage.frame.size.width/2.0
        Timemachineprofileimage.clipsToBounds = true
        
        //PendingDesignView Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        TimeMachineView.layer.borderWidth = 1
        TimeMachineView.layer.borderColor = borderColor1.cgColor
        TimeMachineView.layer.cornerRadius = 5
        


        
    }

   
}
