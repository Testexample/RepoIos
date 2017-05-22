//
//  FindaSportClassPopUpMenu.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 03/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindaSportClassPopUpMenu: UIViewController

{
    
    @IBOutlet var FindSportClassProfileImage: UIImageView!

    @IBOutlet var Footballlabel: UILabel!
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        //Football Label Design
        
        Footballlabel.clipsToBounds = true
        Footballlabel.layer.cornerRadius = 5
        Footballlabel.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Footballlabel.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //ViewClass Button Design
        
        ViewclassButoon.clipsToBounds = true
        ViewclassButoon.layer.cornerRadius = 5
        ViewclassButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        //FindSportClassProfileImage Design
        
        
        
        //PopupProfileImage Round Shape Design
        
        FindSportClassProfileImage.layer.cornerRadius = FindSportClassProfileImage.frame.size.height/2.0
        FindSportClassProfileImage.layer.cornerRadius = FindSportClassProfileImage.frame.size.width/2.0
        FindSportClassProfileImage.clipsToBounds = true

        
        
        

       
    }

    @IBOutlet var ViewclassButoon: UIButton!
  
}
