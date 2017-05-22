//
//  Findaplayer.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 08/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class Findaplayer: UIViewController


{
    @IBOutlet var SelectTeamTextfield: UITextField!
    
    @IBOutlet var SelectDateTextfield: UITextField!
    
    
    @IBOutlet var EnterLocationTextfield: UITextField!
    
    @IBOutlet var AgeFromTextField: UITextField!
    
    
    @IBOutlet var AgeToTextfield: UITextField!
    
    @IBOutlet var SearchPlayerButoon: UIButton!
    
    
    @IBOutlet var PlayerTodayOutlet: UIButton!
    
    @IBOutlet var PlayerTomorrowOutlet: UIButton!
    
    @IBOutlet var PlayerSelectOutlet: UIButton!
    
    @IBOutlet var PlayerTenMilesOutlet: UIButton!
    
    
    @IBOutlet var PlayerTwentyMilesOutlet: UIButton!
    
    @IBOutlet var PlayerThirtyMilesOutlet: UIButton!
    
    @IBOutlet var MaleOutlet: UIButton!
    
    @IBOutlet var AnyOutlet: UIButton!
    
    @IBOutlet var FemaleOutlet: UIButton!
    
    
    
    var btnTag : Int = 0
    var btnTag1 : Int = 0
    var btntag2 : Int = 0
    

    override func viewDidLoad()
    
    
    {
        super.viewDidLoad()
        
        btnTag = PlayerTodayOutlet.tag
        
        //SelectTeamTextfield Border Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        SelectTeamTextfield.layer.borderWidth = 1
        SelectTeamTextfield.layer.borderColor = borderColor1.cgColor
        SelectTeamTextfield.clipsToBounds = true
        SelectTeamTextfield.layer.cornerRadius = 5
      
        SelectTeamTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SelectTeamTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        
        //SelectTeamTextfield Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        SelectDateTextfield.layer.borderWidth = 1
        SelectDateTextfield.layer.borderColor = borderColor2.cgColor
        SelectDateTextfield.clipsToBounds = true
        SelectDateTextfield.layer.cornerRadius = 5
        
        SelectDateTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SelectDateTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //SelectTeamTextfield Border Design
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        EnterLocationTextfield.layer.borderWidth = 1
        EnterLocationTextfield.layer.borderColor = borderColor3.cgColor
        EnterLocationTextfield.clipsToBounds = true
        EnterLocationTextfield.layer.cornerRadius = 5
        
        EnterLocationTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        EnterLocationTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        
        //SelectTeamTextfield Border Design
        
        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        AgeFromTextField.layer.borderWidth = 1
        AgeFromTextField.layer.borderColor = borderColor4.cgColor
        AgeFromTextField.clipsToBounds = true
        AgeFromTextField.layer.cornerRadius = 5
        
        AgeFromTextField.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        AgeFromTextField.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //SelectTeamTextfield Border Design
        
        let borderColor5 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        AgeToTextfield.layer.borderWidth = 1
        AgeToTextfield.layer.borderColor = borderColor5.cgColor
        AgeToTextfield.clipsToBounds = true
        AgeToTextfield.layer.cornerRadius = 5
        
        AgeToTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        AgeToTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //SelectTeamTextfield Border Design
        
        let borderColor6 : UIColor = UIColor(red: 31, green: 206, blue: 109, alpha: 1.0)
        SearchPlayerButoon.layer.borderWidth = 1
        SearchPlayerButoon.layer.borderColor = borderColor6.cgColor
        SearchPlayerButoon.clipsToBounds = true
        SearchPlayerButoon.layer.cornerRadius = 5
        // YoureBirthdayText3.attributedPlaceholder = NSAttributedString(string: "placeholder text",
        // attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
        SearchPlayerButoon.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SearchPlayerButoon.titleLabel!.font = UIFont.systemFont(ofSize: 28, weight: UIFontWeightBold)

    }
    
    
    //Mark :- Radio Butoons

    @IBAction func PlayerTodayAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            PlayerTodayOutlet.setImage(UIImage(named: "selected_date.jpg"), for : .normal)
            PlayerTomorrowOutlet.setImage(UIImage(named: "Tomorrow_unselect.jpg"), for : .normal)
            PlayerSelectOutlet.setImage(UIImage(named: "Today_unselect.jpg"), for : .normal)
            btnTag = 0
            print("Today")
        }

    }
    
    @IBAction func PlayerTomorrowAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            PlayerTomorrowOutlet.setImage(UIImage(named: "selected_date.jpg"), for : .normal)
            PlayerTodayOutlet.setImage(UIImage(named: "Tomorrow_unselect.jpg"), for : .normal)
            PlayerSelectOutlet.setImage(UIImage(named: "Today_unselect.jpg"), for : .normal)
            btnTag = 0
            print("Tomorrow")
        }

    }
    
    @IBAction func PlayerSelectAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            PlayerSelectOutlet.setImage(UIImage(named: "selected_date.jpg"), for : .normal)
            PlayerTodayOutlet.setImage(UIImage(named: "Tomorrow_unselect.jpg"), for : .normal)
            PlayerTomorrowOutlet.setImage(UIImage(named: "Today_unselect.jpg"), for : .normal)
            btnTag = 0
            print("SelectDate")
        }

    }
    
    @IBAction func PlayerTenMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            PlayerTenMilesOutlet.setImage(UIImage(named: "when_30miles_select.jpg"), for : .normal)
            PlayerTwentyMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
            PlayerThirtyMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
            btnTag1 = 0
            print("TenMiles")
        }

    }
    
    @IBAction func PlayerTwentyMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            PlayerTwentyMilesOutlet.setImage(UIImage(named: "when_30miles_select.jpg"), for : .normal)
            PlayerTenMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
            PlayerThirtyMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
            btnTag1 = 0
            print("TwentyMiles")
        }
        

    }
    
    @IBAction func PlayerThirtyMilesAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
             PlayerThirtyMilesOutlet.setImage(UIImage(named: "when_30miles_select.jpg"), for : .normal)
            PlayerTenMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
           PlayerTwentyMilesOutlet.setImage(UIImage(named: "when_10miles_unselect.jpg"), for : .normal)
            btnTag1 = 0
            print("ThirtyMiles")
        }

    }
    
    @IBAction func MaleAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            MaleOutlet.setImage(UIImage(named: "Any_Checked.jpg"), for : .normal)
            FemaleOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            btnTag1 = 0
            print("Male")
        }
 
    }
    
    @IBAction func FemaleAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            FemaleOutlet.setImage(UIImage(named: "Any_Checked.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Female_Unchacked.jpg"), for : .normal)
            btnTag1 = 0
            print("Female")
        }

    }
    
    @IBAction func AnyAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
           AnyOutlet .setImage(UIImage(named: "Any_Checked.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            FemaleOutlet.setImage(UIImage(named: "Female_Unchacked.jpg"), for : .normal)
            btnTag1 = 0
            print("Any")
        }

    }
}
