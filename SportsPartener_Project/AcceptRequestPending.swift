//
//  AcceptRequestPending.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 05/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class AcceptRequestPending: UIViewController {

    @IBOutlet var AcceptRequestView: UIView!
    
    @IBOutlet var AcceptRequestYesBtn: UIButton!
    
    @IBOutlet var AcceptRequestNoBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var AcceptRequestCloseBtn: UIButton!
    
    @IBAction func AcceptRequestCloseBtnAction(_ sender: UIButton)
    {
         self.dismiss(animated: true, completion: nil)
    }
    
}
