//
//  InvitationPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 04/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class InvitationPage: UIViewController

{

    @IBOutlet var SegmentedController: UISegmentedControl!
    
    @IBOutlet var Pendingview: UIView!
      
    @IBOutlet var Acceptedview: UIView!
    
    
    @IBOutlet var Declinedview: UIView!
    
    @IBOutlet var Timemachineview: UIView!
    
    @IBOutlet var ExpiredView: UIView!
   
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        
        //Segmented Controller Design
        
        let font = UIFont.systemFont(ofSize: 20)
        SegmentedController.setTitleTextAttributes([NSFontAttributeName: font], for: .normal)
        
        let segAttributes: NSDictionary = [
            NSForegroundColorAttributeName: UIColor.black]
        
        SegmentedController.setTitleTextAttributes(segAttributes as [NSObject : AnyObject], for: UIControlState.selected)
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        SegmentedController.layer.borderWidth = 1
        SegmentedController!.layer.borderColor = UIColor.lightGray.cgColor
        SegmentedController.clipsToBounds = true
        
        
        
        //Child  Segmented Controller Design
        
        let font1 = UIFont.systemFont(ofSize:13)
        SegmentedChiledOutlet.setTitleTextAttributes([NSFontAttributeName: font1], for: .normal)
        
        let segAttributes1: NSDictionary = [
            NSForegroundColorAttributeName: UIColor.black]
        
        SegmentedChiledOutlet.setTitleTextAttributes(segAttributes1 as [NSObject : AnyObject], for: UIControlState.selected)
        
        
        

        
        
        

       
    }

    @IBAction func SegmentedControllAction(_ sender: UISegmentedControl)
    
    {
        if SegmentedController.selectedSegmentIndex == 0
        {
            SegmentedChiledOutlet.isHidden = false
            
            SegmentedChiledOutlet.isHighlighted = true
            
        }
        if SegmentedController.selectedSegmentIndex == 1
        {
            SegmentedChiledOutlet.isHidden = false
            
            SegmentedChiledOutlet.isHighlighted = true
        }
        

        
    }
    
    @IBOutlet var SegmentedChiledOutlet: UISegmentedControl!
    
    @IBAction func SegmentedChiledAction(_ sender: UISegmentedControl)
    
    {
        //Pendingview
        
        if (sender.selectedSegmentIndex == 0)
        {
            UIView.animate(withDuration: 0.5, animations:
            {
                self.Pendingview.alpha = 1
                
            })
    
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Pendingview.alpha = 0
                    
            })
        }
        
       // Acceptedview
        
        if (sender.selectedSegmentIndex == 1)
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Acceptedview.alpha = 1
                    
            })
            
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Acceptedview.alpha = 0
                    
            })
        }
        
        //Declinedview
        
        if (sender.selectedSegmentIndex == 2)
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Declinedview.alpha = 1
                    
            })
            
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Declinedview.alpha = 0
                    
            })
        }
        //Timemachineview
        
        if (sender.selectedSegmentIndex == 3)
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Timemachineview.alpha = 1
                    
            })
            
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.Timemachineview.alpha = 0
                    
            })
        }
        
        //ExpiredView
        
        if (sender.selectedSegmentIndex == 4)
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.ExpiredView.alpha = 1
                    
            })
            
        }
        else
        {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.ExpiredView.alpha = 0
                    
            })
        }



        

        
        
    

     

        
//       
//       if(sender.selectedSegmentIndex == 0)
//       {
//        UIView.animate(withDuration: 0.5, animations:
//            {
//                self.Pendingview.alpha = 1
//                self.Acceptedview.alpha = 0
//                self.Declinedview.alpha = 1
//               self.Timemachineview.alpha = 0
//////                self.ExpiredView.alpha = 4.0
//                
//                           })
//       }
//        else
//       {
//            UIView.animate(withDuration: 0.5, animations:
//                {
//                    self.Pendingview.alpha = 0
//                    self.Acceptedview.alpha = 1
//                    self.Declinedview.alpha = 0
//                  self.Timemachineview.alpha = 1
////                   self.ExpiredView.alpha = 4
//            })
//        }
//
//        
        
        
        
        

    }
}
