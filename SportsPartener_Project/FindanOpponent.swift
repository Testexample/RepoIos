//
//  FindanOpponent.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 08/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindanOpponent: UIViewController

{

    
    @IBOutlet var SportNameTextfield: UITextField!
    
    @IBOutlet var SelectDateTextfield: UITextField!
    
    @IBOutlet var EnterLocationTextfield: UITextField!
    
    
    @IBOutlet var SearchbyTeamnameTextfield: UITextField!
    
    
    @IBOutlet var SearchOpponentButoon: UIButton!
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //SportNameTextfield Border Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        SportNameTextfield.layer.borderWidth = 1
        SportNameTextfield.layer.borderColor = borderColor1.cgColor
        SportNameTextfield.clipsToBounds = true
        SportNameTextfield.layer.cornerRadius = 5
        
        SportNameTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SportNameTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        
        //SelectDateTextfield Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        SelectDateTextfield.layer.borderWidth = 1
        SelectDateTextfield.layer.borderColor = borderColor2.cgColor
        SelectDateTextfield.clipsToBounds = true
        SelectDateTextfield.layer.cornerRadius = 5
        
        SelectDateTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SelectDateTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //EnterLocationTextfield Border Design
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        EnterLocationTextfield.layer.borderWidth = 1
        EnterLocationTextfield.layer.borderColor = borderColor3.cgColor
        EnterLocationTextfield.clipsToBounds = true
        EnterLocationTextfield.layer.cornerRadius = 5
        
        EnterLocationTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        EnterLocationTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        
        //SearchbyTeamnameTextfield Border Design
        
        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        SearchbyTeamnameTextfield.layer.borderWidth = 1
        SearchbyTeamnameTextfield.layer.borderColor = borderColor4.cgColor
        SearchbyTeamnameTextfield.clipsToBounds = true
        SearchbyTeamnameTextfield.layer.cornerRadius = 5
        
        SearchbyTeamnameTextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SearchbyTeamnameTextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //SearchOpponentButoon Border Design
        
        let borderColor5 : UIColor = UIColor(red: 31, green: 206, blue: 109, alpha: 1.0)
        SearchOpponentButoon.layer.borderWidth = 1
        SearchOpponentButoon.layer.borderColor = borderColor5.cgColor
        SearchOpponentButoon.clipsToBounds = true
        SearchOpponentButoon.layer.cornerRadius = 5
        // YoureBirthdayText3.attributedPlaceholder = NSAttributedString(string: "placeholder text",
        // attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
        SearchOpponentButoon.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        SearchOpponentButoon.titleLabel!.font = UIFont.systemFont(ofSize: 28, weight: UIFontWeightBold)
        

        


        
    }

  }
