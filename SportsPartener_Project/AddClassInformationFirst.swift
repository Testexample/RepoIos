//
//  AddClassInformationFirst.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 26/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class AddClassInformationFirst: UIViewController

{
    @IBOutlet weak var yourRoleTextField: UITextField!
    
    @IBOutlet weak var sportNameTextfield: UITextField!
    
    @IBOutlet weak var classNameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var activitiesTextView: UITextView!
    
    
    @IBOutlet weak var enterActivitesHeareLabel: UILabel!
    
    @IBOutlet weak var activitiesTextViewHightConstrains: NSLayoutConstraint!
    
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var instructionOptionalTextView: UITextView!
    
    
    
    
    @IBOutlet weak var descriptionTextViewHightConstrains: NSLayoutConstraint!
    
    @IBOutlet weak var instructionTextViewHightConstrains: NSLayoutConstraint!
    
    
    @IBOutlet weak var facilitiesTextView: UITextView!
    
    
    @IBOutlet weak var addBtnForFacilities: UIButton!
    
    
    @IBOutlet weak var addBtnToAddDataInTextView: UITextView!
    
    @IBOutlet weak var nextBtnFacilitiesBetweenTextViewHide: NSLayoutConstraint!
    
     var activityplaceholderLabel : UILabel!
     var descriptionplaceholderLabel : UILabel!
     var instructionOptionalPlaceholderLabel : UILabel!
     var facilitiesPlaceholderLabel : UILabel!
    

    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        addBtnToAddDataInTextView.isHidden = true
        nextBtnFacilitiesBetweenTextViewHide.constant = 8.5
       
        //Mark :- YourRoleTextField
        
        let YourRoleTextFieldborder : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        yourRoleTextField.layer.borderWidth = 1.0
        yourRoleTextField.layer.borderColor = YourRoleTextFieldborder.cgColor
        yourRoleTextField.layer.frame = CGRect(x: 0, y: yourRoleTextField.frame.size.height, width: yourRoleTextField.frame.size.width, height: yourRoleTextField.frame.size.height)
        yourRoleTextField.clipsToBounds = true
        yourRoleTextField.layer.cornerRadius = 5
        let YourRoleTextFieldPedding = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 20))
        yourRoleTextField.leftView = YourRoleTextFieldPedding
        yourRoleTextField.leftViewMode = .always
        
        
        
        //Mark :- SportNameTextfield
        
        let SportNameTextfieldborder : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        sportNameTextfield.layer.borderWidth = 1.0
        sportNameTextfield.layer.borderColor = SportNameTextfieldborder.cgColor
        sportNameTextfield.layer.frame = CGRect(x: 0, y: sportNameTextfield.frame.size.height, width: sportNameTextfield.frame.size.width, height: sportNameTextfield.frame.size.height)
        sportNameTextfield.clipsToBounds = true
        sportNameTextfield.layer.cornerRadius = 5
        let SportNameTextfieldPedding = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 20))
        sportNameTextfield.leftView = SportNameTextfieldPedding
        sportNameTextfield.leftViewMode = .always
        
        
        //Mark :- SportNameTextfield
        
        let ClassNameTextFieldborder : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        classNameTextField.layer.borderWidth = 1.0
        classNameTextField.layer.borderColor = ClassNameTextFieldborder.cgColor
        classNameTextField.layer.frame = CGRect(x: 0, y: classNameTextField.frame.size.height, width: classNameTextField.frame.size.width, height: classNameTextField.frame.size.height)
        classNameTextField.clipsToBounds = true
        classNameTextField.layer.cornerRadius = 5
        let ClassNameTextFieldPedding = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 20))
        classNameTextField.leftView = ClassNameTextFieldPedding
        classNameTextField.leftViewMode = .always
        
        
        //Mark :- SportNameTextfield
        
        let EmailTextFielddborder : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        emailTextField.layer.borderWidth = 1.0
        emailTextField.layer.borderColor = EmailTextFielddborder.cgColor
        emailTextField.layer.frame = CGRect(x: 0, y: classNameTextField.frame.size.height, width: emailTextField.frame.size.width, height: emailTextField.frame.size.height)
        emailTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 5
        let EmailTextFielddborderPedding = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 20))
        emailTextField.leftView = EmailTextFielddborderPedding
        emailTextField.leftViewMode = .always
        
        
        
        //Mark :- ActivitiesTextView Border
        
        activitiesTextView.delegate = self
        
        let ActivitiesTextView : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        activitiesTextView.layer.borderWidth = 1
        activitiesTextView.layer.borderColor = ActivitiesTextView.cgColor
        activitiesTextView.clipsToBounds = true
        activitiesTextView.layer.cornerRadius = 5
        activitiesTextView.textContainerInset = UIEdgeInsets(top:15, left: 10, bottom: 30, right: 10)
        
        // Mark :-  ActivitiesTextView  Placeholder
        
        
        activityplaceholderLabel = UILabel()
        activityplaceholderLabel.text = "Activities"
        activityplaceholderLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightMedium)
        activityplaceholderLabel.sizeToFit()
        activityplaceholderLabel.frame.origin = CGPoint(x: 15, y: 15)
        activityplaceholderLabel.textColor = UIColor.gray
        activitiesTextView.addSubview(activityplaceholderLabel)
        
        
        //Mark :- DescriptionTextView Border
        
        descriptionTextView.delegate = self
        
        let DescriptionTextView : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        descriptionTextView.layer.borderWidth = 1
        descriptionTextView.layer.borderColor = DescriptionTextView.cgColor
        descriptionTextView.clipsToBounds = true
        descriptionTextView.layer.cornerRadius = 5
        descriptionTextView.textContainerInset = UIEdgeInsets(top:15, left: 10, bottom: 30, right: 10)
        
        // Mark :-  DescriptionplaceholderLabel  Placeholder
        
        descriptionplaceholderLabel = UILabel()
        descriptionplaceholderLabel.text = "Description(Optional)"
        descriptionplaceholderLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightMedium)
        descriptionplaceholderLabel.sizeToFit()
        descriptionplaceholderLabel.frame.origin = CGPoint(x: 15, y: 15)
        descriptionplaceholderLabel.textColor = UIColor.gray
        descriptionTextView.addSubview(descriptionplaceholderLabel)
             
        //Mark :- InstructionOptionalTextView Border
        
        instructionOptionalTextView.delegate = self
        
        let InstructionOptionalTextView : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        instructionOptionalTextView.layer.borderWidth = 1
        instructionOptionalTextView.layer.borderColor = InstructionOptionalTextView.cgColor
        instructionOptionalTextView.clipsToBounds = true
        instructionOptionalTextView.layer.cornerRadius = 5
        instructionOptionalTextView.textContainerInset = UIEdgeInsets(top:15, left: 10, bottom: 30, right: 10)
        
        // Mark :-  DescriptionplaceholderLabel  Placeholder
        
        instructionOptionalPlaceholderLabel = UILabel()
        instructionOptionalPlaceholderLabel.text = "Instruction(Optional)"
        instructionOptionalPlaceholderLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightMedium)
        instructionOptionalPlaceholderLabel.sizeToFit()
        instructionOptionalPlaceholderLabel.frame.origin = CGPoint(x: 15, y: 15)
        instructionOptionalPlaceholderLabel.textColor = UIColor.gray
        instructionOptionalTextView.addSubview(instructionOptionalPlaceholderLabel)
        
        //Mark :- FacilitiesTextView Border
        
        instructionOptionalTextView.delegate = self

        
        let FacilitiesTextView : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        facilitiesTextView.layer.borderWidth = 1
        facilitiesTextView.layer.borderColor = FacilitiesTextView.cgColor
        facilitiesTextView.clipsToBounds = true
        facilitiesTextView.layer.cornerRadius = 5
        facilitiesTextView.textContainerInset = UIEdgeInsets(top:15, left: 10, bottom: 30, right: 10)
        
        
        // Mark :-  facilitiesPlaceholderLabel
        
        facilitiesPlaceholderLabel = UILabel()
        facilitiesPlaceholderLabel.text = "Facilities"
        facilitiesPlaceholderLabel.font = UIFont.systemFont(ofSize: 17.0, weight: UIFontWeightMedium)
        facilitiesPlaceholderLabel.sizeToFit()
        facilitiesPlaceholderLabel.frame.origin = CGPoint(x: 15, y: 15)
        facilitiesPlaceholderLabel.textColor = UIColor.gray
        facilitiesTextView.addSubview(facilitiesPlaceholderLabel)
        
        }
   
    @IBAction func addActionForFacilitiesAction(_ sender: UIButton)
    {
        nextBtnFacilitiesBetweenTextViewHide.constant = 135.5
        addBtnToAddDataInTextView.isHidden = false
    }

}

//Mark :- Textview Property

extension AddClassInformationFirst : UITextViewDelegate
{
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool
    {
        print("ActivitiesContent Hight\(self.activitiesTextView.contentSize.height)")
         print("DescriptionContent Hight\(self.descriptionTextView.contentSize.height)")
        print("DescriptionContent Hight\(self.instructionOptionalTextView.contentSize.height)")
        
        if (self.activitiesTextView.contentSize.height < self.activitiesTextViewHightConstrains.constant)
        {
            self.activitiesTextView.isScrollEnabled = true
        }
        else if(self.descriptionTextView.contentSize.height < self.descriptionTextViewHightConstrains.constant)
        {
            self.descriptionTextView.isScrollEnabled = true
        }
        else if(self.instructionOptionalTextView.contentSize.height < self.instructionTextViewHightConstrains.constant)
        {
            self.instructionOptionalTextView.isScrollEnabled = true
        }

        else
        {
            self.activitiesTextView.isScrollEnabled = true
            self.descriptionTextView.isScrollEnabled = true
            self.instructionOptionalTextView.isScrollEnabled = true
        }
        return true
    }
    
    func textViewDidChange(_ textView: UITextView)
    {
        activityplaceholderLabel.isHidden = !activitiesTextView.text.isEmpty
        descriptionplaceholderLabel.isHidden = !descriptionTextView.text.isEmpty
        instructionOptionalPlaceholderLabel.isHidden = !instructionOptionalTextView.text.isEmpty
        facilitiesPlaceholderLabel.isHidden = !facilitiesTextView.text.isEmpty
        
    }

}

