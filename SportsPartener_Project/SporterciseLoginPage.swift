//
//  SporterciseLoginPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 07/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class SporterciseLoginPage: UIViewController
    
    
{
    
    @IBOutlet var UsernameIconimage: UIImageView!
    
    
    @IBOutlet var PasswordIconimage: UIImageView!
    
    
    
    @IBOutlet var LoginEmailText: UITextField!
    
    @IBOutlet var LoginPaaswordText: UITextField!
    
    
    @IBOutlet var LoginPageOutlet: UIButton!
    
    
    @IBOutlet var Validationlabel: UILabel!
    
    @IBOutlet var EmailValidationlabel: UILabel!
    
    
    var createsession : String!
    
    var isValid : Bool = false
    
    var isLoggedIn_succes1 : Bool!
    
    var isLoggedIn_succes2 : Bool!
    
    var GoToChoosemode = NSMutableDictionary()
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        
        //LoginEmailText Border Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        LoginEmailText.layer.borderWidth = 1
        LoginEmailText.layer.borderColor = borderColor1.cgColor
        LoginEmailText.clipsToBounds = true
        LoginEmailText.layer.cornerRadius = 5
        LoginEmailText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        LoginEmailText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //LoginPaaswordText Border Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        LoginPaaswordText.layer.borderWidth = 1
        LoginPaaswordText.layer.borderColor = borderColor2.cgColor
        LoginPaaswordText.clipsToBounds = true
        LoginPaaswordText.layer.cornerRadius = 5
        LoginPaaswordText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        LoginPaaswordText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //LoginPageOutlet Border Design
        
        let borderColor3 : UIColor = UIColor(red: 31, green: 206, blue: 109, alpha: 1.0)
        LoginPageOutlet.layer.borderWidth = 1
        LoginPageOutlet.layer.borderColor = borderColor3.cgColor
        LoginPageOutlet.clipsToBounds = true
        LoginPageOutlet.layer.cornerRadius = 5
        // YoureBirthdayText3.attributedPlaceholder = NSAttributedString(string: "placeholder text",
        // attributes: [NSForegroundColorAttributeName: UIColor.darkGray])
        LoginPageOutlet.titleLabel!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        LoginPageOutlet.titleLabel!.font = UIFont.systemFont(ofSize: 28, weight: UIFontWeightBold)
        
        
        //Username Image Icon Position Set
        let imageView = UIImageView()
        let leftimage = UIImage(named: "username")
        let leftView = UIView()
        
        imageView.image = leftimage
        leftView.frame = CGRect(x: 0, y: 0, width:40, height: 40)
        imageView.frame = CGRect(x: 6, y: 5, width: 40, height: 30)
        LoginEmailText.leftView = leftView
        LoginEmailText.leftViewMode = UITextFieldViewMode.always
        leftView.addSubview(imageView)
        
        
        //password Image Icon Position Set
        let imageview2 = UIImageView()
        let leftimage1 = UIImage(named: "password")
        let leftView1 = UIView()
        
        imageview2.image = leftimage1
        leftView1.frame = CGRect(x: 0, y: 0, width:40, height: 40)
        imageview2.frame = CGRect(x: 6, y: 5, width: 40, height: 30)
        LoginPaaswordText.leftView = leftView1
        LoginPaaswordText.leftViewMode = UITextFieldViewMode.always
        leftView1.addSubview(imageview2)
        
        
        
        
        
    }
    
    //Login Page Validations Function
    
    func LoginpageValidation()
    {
        
        //LoginEmailText Is Not Blank
        
        if LoginEmailText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            LoginEmailText.layer.borderWidth = 1
            LoginEmailText.layer.borderColor = borderColor1.cgColor
            
        }
        else
        {
            LoginEmailText.layer.borderColor = UIColor.clear.cgColor
        }
        
        //EmailText Validation
        
        let providedEmailAddress = LoginEmailText.text
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress!)
        
        if isEmailAddressValid
        {
            DispatchQueue.main.async
            {
            self.LoginEmailText.layer.borderColor = UIColor.clear.cgColor
            self.LoginEmailText.layer.borderWidth = 1
            print("Email address is valid")
            self.EmailValidationlabel.text = ""
            
            }
        }
        else
        {
            DispatchQueue.main.async
                {
            self.LoginEmailText.layer.borderColor = UIColor.red.cgColor
            self.LoginEmailText.layer.borderWidth = 1
            self.EmailValidationlabel.text = "Enter Valid Email"
            print("Email address is not valid")
            }
            
        }
        
        //Password Validation
        
        if LoginPaaswordText.text == ""
        {
            let borderColor1 : UIColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1.0)
            LoginPaaswordText.layer.borderWidth = 1
            LoginPaaswordText.layer.borderColor = borderColor1.cgColor
        }
        else if LoginPaaswordText.text!.characters.count < 7 && LoginPaaswordText.text!.characters.count < 20
        {
            LoginPaaswordText.layer.borderColor = UIColor.red.cgColor
            print("Enter Maximum 7-20 Characters..")
            Validationlabel.text = "Password is between 7-20 characters long."
        }
        else
        {
            LoginPaaswordText.layer.borderColor = UIColor.clear.cgColor
            Validationlabel.text = ""
            
        }
        
        
        
        
        
    }
    
    
    
    //EmailText Validation Function
    
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
    
    //Mark := CheckedEmailId Using Json
    
    func CheckedEmailIdJson()
    {
        
        UserDefaults.standard.set(LoginEmailText.text!, forKey: "email")
        
        UserDefaults.standard.set(LoginPaaswordText.text!, forKey: "password")
        
        UserDefaults.standard.synchronize()
        
        
        
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/login_code.php")
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "email=\(LoginEmailText.text!)&password=\(LoginPaaswordText.text!)"
        
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
            
            var json: NSArray!
            
            do
                
            {
                json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSArray
                print(json)
                
                if let item = json[0] as? [String: AnyObject]
                {
                    let success = item["success"] as? Int
                    print(success ?? "User instance is nil")
                    
                    let reg_id = item["reg_id"] as? String
                    print(reg_id ??  "User instance is nil")
                    
                    let log_mode = item["log_mode"] as? String
                    print(log_mode ??  "User instance is nil")
                    
                    
                    if (success == 0)
                    {
                        print("Invalid email or password")
                        self.Validationlabel.text = "Invalid email or password"
                        self.isValid = false
                    }
                        
                    else if (success == 3)
                        
                    {
                        print("Your email is inactive.")
                        self.Validationlabel.text = "Your email is inactive."
                    }
                        
                    else if (success == 4)
                    {
                        
                        print("Your email is temporarily blocked.")
                        self.Validationlabel.text = "Your email is temporarily blocked."
                    }
                        
                    else if (success == 1)
                    {
                        
                        DispatchQueue.main.async
                            {
                                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                                
                                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "ChooseModeOption") as! ChooseModeOption
                                
                                self.present(nextViewController, animated:true, completion:nil)
                                
                                print("Login Success...")
                        }
                    }
                        
                    else if (success == 5)
                    {
                        
                        print("Your email is inactive & temporarily blocked.")
                        self.Validationlabel.text = "Your email is inactive & temporarily blocked."
                        
                    }
                    else if (reg_id != nil)
                    {
                        
                        UserDefaults.standard.set("No reg mode", forKey: reg_id!)
                        self.isLoggedIn_succes1 = true
                        self.Sessionmanager_succes1(self.isLoggedIn_succes1)
                        self.Usercredential(logmode: log_mode!,regid: reg_id!)
                        
                        
                    }
                        
                    else if (log_mode != nil)
                    {
                        UserDefaults.standard.set("No log mode", forKey: log_mode!)
                        self.isLoggedIn_succes1 = true
                        self.Sessionmanager_succes1(self.isLoggedIn_succes1)
                        self.Usercredential(logmode: log_mode!,regid: reg_id!)
                        
                    }
                    
                    //                   else if (success == 2)
                    //                   {
                    //
                    //                    UserDefaults.standard.set("Please choose the sport mode", forKey: "success2")
                    //                    if #available(iOS 8.0, *)
                    //                    {
                    //                        let myweb = self.storyboard?.instantiateViewController(withIdentifier: "ChooseModeOption") as? ChooseModeOption
                    //
                    //                        OperationQueue.main.addOperation
                    //                            {
                    //                                self.present(myweb!, animated:true, completion:nil)
                    //                            }
                    //                    }
                    
                }
                //}
            }
            catch
            {
                print(error)
            }
            
            }.resume()
    }
    
    //Check Session is true and Stored Keys
    
    @discardableResult func Sessionmanager_succes1(_ isLoggedIn: Bool) -> Bool
        
    {
        UserDefaults.standard.set(isLoggedIn, forKey: "reg_id")
        UserDefaults.standard.synchronize()
        
        return true
    }
    
    
    @discardableResult func Sessionmanager_succes2(_ isLoggedIn: Bool) -> Bool
        
    {
        
        UserDefaults.standard.set(isLoggedIn, forKey: "log_mode")
        UserDefaults.standard.synchronize()
        
        return true
        
    }
    
    func Usercredential(logmode:String,regid:String)
        
    {
        
        UserDefaults.standard.set(logmode, forKey: "log_mode")
        UserDefaults.standard.set(regid, forKey: "reg_id")
        
        UserDefaults.standard.synchronize()
    }
    
    
    
    
    
    
    
    
    
    @IBAction func LoginPageAction(_ sender: Any)
    {
        LoginpageValidation()
        CheckedEmailIdJson()
        
        
        // Internet connection Checked
        
        if currentRechabilitystatus == .rechableViaWiFi
        {
            
            CheckedEmailIdJson()
            print("Wifi Connected....")
        }
        else if currentRechabilitystatus == .rechableViaWWAN
        {
            CheckedEmailIdJson()
            print("WWAN Connected....")
        }
            
        else
        {
            let alert = UIAlertView(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
            
            let mylogin = self.storyboard?.instantiateViewController(withIdentifier: "SporterciseLoginPage") as? SporterciseLoginPage
            OperationQueue.main.addOperation
                {
                    self.present(mylogin!, animated:true, completion:nil)
            }
            
        }
        
        
        
        
        
        
        
    }
    
    
    
}
