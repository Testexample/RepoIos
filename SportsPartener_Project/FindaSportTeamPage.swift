//
//  FindaSportTeamPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 30/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindaSportTeamPage: UIViewController

{
    
    
    @IBOutlet var WhenTodayOutlet: UIButton!
    
    @IBOutlet var WhenTomorrowOutlet: UIButton!
    
    @IBOutlet var WhenSelectDateOutlet: UIButton!
    
    var btnTag : Int = 0
    
    
    @IBOutlet var SelectTenMilesOutlet: UIButton!
    
    @IBOutlet var SelectTwentyMilesOutlet: UIButton!
    
    @IBOutlet var SelectThirtyMilesOutlet: UIButton!
    
    var btnTag1 : Int = 0
    
    @IBOutlet var MaleOutlet: UIButton!
    
    @IBOutlet var FemaleOutlet: UIButton!
    
    @IBOutlet var MixOutlet: UIButton!
    
    @IBOutlet var AnyOutlet: UIButton!
    
    var btnTag2 : Int = 0
    
    
    
    @IBOutlet var Sportnametextfield: UITextField!
    
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Sportnametextfield.layer.borderWidth = 1
            Sportnametextfield.layer.borderColor = borderColor1.cgColor
            Sportnametextfield.clipsToBounds = true
            Sportnametextfield.layer.cornerRadius = 5
            Sportnametextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            Sportnametextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }

    @IBOutlet var SelectDatetextfield: UITextField!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            SelectDatetextfield.layer.borderWidth = 1
            SelectDatetextfield.layer.borderColor = borderColor1.cgColor
            SelectDatetextfield.clipsToBounds = true
            SelectDatetextfield.layer.cornerRadius = 5
            SelectDatetextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            SelectDatetextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    @IBOutlet var EnterlocationTextfield: UITextField!
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            EnterlocationTextfield.layer.borderWidth = 1
            EnterlocationTextfield.layer.borderColor = borderColor1.cgColor
            EnterlocationTextfield.clipsToBounds = true
            EnterlocationTextfield.layer.cornerRadius = 5
            EnterlocationTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            EnterlocationTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }

    
    @IBOutlet var ORsearchbyteamnametextfield: UITextField!
    
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            ORsearchbyteamnametextfield.layer.borderWidth = 1
            ORsearchbyteamnametextfield.layer.borderColor = borderColor1.cgColor
            ORsearchbyteamnametextfield.clipsToBounds = true
            ORsearchbyteamnametextfield.layer.cornerRadius = 5
            ORsearchbyteamnametextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            ORsearchbyteamnametextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    @IBOutlet var searchteambutoon: UIButton!
        {
        didSet
            
        {
            
          
           
            searchteambutoon.clipsToBounds = true
            searchteambutoon.layer.cornerRadius = 5
            searchteambutoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
            
            
            
        }
    }



    override func viewDidLoad()
    
    {
        super.viewDidLoad()

        
        btnTag = WhenTodayOutlet.tag
        
        btnTag1 = SelectTenMilesOutlet.tag
        
        btnTag2 = MaleOutlet.tag
        
    }
    
    
    //Mark :- Radio Butoons
    
    @IBAction func WhenTodayAction(_ sender: UIButton)
    
    {
        btnTag = 1
        
        if btnTag == 1
        {
            WhenTodayOutlet.setImage(UIImage(named: "Selected_when_selected.jpg"), for : .normal)
          WhenTomorrowOutlet.setImage(UIImage(named: "Tomorrow_when_unselected.jpg"), for : .normal)
          WhenSelectDateOutlet.setImage(UIImage(named: "Today_when_unselected.jpg"), for : .normal)
            btnTag = 0
            print("WhenToday")
        }
       
        
    }
    
    @IBAction func WhenTommorowAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            WhenTomorrowOutlet.setImage(UIImage(named: "Selected_when_selected.jpg"), for : .normal)
            WhenTodayOutlet.setImage(UIImage(named: "Tomorrow_when_unselected.jpg"), for : .normal)
            WhenSelectDateOutlet.setImage(UIImage(named: "Today_when_unselected.jpg"), for : .normal)
            btnTag = 0
            print("WhenTomorrow")
        }

    }
    
    @IBAction func WhenSelectDateAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            WhenSelectDateOutlet .setImage(UIImage(named: "Selected_when_selected.jpg"), for : .normal)
            WhenTodayOutlet.setImage(UIImage(named: "Tomorrow_when_unselected.jpg"), for : .normal)
            WhenTomorrowOutlet.setImage(UIImage(named: "Today_when_unselected.jpg"), for : .normal)
            btnTag = 0
            print("WhenSelectDate")
        }
    }
    
    @IBAction func SelectTenMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            SelectTenMilesOutlet .setImage(UIImage(named: "30miles_selcted_radio.jpg"), for : .normal)
            SelectTwentyMilesOutlet.setImage(UIImage(named: "20miles_unselct_radio.jpg"), for : .normal)
            SelectThirtyMilesOutlet.setImage(UIImage(named: "10miles_unselct_radio.jpg"), for : .normal)
            btnTag1 = 0
            print("SelectTenMiles")
        }

    }
    
    @IBAction func SelectTwentyMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
           SelectTwentyMilesOutlet  .setImage(UIImage(named: "30miles_selcted_radio.jpg"), for : .normal)
           SelectTenMilesOutlet.setImage(UIImage(named: "20miles_unselct_radio.jpg"), for : .normal)
            SelectThirtyMilesOutlet.setImage(UIImage(named: "10miles_unselct_radio.jpg"), for : .normal)
            btnTag1 = 0
            print("SelectTwentyMiles")
        }

    }
    
    @IBAction func SelectThirtyMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            SelectThirtyMilesOutlet .setImage(UIImage(named: "30miles_selcted_radio.jpg"), for : .normal)
            SelectTwentyMilesOutlet.setImage(UIImage(named: "20miles_unselct_radio.jpg"), for : .normal)
          SelectTenMilesOutlet.setImage(UIImage(named: "10miles_unselct_radio.jpg"), for : .normal)
            btnTag1 = 0
            print("SelectThirtyMiles")
        }

    }
    
    @IBAction func MaleAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            MaleOutlet .setImage(UIImage(named: "Mix_Selected.jpg"), for : .normal)
           FemaleOutlet.setImage(UIImage(named: "Any_unselect.jpg"), for : .normal)
            MixOutlet.setImage(UIImage(named: "male_unselect.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Female_unselect.jpg"), for : .normal)
            btnTag2 = 0
            
            print("Male")
        }

    }
    
    @IBAction func FemaleAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            FemaleOutlet .setImage(UIImage(named: "Mix_Selected.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "male_unselect.jpg"), for : .normal)
            MixOutlet.setImage(UIImage(named: "Any_unselect.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Female_unselect.jpg"), for : .normal)
            btnTag2 = 0
            
            print("Female")
        }

    }
    
    @IBAction func MixAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            MixOutlet .setImage(UIImage(named: "Mix_Selected.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "male_unselect.jpg"), for : .normal)
           FemaleOutlet.setImage(UIImage(named: "Female_unselect.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Any_unselect.jpg"), for : .normal)
            btnTag2 = 0
            
            print("Mix")
        }

    }
   
    @IBAction func AnyAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            AnyOutlet .setImage(UIImage(named: "Mix_Selected.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "male_unselect.jpg"), for : .normal)
            MixOutlet.setImage(UIImage(named: "Any_unselect.jpg"), for : .normal)
           FemaleOutlet.setImage(UIImage(named: "Female_unselect.jpg"), for : .normal)
            btnTag2 = 0
            
            print("Any")
        }

    }
    
    
    

}
