//
//  FindSportAhmedabadblasterRequest.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindSportAhmedabadblasterRequest: UIViewController

{
    @IBOutlet var AhmedabadblasterCloseButoon: UIButton!

    @IBOutlet var AhmedabadblasterProfileImage: UIImageView!
    
    @IBOutlet var AhmedabadblasterMessageBox: UITextField!
    
    
    @IBOutlet var AhmedabadblasterSendButoon: UIButton!
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //AhmedabadblasterProfileImage Round Shape Design
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        AhmedabadblasterProfileImage.layer.borderWidth = 1
        AhmedabadblasterProfileImage!.layer.borderColor = UIColor.lightGray.cgColor
        AhmedabadblasterProfileImage.layer.cornerRadius = AhmedabadblasterProfileImage.frame.size.height/2.0
        AhmedabadblasterProfileImage.layer.cornerRadius = AhmedabadblasterProfileImage.frame.size.width/2.0
        AhmedabadblasterProfileImage.clipsToBounds = true
        
        
        //CenturyHittersMessageBox Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        AhmedabadblasterMessageBox.layer.borderWidth = 1
        AhmedabadblasterMessageBox.layer.borderColor = borderColor2.cgColor
        AhmedabadblasterMessageBox.clipsToBounds = true
        AhmedabadblasterMessageBox.layer.cornerRadius = 5
        AhmedabadblasterMessageBox.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        AhmedabadblasterMessageBox.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        


       
    }

    @IBAction func AhmedabadblasterCloseButoonAction(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)

    }
   
   
}
