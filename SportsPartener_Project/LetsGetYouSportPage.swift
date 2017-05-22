//
//  LetsGetYouSportPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 29/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit
import CoreTelephony
import CoreLocation
import QuartzCore
import Foundation


class LetsGetYouSportPage: UIViewController,UITextFieldDelegate, UIPickerViewDelegate
    
{
    
    
    @IBAction func letsgetbackbtn(_ sender: UIButton)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "Gettingstartedview") as! ViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @IBOutlet var Displaylabeltext: UILabel!
    
    @IBOutlet var Emailtextlabel: UILabel!
    
    
    @IBOutlet var MobileTextLabel: UILabel!
    
    @IBOutlet var PasswordLabeltext: UILabel!
    
    @IBOutlet var scrollview: UIScrollView!
    
    var iPressed : Bool = false
    
    var DisplaynameStatus : Bool = false
    
    var CheckEmailStatus : Bool = false
    
    var registerinsert : Bool = false
    
    typealias JSONObject = [String:Any]
    
    var CheckMobileStatus : Bool = false
    
    var isValid : Bool = false
    
    
    
    var MobileNo : String!
    
    
    var picker = UIPickerView()
    
    var picker1 = UIPickerView()
    
    var picker3 = UIPickerView()
    
    
    
    
    
    // Mark :- Set The Property Design In LetsGetSportPage
    
    //Mark:- TellYourSelf Label
    
    @IBOutlet var TellYourself: UILabel!
        
        {
        
        
        didSet
            
        {
            
            
            TellYourself.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            TellYourself.font = UIFont.systemFont(ofSize: 20.0, weight: UIFontWeightBold)
            
        }
    }
    
    //Mark:- LetsGetsport Label
    
    @IBOutlet var LetsGetSport: UILabel!
        
        {
        didSet
            
        {
            
            
            LetsGetSport.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            LetsGetSport.font = UIFont.systemFont(ofSize: 30.0, weight: UIFontWeightBold)
            
        }
    }
    
    //Mark:- FirstName Textfield
    
    @IBOutlet var FirstNameText: UITextField!
        
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            FirstNameText.layer.borderWidth = 1
            FirstNameText.layer.borderColor = borderColor1.cgColor
            FirstNameText.clipsToBounds = true
            FirstNameText.layer.cornerRadius = 5
            //          FirstNameText.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            //          attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            FirstNameText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            FirstNameText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    //Mark:- LastName Textfield
    
    @IBOutlet var LatNameText: UITextField!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            LatNameText.layer.borderWidth = 1
            LatNameText.layer.borderColor = borderColor1.cgColor
            LatNameText.clipsToBounds = true
            LatNameText.layer.cornerRadius = 5
            // LatNameText.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            // attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            LatNameText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            LatNameText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    //Mark:- DisplayName Textfield
    
    @IBOutlet var DisplayNameText: UITextField!
        
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            DisplayNameText.layer.borderWidth = 1
            DisplayNameText.layer.borderColor = borderColor1.cgColor
            DisplayNameText.clipsToBounds = true
            DisplayNameText.layer.cornerRadius = 5
            //          DisplayNameText.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            //          attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            DisplayNameText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            DisplayNameText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            var dis = DisplayNameText.text!
            
        }
    }
    
    
    
    
    //Mark:- EmailText Textfield
    
    @IBOutlet var EmailText: UITextField!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            EmailText.layer.borderWidth = 1
            EmailText.layer.borderColor = borderColor1.cgColor
            EmailText.clipsToBounds = true
            EmailText.layer.cornerRadius = 5
            //          EmailText.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            //          attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            EmailText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            EmailText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    
    
    //Mark:- MobileText Textfield
    
    @IBOutlet var MobileText: UITextField!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            MobileText.layer.borderWidth = 1
            MobileText.layer.borderColor = borderColor1.cgColor
            MobileText.clipsToBounds = true
            MobileText.layer.cornerRadius = 5
            //         MobileText.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            //          attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            MobileText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            MobileText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    //Mark:- PasswordText Textfield
    
    @IBOutlet var Passwordtext: UITextField!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Passwordtext.layer.borderWidth = 1
            Passwordtext.layer.borderColor = borderColor1.cgColor
            Passwordtext.clipsToBounds = true
            Passwordtext.layer.cornerRadius = 5
            //          Passwordtext.attributedPlaceholder = NSAttributedString(string: "placeholder text",
            //          attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
            Passwordtext.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            Passwordtext.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
            
            
            
        }
    }
    
    //Mark : - Radio Butoon
    
    @IBOutlet var male: UIButton!
    
    
    @IBOutlet var female: UIButton!
    
    var btnTag    :  Int = 0
    
    var gender : NSString = ""
    
    var profiledata : Bool = false
    
    var selectedButton = UIButton()
    
    @IBOutlet var malelbl: UILabel!
    
    @IBOutlet var femalelbl: UILabel!
    
    
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        btnTag = male.tag
        
        
    }
    
    
    
    @IBAction func Btn_MaleFemale(_ sender: UIButton)
        
    {
        
        
        btnTag = 1
        
        if btnTag == 1
        {
            male.setImage(UIImage(named: "SelectedRadio.jpg"), for : .normal)
            female.setImage(UIImage(named: "UnselectedRadio.jpg"), for : .normal)
            btnTag = 0
            print("Male")
        }
        
    }
    
    @IBAction func Btn_MaleFemaleUnselected(_ sender: UIButton)
    {
        btnTag = 1
        if btnTag == 1 {
            female.setImage(UIImage(named: "SelectedRadio.jpg"), for : .normal)
            male.setImage(UIImage(named: "UnselectedRadio.jpg"), for : .normal)
            btnTag = 0
            print("Female")
        }
    }
    
    //UiPickerView Example
    
    //Your Birthday Textfield For Day
    
    var datasource = [""]
    
    
    var pickOption1 = ["1", "2", "3", "4", "5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"]
    
    
    
    //Your Birthday Textfield For Month
    
    var pickOption2 = ["january", "February", "March", "April", "May","June","July","August","September","October","November","Decemberr"]
    
    
    var pickerOption3 = ["1927","1928","1929","1930","1931","1932","1933","1934","1935","1936","1937","1938","1938","1939","1940","1941","1942","1943","1944","1945","1946","1947","1948","1949","1950","1951","1952","1953","1954","1955","1956","1957","1958","1958","1959","1960","1961","1962","1963","1964","1965","1966","1967","1968","1968","1969","1970","1971","1972","1973","1974","1975","1976","1977","1978","1979","1980","1981","1982","1983","1984","1985","1986","1987","1988","1989","1990","1991","1992","1993","1994","1995","1996","1997","1998","1999","2000","2001","2002"]
    
    //Day Pickerview
    
    @IBOutlet var daybutoon: UIButton!
    @IBOutlet var Daytextfield: UITextField!
    @IBAction func DayPickerview(_ sender: UIButton)
    {
        
        //UIPickerView
        
        
        picker = UIPickerView(frame:CGRect(x: 0, y: 450, width: view.frame.width, height: 300))
        picker.backgroundColor = UIColor.lightGray
        picker.showsSelectionIndicator = true
        picker.delegate = self
        picker.layer.borderColor = UIColor.lightGray.cgColor
        picker.layer.borderWidth = 1
        picker.tag = 1
        self.view.addSubview(picker)
        
        
        
        datasource = pickOption1
        picker.reloadAllComponents()
        
    }
    
    //Month Pickerview
    
    @IBOutlet var Monthbutoon: UIButton!
    @IBOutlet var Monthtextfield: UITextField!
    @IBAction func MonthAction(_ sender: UIButton)
        
    {
        //UIPickerView
        
        
        picker1 = UIPickerView(frame:CGRect(x: 0, y:450, width: view.frame.width, height: 300))
        picker1.backgroundColor = UIColor.lightGray
        picker1.showsSelectionIndicator = true
        picker1.delegate = self
        picker1.layer.borderColor = UIColor.lightGray.cgColor
        picker1.layer.borderWidth = 1
        picker1.tag = 2
        self.view.addSubview(picker1)
        
        
        
        datasource = pickOption2
        picker1.reloadAllComponents()
        
    }
    
    
    //Year Pickerview
    
    @IBOutlet var yearbutoon: UIButton!
    @IBOutlet var yeartextfield: UITextField!
    @IBAction func Yearaction(_ sender: UIButton)
    {
        //UIPickerView
        
        picker3 = UIPickerView(frame:CGRect(x: 0, y: 450, width: view.frame.width, height: 300))
        picker3.backgroundColor = UIColor.lightGray
        picker3.showsSelectionIndicator = true
        picker3.delegate = self
        picker3.layer.borderColor = UIColor.lightGray.cgColor
        picker3.layer.borderWidth = 1
        picker3.tag = 3
        self.view.addSubview(picker3)
        
        
        datasource = pickerOption3
        picker3.reloadAllComponents()
        
        
    }
    
    
    
    //UIPickerView Methods
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        return datasource.count
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        return datasource[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        if (pickerView == picker)
        {
            Daytextfield.text! = datasource[row]
            Daytextfield.becomeFirstResponder()
        }
        else if (pickerView == picker1)
        {
            Monthtextfield.text! = datasource[row]
            Monthtextfield.becomeFirstResponder()
        }
        else if(pickerView == picker3)
        {
            yeartextfield.text! = datasource[row]
            yeartextfield.becomeFirstResponder()
        }
        
        pickerView.isHidden = true
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(false)
        daybutoon.isEnabled = false
        Monthbutoon.isEnabled = false
        yearbutoon.isEnabled = false
    }
    
    
    
    
    
    
    //Mark :- SignUpNowButoon Design
    
    @IBOutlet var SignUpNowButoonOutlet: UIButton!
        
        {
        didSet
            
        {
            
            let borderColor1 : UIColor = UIColor(red: 31, green: 206, blue: 109, alpha: 1.0)
            SignUpNowButoonOutlet.layer.borderWidth = 1
            SignUpNowButoonOutlet.layer.borderColor = borderColor1.cgColor
            SignUpNowButoonOutlet.clipsToBounds = true
            SignUpNowButoonOutlet.layer.cornerRadius = 5
            SignUpNowButoonOutlet.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
            SignUpNowButoonOutlet.titleLabel!.font = UIFont.systemFont(ofSize: 28, weight: UIFontWeightBold)
            
        }
    }
    
    @IBAction func SignUpNowButoonAction(_ sender: UIButton)
        
        
    {
        //First Name Is Not Blank
        
        if FirstNameText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            FirstNameText.layer.borderWidth = 1
            FirstNameText.layer.borderColor = borderColor1.cgColor
            isValid=false
            
            
        }
        else
        {
            FirstNameText.layer.borderColor = UIColor.clear.cgColor
        }
        
        //Last Name Is Not Blank
        
        if LatNameText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            LatNameText.layer.borderWidth = 1
            LatNameText.layer.borderColor = borderColor1.cgColor
            
            isValid=false
            
        }
        else
        {
            LatNameText.layer.borderColor = UIColor.clear.cgColor
        }
        
        //DisplayNameText Is Not Blank
        
        if DisplayNameText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            DisplayNameText.layer.borderWidth = 1
            DisplayNameText.layer.borderColor = borderColor1.cgColor
            
            isValid=false
            
        }
        else if (DisplayNameText.text!.characters.count < 5)
        {
            Displaylabeltext.text = "Enter Minimum 5 Characters"
            self.DisplayNameText.layer.borderColor = UIColor.clear.cgColor
            print("Enter Minimum 5 Characters..")
            Displaylabeltext.isHidden = !DisplayNameText.isHidden
            isValid=false
            
        }
        else if CheckDisplayName(Displaynametext: DisplayNameText.text!)
        {
            DispatchQueue.main.async
                {
                    self.DisplayNameText.layer.borderColor = UIColor.clear.cgColor
            }
            
        }
            
        else
        {
            DispatchQueue.main.async
                {
                    self.DisplayNameText.layer.borderColor = UIColor.clear.cgColor
                    self.Displaylabeltext.isHidden = !self.Displaylabeltext.isHidden
                    self.Displaylabeltext.text = " "
            }
        }
        
        //EmailText Is Not Blank
        
        if EmailText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            EmailText.layer.borderWidth = 1
            EmailText.layer.borderColor = borderColor1.cgColor
            Emailtextlabel.text = "Enter Valid Email"
            isValid=false
            
        }
        else
        {
            EmailText.layer.borderColor = UIColor.clear.cgColor
            Emailtextlabel.text = ""
            
        }
        
        //EmailText Validation
        
        let providedEmailAddress = EmailText.text
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        
        if isEmailAddressValid
        {
            DispatchQueue.main.async
                {
                    self.EmailText.layer.borderColor = UIColor.clear.cgColor
            }
        }
        else
        {
            DispatchQueue.main.async
                {
                    self.EmailText.layer.borderColor = UIColor.red.cgColor
                    
                    self.Emailtextlabel.text = "Enter Valid Email"
                    
                    self.isValid=false
            }
        }
        
        
        //MobileText Is Not Blank
        
        
        if MobileText.text == ""
        {
            
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            MobileText.layer.borderWidth = 1
            MobileText.layer.borderColor = borderColor1.cgColor
            MobileTextLabel.text = "Enter Valid Mobile Number"
            isValid=false
            
        }
        else
        {
            MobileText.layer.borderColor = UIColor.clear.cgColor
            MobileTextLabel.text = " "
        }
        
        //Mobile Number Validation
        
        let providedMobileNo = MobileText.text
        
        let isMobileNoValid = validate(value: providedMobileNo!)
        var mobilesuccess = Int(providedMobileNo!)
        
        
        if !isMobileNoValid
        {
            MobileText.layer.borderColor = UIColor.clear.cgColor
            print("Mobile Number is valid")
            
        }
            
        else if(MobileText.text!.characters.count < 10)
        {
            
            MobileText.layer.borderColor = UIColor.red.cgColor
            MobileTextLabel.text = "Enter Valid Mobile Number"
            isValid=false
            
            print("Enter  10 Characters ")
        }
        else if CheckedMobileNumber(Mobiletext: mobilesuccess!)
        {
            DispatchQueue.main.async
                {
                    self.MobileText.layer.borderColor = UIColor.clear.cgColor
            }
        }
        else
        {
            MobileTextLabel.text = " "
            
        }
        
        
        // let a : Int = Int(MobileNo)!
        print("MobileNo = \(mobilesuccess)")
        
        //print(a)
        // success = a
        
        //Passwordtext Is Not Blank
        if Passwordtext.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            Passwordtext.layer.borderWidth = 1
            Passwordtext.layer.borderColor = borderColor1.cgColor
            isValid=false
            
        }
        else if Passwordtext.text!.characters.count < 7 && Passwordtext.text!.characters.count < 20
        {
            Passwordtext.layer.borderColor = UIColor.red.cgColor
            print("Enter Maximum 7-20 Characters..")
            PasswordLabeltext.text = "Make sure the password is between 7-20 characters long."
            isValid=false
            
        }
        else
        {
            Passwordtext.layer.borderColor = UIColor.clear.cgColor
            print("Password is Valid..")
            PasswordLabeltext.text = ""
        }
        
        //DayTextfieldValidation
        
        if Daytextfield.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            Daytextfield.layer.borderWidth = 1
            Daytextfield.layer.borderColor = borderColor1.cgColor
            Daytextfield.layer.cornerRadius = 5
            isValid=false
            
            
        }
        else
        {
            Daytextfield.layer.borderColor = UIColor.clear.cgColor
        }
        
        //MonthTextfieldValidation
        if Monthtextfield.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            Monthtextfield.layer.borderWidth = 1
            Monthtextfield.layer.borderColor = borderColor1.cgColor
            Monthtextfield.layer.cornerRadius = 5
            isValid=false
            
            
        }
        else
        {
            Monthtextfield.layer.borderColor = UIColor.clear.cgColor
        }
        
        //YearTextfieldValidation
        if yeartextfield.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            yeartextfield.layer.borderWidth = 1
            yeartextfield.layer.borderColor = borderColor1.cgColor
            yeartextfield.layer.cornerRadius = 5
            isValid=false
            
        }
        else
        {
            yeartextfield.layer.borderColor = UIColor.clear.cgColor
        }
        if CheckedEmailId(CheckedEmailtext: EmailText.text!)&&CheckDisplayName(Displaynametext: DisplayNameText.text!)&&CheckedMobileNumber(Mobiletext: mobilesuccess!)
        {
            
            
            let password = Passwordtext.text!
            let daytext = Daytextfield.text!
            let monthtext = Monthtextfield.text!
            let yeartext = yeartextfield.text!
            let emailtext = EmailText.text!
            let mobiletext = MobileText.text!
            
            if (password != "")&&(daytext != "")&&(monthtext != "")&&(yeartext != "")&&(emailtext != "")&&(mobiletext != "")
                
            {
                isValid = true
            }
            
            if (isValid)
            {
                
                
                
                let myUrl = URL(string: "   ")
                
                var request = URLRequest(url:myUrl!)
                
                request.httpMethod = "POST"// Compose a query string
                
                let postString = "fname=\(FirstNameText.text!)&lname=\(LatNameText.text!)&email=\(EmailText.text!)&uni_name=\(DisplayNameText.text!)&mobile=\(MobileText.text!)&password=\(Passwordtext.text!)&day=\(Daytextfield.text!)&month=\(Monthtextfield.text!)&year=\(yeartextfield.text!)&code=\(01)"
                print(postString)
                
                request.httpBody = postString.data(using: String.Encoding.utf8)
                
                
                
                
                //Using Session
                
                let task = URLSession.shared.dataTask(with: request as URLRequest)
                {
                    
                    data, response, error in
                    if  error != nil
                        
                    {                                                 // check for fundamental networking error
                        print("error=\(error)")
                        return
                    }
                    //Get Response
                    
                    let responseString = String(data: data!, encoding: String.Encoding.utf8)
                    print("responseString = \(responseString ?? "User instance is nil")")
                    
                    //Get data using Json
                    
                    var json: NSDictionary!
                    
                    do
                        
                    {
                        json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                        print(json)
                        
                        self.process(rawData : json as! LetsGetYouSportPage.JSONObject)
                        
                        
                        
                    }
                        
                    catch
                    {
                        print(error)
                    }
                    
                    }.resume()
            }
        }
    }
    
    
    
    //EmailText Validation Function
    
    func isValidEmailAddress(emailAddressString: String) -> Bool
    {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailAddressString)
        
        return  isValid
    }
    
    //MobileText Validation Function
    
    func validate(value: String) -> Bool
    {
        let charcterSet  = NSCharacterSet(charactersIn: "+0123456789").inverted
        let inputString = value.components(separatedBy: charcterSet)
        let filtered = inputString.joined(separator: "")
        return  value == filtered
    }
    //MobileText Validation Function Textfield Deligate Method
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard let text = textField.text else { return true }
        let newLength = text.characters.count + string.characters.count - range.length
        return newLength <= 10 // Bool
        
    }
    
    //Mark := CheckDisplayName Using Json
    
    func CheckDisplayName(Displaynametext : String) -> Bool
    {
        
        
        
        UserDefaults.standard.set(DisplayNameText.text!, forKey: "displayname")
        
        UserDefaults.standard.synchronize()
        
        
        
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/display_name_check.php");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "displayname=\(Displaynametext)"
        
        print(postString)
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        
        //request.httpBody = postParameters.data(using: String.Encoding.utf8) as! String
        
        
        //Using Session
        
        let task = URLSession.shared.dataTask(with: request as URLRequest)
        {
            
            data, response, error in
            if  error != nil
                
            {                                                 // check for fundamental networking error
                print("error=\(error)")
                return
            }
            //Get Response
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(responseString ?? "User instance is nil")")
            
            //Get data using Json
            
            var json: NSDictionary!
            
            do
                
            {
                json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                // print(json)
                
                let Display_name = json["display_name"] as? String
                print(Display_name ?? "User instance is nil")
                
                if (Display_name!.contains("true"))
                {
                    self.DisplaynameStatus = true
                }
                else if (Display_name!.contains("false"))
                {
                    DispatchQueue.main.async
                        {
                            self.isValid = false
                            self.DisplaynameStatus = false
                            self.DisplayNameText.layer.borderColor = UIColor.red.cgColor
                            self.Displaylabeltext.isHidden = false
                            self.Displaylabeltext.text! = "*That display name is taken. Try another."
                    }
                }
                else
                    
                {
                    self.Displaylabeltext.isHidden = true
                }
                
            }
                
            catch
            {
                print(error)
            }
            
            
            //Checked json Object and print
            
            
            
            }.resume()
        
        return DisplaynameStatus
        
    }
    
    //Mark := CheckedEmailId Using Json
    
    func CheckedEmailId(CheckedEmailtext : String) ->Bool
    {
        UserDefaults.standard.set(EmailText.text!, forKey: "email")
        
        UserDefaults.standard.synchronize()
        
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/email_address_check.php");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=\(CheckedEmailtext)"
        
        print(postString)
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        
        //request.httpBody = postParameters.data(using: String.Encoding.utf8) as! String
        
        
        //Using Session
        
        let task = URLSession.shared.dataTask(with: request as URLRequest)
        {
            
            data, response, error in
            if  error != nil
                
            {                                                 // check for fundamental networking error
                print("error=\(error)")
                return
            }
            //Get Response
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(responseString ?? "User instance is nil")")
            
            //Get data using Json
            
            var json: NSDictionary!
            
            do
                
            {
                json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                
                
                let register_email = json["reg_email"] as? String
                //print(register_email ?? "User instance is nil")
                
                if (register_email!.contains("true"))
                {
                    self.CheckEmailStatus = true
                }
                else if (register_email!.contains("false"))
                {
                    DispatchQueue.main.async
                        {
                            self.CheckEmailStatus = false
                            self.EmailText.layer.borderColor = UIColor.red.cgColor
                            self.Emailtextlabel.isHidden = false
                            self.Emailtextlabel.text! = "* That email id is taken. Try another."
                            self.isValid = false
                    }
                }
                else
                {
                    self.Emailtextlabel.isHidden = true
                }
                
            }
                
            catch
            {
                print(error)
            }
            
            }.resume()
        
        return CheckEmailStatus
        
    }
    
    //Mark := CheckedMobileNumber Using Json
    
    func CheckedMobileNumber(Mobiletext: Int) -> Bool
        
    {
        
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/mobile_check.php");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "q2=\(Mobiletext)"
        
        print(postString)
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        
        //request.httpBody = postParameters.data(using: String.Encoding.utf8) as! String
        
        
        //Using Session
        
        let task = URLSession.shared.dataTask(with: request as URLRequest)
        {
            
            data, response, error in
            if  error != nil
                
            {                                                 // check for fundamental networking error
                print("error=\(error)")
                return
            }
            //Get Response
            
            let responseString = String(data: data!, encoding: String.Encoding.utf8)
            print("responseString = \(responseString ?? "User instance is nil")")
            
            //Get data using Json
            
            var json: NSDictionary!
            
            do
                
            {
                json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                
                let mobile_number = json["succes"] as? Int
                print(mobile_number ?? "User instance is nil")
                
                if (mobile_number == 0)
                {
                    self.CheckMobileStatus = true
                }
                else if (mobile_number == 1)
                {
                    DispatchQueue.main.async
                        {
                            self.CheckMobileStatus = false
                            self.MobileText.layer.borderColor = UIColor.red.cgColor
                            self.MobileTextLabel.isHidden = false
                            self.MobileTextLabel.text! = "*That mobile number is taken. Try another."
                            self.isValid = false
                    }
                }
                else
                {
                    self.MobileTextLabel.isHidden = true
                }
            }
            catch
            {
                print(error)
            }
            
            }.resume()
        
        return CheckMobileStatus
    }
    
    func CountryCode()
    {
        let info = CTTelephonyNetworkInfo()
        let carrier: CTCarrier? = info.subscriberCellularProvider
        let mobileCountryCode: String? = carrier?.mobileCountryCode
        let carrierName: String? = carrier?.carrierName
        let isoCountryCode: String? = carrier?.isoCountryCode
        
        print(info )
        print(carrier ?? "User instance is nil")
        print(mobileCountryCode ?? "User instance is nil")
        print(carrierName ?? "User instance is nil")
        print(isoCountryCode ?? "User instance is nil")
        
    }
    
    
    
    //Mark:- RegisterdInsert Json
    func process(rawData: JSONObject) -> Bool
    {
        if let storeDataArray = rawData["regresponse"]  as? [JSONObject] {
            for store in storeDataArray {
                let registerId = store["reg_id"] as! String
                let SuccessId = store["success"] as! Int
                print(registerId )
                print(SuccessId )
                
                
                if registerId != nil
                {
                    DispatchQueue.main.async
                        {
                            self.registerinsert=true
                            UserDefaults.standard.set(registerId, forKey: "reg_id")
                            UserDefaults.standard.set("Please choose the sport mode", forKey: "success2!")
                            
                            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                            
                            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ChooseModeOption") as! ChooseModeOption
                            
                            self.present(nextViewController, animated:true, completion:nil)
                            
                            
                            print("Please choose the sport mode")
                    }
                    
                }
                
                
            }
        }
        
        return registerinsert
    }
    
    
}






