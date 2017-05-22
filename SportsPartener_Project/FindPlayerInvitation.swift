//
//  FindPlayerInvitation.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 08/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindPlayerInvitation: UIViewController


{

    @IBOutlet var FindPlayerSendInvitationprofile: UIImageView!
    
    @IBOutlet var PlayerVenueLocation: UITextField!
    
    
    @IBOutlet var PlayerView: UIView!
    
    @IBOutlet var PlayerFrom: UITextField!
    
    
    @IBOutlet var PlayerTo: UITextField!
    
    
    @IBOutlet var PlayerMessage: UITextField!
    
    
    @IBOutlet var PlayerSendRequest: UIButton!
    
    
    @IBOutlet var PlayerInviteClosed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       //FindPlayerView Design
        
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PlayerView.layer.borderColor = borderColor.cgColor
        PlayerView.layer.cornerRadius = 5
        PlayerView.layer.borderWidth = 1
        
        

        
        
        //FindPlayerSendInvitationprofile Image Round Shape Design
        
        FindPlayerSendInvitationprofile.layer.cornerRadius = FindPlayerSendInvitationprofile.frame.size.height/2.0
        FindPlayerSendInvitationprofile.layer.cornerRadius = FindPlayerSendInvitationprofile.frame.size.width/2.0
        FindPlayerSendInvitationprofile.clipsToBounds = true
        
        //PlayerVenueLocation Border Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PlayerVenueLocation.layer.borderWidth = 1
        PlayerVenueLocation.layer.borderColor = borderColor1.cgColor
        PlayerVenueLocation.clipsToBounds = true
        PlayerVenueLocation.layer.cornerRadius = 5
        
        PlayerVenueLocation.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        PlayerVenueLocation.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //PlayerFrom Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PlayerFrom.layer.borderWidth = 1
        PlayerFrom.layer.borderColor = borderColor2.cgColor
        PlayerFrom.clipsToBounds = true
        PlayerFrom.layer.cornerRadius = 5
        
        PlayerFrom.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        PlayerFrom.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //PlayerTo Border Design
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PlayerTo.layer.borderWidth = 1
        PlayerTo.layer.borderColor = borderColor3.cgColor
        PlayerTo.clipsToBounds = true
        PlayerTo.layer.cornerRadius = 5
        
        PlayerTo.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        PlayerTo.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //PlayerMessage Border Design
        
        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PlayerMessage.layer.borderWidth = 1
        PlayerMessage.layer.borderColor = borderColor4.cgColor
        PlayerMessage.clipsToBounds = true
        PlayerMessage.layer.cornerRadius = 5
        
        PlayerMessage.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        PlayerMessage.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //FindPlayerSenRequestinvitation Request Design
        
        PlayerSendRequest.clipsToBounds = true
        PlayerSendRequest.layer.cornerRadius = 5
        PlayerSendRequest.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        

        
        
    }

    @IBAction func PlayerInvitationClosedAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

    }
    
}
