//
//  SearchResultPartenerPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 31/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class SearchResultPartenerPage: UIViewController

{
    
    
    @IBOutlet var PopupProfileImage: UIImageView!
    @IBOutlet var profileimage: UIImageView!
    
   
    
    
    
    

    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        
        
        //Profile Image Round Shape Design
        
        profileimage.layer.cornerRadius = profileimage.frame.size.height/2.0
        profileimage.layer.cornerRadius = profileimage.frame.size.width/2.0
        profileimage.clipsToBounds = true
        
        
        
      //Send Request Design
        
        SendRequestOutlet.clipsToBounds = true
        SendRequestOutlet.layer.cornerRadius = 5
        SendRequestOutlet.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
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
    
    func RemoveAnimation()
    {
        UIView.animate(withDuration: 0.25, animations:
            
            {
                self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                self.view.alpha = 0.0
        }, completion: {(finished : Bool) in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
            
        })
    }

    
    
    
    @IBOutlet var SendRequestOutlet: UIButton!
   
    @IBAction func SendRequestButoon(_ sender: UIButton)
    {
        ShowAnimation()
    }
   
    @IBAction func sendaction(_ sender: UIButton)
    {
        RemoveAnimation()

    }
    
   
   
}
