//
//  FindaSportsClass.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 30/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindaSportsClass: UIViewController


{
    
    
    
    @IBOutlet var TenMilesClassBtnOutlet: UIButton!
    
    
    @IBOutlet var TwentyMilesClassBtnOutlet: UIButton!
    
    
    @IBOutlet var ThirtyMilesClassBtnOutlet: UIButton!
    
    @IBOutlet var FreeClassTypeOutlet: UIButton!
    
    @IBOutlet var PaidClassTypeOutlet: UIButton!
    
    @IBOutlet var BothClassTypeOutlet: UIButton!
    
    var btnTag : Int = 0
    var btnTag1 : Int = 0
    
    
    
    
    @IBOutlet var Enternameofsportstextfield: UITextField!
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Enternameofsportstextfield.layer.borderWidth = 1
            Enternameofsportstextfield.layer.borderColor = borderColor1.cgColor
            Enternameofsportstextfield.clipsToBounds = true
            Enternameofsportstextfield.layer.cornerRadius = 5
            Enternameofsportstextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            Enternameofsportstextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
         
            
            
        }
    }

    @IBOutlet var Starttimetextfield: UITextField!
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Starttimetextfield.layer.borderWidth = 1
            Starttimetextfield.layer.borderColor = borderColor1.cgColor
            Starttimetextfield.clipsToBounds = true
            Starttimetextfield.layer.cornerRadius = 5
            Starttimetextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            Starttimetextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }

    @IBOutlet var Endtimetextfield: UITextField!
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Endtimetextfield.layer.borderWidth = 1
            Endtimetextfield.layer.borderColor = borderColor1.cgColor
            Endtimetextfield.clipsToBounds = true
            Endtimetextfield.layer.cornerRadius = 5
            Endtimetextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            Endtimetextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }

    @IBOutlet var Searchbyclassnametextfield: UITextField!
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Searchbyclassnametextfield.layer.borderWidth = 1
            Searchbyclassnametextfield.layer.borderColor = borderColor1.cgColor
            Searchbyclassnametextfield.clipsToBounds = true
            Searchbyclassnametextfield.layer.cornerRadius = 5
            Searchbyclassnametextfield.font = UIFont.init(name: "Raleway, sans-serif", size: 15.0)
            Searchbyclassnametextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    @IBOutlet var SearchclassButoon: UIButton!
    
        {
        didSet
            
        {
            
            
            
            SearchclassButoon.clipsToBounds = true
            SearchclassButoon.layer.cornerRadius = 5
            SearchclassButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    

    
    

    override func viewDidLoad()
    
    {
        super.viewDidLoad()
       
        btnTag = TenMilesClassBtnOutlet.tag
        
        btnTag1 = FreeClassTypeOutlet.tag

       
    }
    
    
    
    //Mark :- Radio Butoons
    
    
    @IBAction func TenMilesClassAction(_ sender: UIButton)
    
    {
        
        btnTag = 1
        
        if btnTag == 1
        {
            TenMilesClassBtnOutlet.setImage(UIImage(named: "30MilesDistance_radio_chacked.jpg"), for : .normal)
            TwentyMilesClassBtnOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            ThirtyMilesClassBtnOutlet.setImage(UIImage(named: "10MilesDistance_radio_unchacked.jpg"), for : .normal)
            btnTag = 0
            print("TenMiles")
        }
        

    }
    
    @IBAction func TwentyMilesClassAction(_ sender: UIButton)
    
    {
        btnTag = 1
        
        if btnTag == 1
        {
            TwentyMilesClassBtnOutlet.setImage(UIImage(named: "30MilesDistance_radio_chacked.jpg"), for : .normal)
            TenMilesClassBtnOutlet.setImage(UIImage(named: "10MilesDistance_radio_unchacked.jpg"), for : .normal)
            ThirtyMilesClassBtnOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            btnTag = 0
            print("TwentyMiles")
        }
        

        
    }
    
    @IBAction func ThirtyMilesClassAction(_ sender: UIButton)
    
    {
        btnTag = 1
        
        if btnTag == 1
        {
           ThirtyMilesClassBtnOutlet .setImage(UIImage(named: "30MilesDistance_radio_chacked.jpg"), for : .normal)
            TwentyMilesClassBtnOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            TenMilesClassBtnOutlet.setImage(UIImage(named: "10MilesDistance_radio_unchacked.jpg"), for : .normal)
            btnTag = 0
            print("ThirtyMiles")
        }
        

        
    }
    
    @IBAction func FreeClassTypeAction(_ sender: UIButton)
    
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            FreeClassTypeOutlet .setImage(UIImage(named: "Both_unchecked.jpg"), for : .normal)
            PaidClassTypeOutlet.setImage(UIImage(named: "paid_unchecked.jpg"), for : .normal)
            BothClassTypeOutlet.setImage(UIImage(named: "Free_unchecked.jpg"), for : .normal)
            btnTag1 = 0
            print("FreeClass")
        }

        
    }
    
    @IBAction func PaidClassTypeAction(_ sender: UIButton)
    
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            PaidClassTypeOutlet .setImage(UIImage(named: "Both_unchecked.jpg"), for : .normal)
            FreeClassTypeOutlet.setImage(UIImage(named: "Free_unchecked.jpg"), for : .normal)
            BothClassTypeOutlet.setImage(UIImage(named: "paid_unchecked.jpg"), for : .normal)
            btnTag1 = 0
            print("PaidClass")
        }

        
    }
    
    @IBAction func BothClassTypeAction(_ sender: UIButton)
    
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            BothClassTypeOutlet .setImage(UIImage(named: "Both_unchecked.jpg"), for : .normal)
            FreeClassTypeOutlet.setImage(UIImage(named: "Free_unchecked.jpg"), for : .normal)
            PaidClassTypeOutlet.setImage(UIImage(named: "paid_unchecked.jpg"), for : .normal)
            btnTag1 = 0
            print("BothClass")
        }

    }
    
    
    
    

  }
