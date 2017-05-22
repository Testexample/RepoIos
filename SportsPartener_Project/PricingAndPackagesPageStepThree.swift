//
//  PricingAndPackagesPageStepThree.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 25/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class PricingAndPackagesPageStepThree: UIViewController
{
    @IBOutlet weak var secondViewHide: UIView!
    
    @IBOutlet weak var thirdViewHide: UIView!
    
    @IBOutlet weak var classTypeView: UIView!
    
    @IBOutlet weak var packageNameTextview: UITextView!
    
    @IBOutlet weak var descriptionOptionaltextview: UITextView!
    
    @IBOutlet weak var dayListTextfield: UITextField!
    
    @IBOutlet weak var weekListTextfield: UITextField!
    
    @IBOutlet weak var priceTextview: UITextView!
    
    @IBOutlet weak var addBtn: UIButton!
    
    @IBOutlet weak var sessionOptionalTextview: UITextView!
    
    @IBOutlet weak var priceTextfield: UITextField!
    
    
    @IBOutlet weak var dollerTextStatic: UITextField!
 
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var freeBtnOutlet: UIButton!
    
    @IBOutlet weak var paidBtnOutlet: UIButton!
    
    @IBOutlet weak var addFacilityTextView: UIView!
    
    @IBOutlet weak var facilityTextHightConstant: NSLayoutConstraint!
    
    
    @IBOutlet weak var facilityTextviewInsideTextview: UITextView!
    
   @IBOutlet weak var freeOnClickHide: NSLayoutConstraint!
    
    @IBOutlet weak var paidOnClickHide: NSLayoutConstraint!
   
    @IBOutlet weak var priceTextOnHide: NSLayoutConstraint!
   
    @IBOutlet weak var thirdViewHideForNextBtn: NSLayoutConstraint!
    
    @IBOutlet weak var nextPriceVerticalspaceconstant: NSLayoutConstraint!
    
    
    
    
    
   // @IBOutlet weak var thirdViewHightConstrain: NSLayoutConstraint!
    
    var btnTag1 : Int = 0
    var btnTag2 : Int = 0
    
    let textView = UITextView(frame: CGRect(x:20.0, y: 500, width:300, height: 50))
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        addFacilityTextView.isHidden = true
        facilityTextviewInsideTextview.isHidden = true
        paidOnClickHide.constant = 30
        nextPriceVerticalspaceconstant.constant = 10
        
        facilityTextviewInsideTextview.resignFirstResponder()
        
        //Mark :- ClassTypeView Border
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        classTypeView.layer.borderWidth = 1
        classTypeView.layer.borderColor = borderColor1.cgColor
        classTypeView.clipsToBounds = true
        classTypeView.layer.cornerRadius = 5
        
        
        
        //Mark :- PackageNameTextview Border
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        packageNameTextview.layer.borderWidth = 1
        packageNameTextview.layer.borderColor = borderColor2.cgColor
        packageNameTextview.clipsToBounds = true
        packageNameTextview.layer.cornerRadius = 5
        packageNameTextview.textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 30, right: 10)
        
        
        //Mark :- descriptionOptionaltextview Border
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        descriptionOptionaltextview.layer.borderWidth = 1
        descriptionOptionaltextview.layer.borderColor = borderColor3.cgColor
        descriptionOptionaltextview.clipsToBounds = true
        descriptionOptionaltextview.layer.cornerRadius = 5
        descriptionOptionaltextview.textContainerInset = UIEdgeInsets(top: 30, left: 10, bottom: 30, right: 10)
        
        //Mark :- dayListTextfield Border
        
        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        dayListTextfield.layer.borderWidth = 1
        dayListTextfield.layer.borderColor = borderColor4.cgColor
        dayListTextfield.clipsToBounds = true
        dayListTextfield.layer.cornerRadius = 5
        
        
        //Mark :- weekListTextfield Border
        
        let borderColor5 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        weekListTextfield.layer.borderWidth = 1
        weekListTextfield.layer.borderColor = borderColor5.cgColor
        weekListTextfield.clipsToBounds = true
        weekListTextfield.layer.cornerRadius = 5
        
        //Mark :- priceTextview Border
        
        let borderColor6 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        priceTextview.layer.borderWidth = 1
        priceTextview.layer.borderColor = borderColor6.cgColor
        priceTextview.clipsToBounds = true
        priceTextview.layer.cornerRadius = 5
        priceTextview.textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 30, right: 10)
        
        
        let doller : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        dollerTextStatic.layer.borderWidth = 1
        dollerTextStatic.layer.borderColor = doller.cgColor
        dollerTextStatic.clipsToBounds = true
        dollerTextStatic.layer.cornerRadius = 5
        
        let indentView = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 20))
        dollerTextStatic.rightView = indentView
        dollerTextStatic.rightViewMode = .always
        
        //Mark :- addBtn Border
        
        let borderColor7 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        addBtn.layer.borderWidth = 1
        addBtn.layer.borderColor = borderColor7.cgColor
        addBtn.clipsToBounds = true
        addBtn.layer.cornerRadius = 5
        
        //Mark :- sessionOptionalTextview Border
        
        let borderColor8 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        sessionOptionalTextview.layer.borderWidth = 1
        sessionOptionalTextview.layer.borderColor = borderColor8.cgColor
        sessionOptionalTextview.clipsToBounds = true
        sessionOptionalTextview.layer.cornerRadius = 5
        sessionOptionalTextview.textContainerInset = UIEdgeInsets(top: 20, left: 10, bottom: 30, right: 10)
        
        //Mark :- sessionOptionalTextview Border
        
        priceTextfield.layer.borderWidth = 3
        priceTextfield.layer.borderColor = UIColor.white.cgColor
        priceTextfield.clipsToBounds = true
        priceTextfield.layer.cornerRadius = 5
        
        let pricetextPedding = UIView(frame: CGRect(x: 10, y: 10, width: 10, height: 20))
        priceTextfield.leftView = pricetextPedding
        priceTextfield.leftViewMode = .always
      
        
        //Mark :- sessionOptionalTextview Border
        
        let borderColor9 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        nextBtn.layer.borderWidth = 1
        nextBtn.layer.borderColor = borderColor9.cgColor
        nextBtn.clipsToBounds = true
        nextBtn.layer.cornerRadius = 5
        
        btnTag1 = freeBtnOutlet.tag
        
        btnTag2 = paidBtnOutlet.tag
        
    }
    
   
    
    @IBAction func freeBtnAction(_ sender: UIButton)
    {
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            freeBtnOutlet.setImage(UIImage(named: "paidRadio.jpg"), for : .normal)
            paidBtnOutlet.setImage(UIImage(named: "freeRadio.jpg"), for : .normal)
            btnTag1 = 0
            print("FreeBtnSelected")
            if thirdViewHide.isHidden
            {
                 thirdViewHide.isHidden = true
                 textView.isHidden = true
                 freeOnClickHide.constant = 10
                 thirdViewHideForNextBtn.constant = 0
                
              
                
            } else
            {
                secondViewHide.isHidden = true
                thirdViewHide.isHidden = false
                freeOnClickHide.constant = 10
                thirdViewHideForNextBtn.constant = 0
            }
            

        }

        
    }

    @IBAction func paidBtnAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            paidBtnOutlet.setImage(UIImage(named: "paidRadio.jpg"), for : .normal)
            freeBtnOutlet.setImage(UIImage(named: "freeRadio.jpg"), for : .normal)
            btnTag2 = 0
            
            print("paidBtnSelected")
            if secondViewHide.isHidden
            {
                secondViewHide.isHidden = false
                thirdViewHide.isHidden = false
                paidOnClickHide .constant = 30
                freeOnClickHide.constant = 628
                thirdViewHideForNextBtn.constant = 625
                addFacilityTextView.isHidden = true
                nextPriceVerticalspaceconstant.constant = 10
                
            }
            else
            {
                secondViewHide.isHidden = true
                thirdViewHide.isHidden = true
                paidOnClickHide.constant = 30
                freeOnClickHide.constant = 628
                thirdViewHideForNextBtn.constant = 625
                 nextPriceVerticalspaceconstant.constant = 10
                
            }
        }
    }
    
    @IBAction func addBtnAction(_ sender: UIButton)
    {
                 paidOnClickHide.constant = 128
                 addFacilityTextView.isHidden = false
                 facilityTextviewInsideTextview.isHidden = false
    }
    
}
//Mark :- Textview Property

extension PricingAndPackagesPageStepThree : UITextViewDelegate
{
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        print("Content Hight\(self.facilityTextviewInsideTextview.contentSize.height)")
        if (self.facilityTextviewInsideTextview.contentSize.height < self.facilityTextHightConstant.constant)
        {
            self.facilityTextviewInsideTextview.isScrollEnabled = true
        }
        else
        {
             self.facilityTextviewInsideTextview.isScrollEnabled = true
        }
        return true
    }
}
