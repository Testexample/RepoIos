//
//  FindPlayerTotalResult.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 08/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindPlayerTotalResult: UIViewController


{
    @IBOutlet var PlayerTotalResultProfile: UIImageView!

    @IBOutlet var FindPlayerSenRequestButoon: UIButton!
    
    
    
    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()
        
        
        //PlayerTotalResultProfile Image Round Shape Design
        
        PlayerTotalResultProfile.layer.cornerRadius = PlayerTotalResultProfile.frame.size.height/2.0
        PlayerTotalResultProfile.layer.cornerRadius = PlayerTotalResultProfile.frame.size.width/2.0
        PlayerTotalResultProfile.clipsToBounds = true
        
        
        //FindPlayerSenRequestButoon Request Design
        
        FindPlayerSenRequestButoon.clipsToBounds = true
        FindPlayerSenRequestButoon.layer.cornerRadius = 5
        FindPlayerSenRequestButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
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

    @IBAction func PlayerSendRequestAction(_ sender: UIButton)
    {
        ShowAnimation()
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FindPlayerInvitation") as! FindPlayerInvitation
        self.present(nextViewController, animated:true, completion:nil)
    }

    
}
