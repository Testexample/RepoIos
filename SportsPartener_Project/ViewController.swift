//
//  ViewController.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 28/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController
    
    
{
    //MARK :- GetSarted Butoon Font-Family Style
    
    @IBOutlet var GetSartedButoon: UIButton!
        
        {
        didSet
            
        {
            
            GetSartedButoon.tintColor = UIColor.black
            GetSartedButoon.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            GetSartedButoon.titleLabel!.font = UIFont.systemFont(ofSize: 30.0, weight: UIFontWeightBold)
            
        }
    }
    
    
    @IBOutlet var TellYourself: UILabel!
        
        {
        didSet
            
        {
            
            TellYourself.tintColor = UIColor.black
            TellYourself.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            TellYourself.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightLight)
            
        }
    }
    
    @IBOutlet var AlreadyMember: UILabel!
        
        {
        didSet
            
        {
            
            AlreadyMember.tintColor = UIColor.black
            AlreadyMember.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            AlreadyMember.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightLight)
            
        }
    }
    
    
    
    //MARK :- SignUp Butoon Design
    
    @IBOutlet weak var signupoutlet: UIButton!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 44/222, green: 151/222, blue: 222/222, alpha: 1.0)
            signupoutlet.layer.borderWidth = 1
            signupoutlet.layer.borderColor = borderColor1.cgColor
            signupoutlet.clipsToBounds = true
            signupoutlet.layer.cornerRadius = 5
            signupoutlet.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            signupoutlet.titleLabel!.font = UIFont.systemFont(ofSize: 22.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    
    
    
    override func viewDidLoad()
        
        
    {
        super.viewDidLoad()
        
        
        
    }
    
    
    @IBAction func SignupPageAction(_ sender: Any)
    {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "LetsGetYouSportPage") as! LetsGetYouSportPage
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
    @IBAction func LoginButoonAction(_ sender: UIButton)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SporterciseLoginPage") as! SporterciseLoginPage
        self.present(nextViewController, animated:true, completion:nil)
    }
}

