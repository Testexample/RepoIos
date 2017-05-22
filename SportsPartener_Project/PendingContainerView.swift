//
//  PendingContainerView.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class PendingContainerView: UIViewController

{
    
    @IBOutlet var pendingprofileimage: UIImageView!
    

    @IBOutlet var PendingDesignView: UIView!
    
    @IBOutlet var PendingAcceptBtn: UIButton!
    
    @IBOutlet var PendingDeclineBtn: UIButton!
    
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()

     //PopupProfileImage Round Shape Design
        
        pendingprofileimage.layer.cornerRadius = pendingprofileimage.frame.size.height/2.0
        pendingprofileimage.layer.cornerRadius = pendingprofileimage.frame.size.width/2.0
        pendingprofileimage.clipsToBounds = true
        
     //PendingDesignView Design

        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PendingDesignView.layer.borderWidth = 1
        PendingDesignView.layer.borderColor = borderColor1.cgColor
        PendingDesignView.layer.cornerRadius = 5
        
        //PendingAcceptBtn Design
        
        PendingAcceptBtn.clipsToBounds = true
        PendingAcceptBtn.layer.cornerRadius = 5
        
        //PendingDeclineBtn Design
        
        PendingDeclineBtn.clipsToBounds = true
        PendingDeclineBtn.layer.cornerRadius = 5
        
        
        
        

    }

    @IBAction func PendingAcceptPopUp(_ sender: UIButton)
    {
        ShowAnimation()
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController1 = storyBoard.instantiateViewController(withIdentifier: "AcceptRequestPending") as! AcceptRequestPending
        
        self.present(nextViewController1, animated:true, completion:nil)
    }
    
    @IBAction func PendingDeclinePopUp(_ sender: UIButton)
    {
       ShowAnimation() 
    }
    
    
    func ShowAnimation()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations:
            
            {
                
                self.view.alpha = 1.0
                self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
        
    }
    
    
}
