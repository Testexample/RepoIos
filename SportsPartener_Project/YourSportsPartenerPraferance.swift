//
//  YourSportsPartenerPraferance.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 10/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class YourSportsPartenerPraferance: UIViewController,UIPickerViewDelegate,UITextViewDelegate,UITextFieldDelegate,UIPickerViewDataSource
    
{
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
         return  1
    }

    
    
    
    
    @IBOutlet var Updatebtn: UIButton!
    
    var btnTag    :  Int = 0
    
    @IBOutlet weak var ageToText: UITextField!
    
    @IBOutlet weak var ageFromText: UITextField!
    
    
    @IBOutlet var MaleButoonOutlet: UIButton!
    
    @IBOutlet var FemaleButoonOutlet: UIButton!
    
    @IBOutlet var AnyButoonOutlet: UIButton!
    
//    @IBOutlet weak var updateBtn: UIButton!
    
     var isvalid = Bool()
    
    
    let RegisterId =  UserDefaults.standard.string(forKey: "reg_id" )
    
    var gender: String = ""
    
    var ageTopicker = UIPickerView()
    
    var ageFrompicker = UIPickerView()
    
    var data  = [""]
    
    override func viewDidLoad()
        
        
    {
        super.viewDidLoad()
        
       
        
        gender = "male"
        data.append("")
        
        
        btnTag = MaleButoonOutlet.tag
        
        
        //Update Butoon
        
        Updatebtn.clipsToBounds = true
        Updatebtn.layer.cornerRadius = 5
        Updatebtn.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        
        //ThirtyOne Textfield Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        ageToText.layer.borderWidth = 1
        ageToText.layer.borderColor = borderColor1.cgColor
        ageToText.clipsToBounds = true
        ageToText.layer.cornerRadius = 5
        ageToText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        ageToText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //FourtyText Textfield Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        ageFromText.layer.borderWidth = 1
        ageFromText.layer.borderColor = borderColor1.cgColor
        ageFromText.clipsToBounds = true
        ageFromText.layer.cornerRadius = 5
        ageFromText.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        ageFromText.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
    }
    
    @IBAction func MaleButoonAction(_ sender: UIButton)
    {
        
        btnTag = 1
        
        if btnTag == 1
        {
            MaleButoonOutlet.setImage(UIImage(named: "SportPraferanceSelect_Radio.jpg"), for : .normal)
            FemaleButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            AnyButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            btnTag = 0
            print("Male")
            gender = "male"

        }
    }
    
    
    @IBAction func FemaleButoonAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            FemaleButoonOutlet.setImage(UIImage(named: "SportPraferanceSelect_Radio.jpg"), for : .normal)
            MaleButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            AnyButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            btnTag = 0
            print("Female")
            gender = "female"
        }
        
    }
    
    @IBAction func AnyButoonAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            AnyButoonOutlet.setImage(UIImage(named: "SportPraferanceSelect_Radio.jpg"), for : .normal)
            MaleButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            FemaleButoonOutlet.setImage(UIImage(named: "SportPraferanceUnselect_Radio.jpg"), for : .normal)
            btnTag = 0
            print("Any")
            gender = "mix"
        }
        
    }
    
    
    @IBOutlet weak var agetoBtnOutlet: UIButton!
    @IBAction func agetoButoonPickerView(_ sender: Any)
    {
        
        //UIPickerView
        ageTopicker = UIPickerView(frame:CGRect(x: 0, y: 500, width: view.frame.width, height: 300))
        ageTopicker.backgroundColor = UIColor.lightGray
        ageTopicker.showsSelectionIndicator = true
        ageTopicker.delegate = self
        ageTopicker.dataSource = self
        ageTopicker.layer.borderColor = UIColor.lightGray.cgColor
        ageTopicker.layer.borderWidth = 1
        ageTopicker.tag = 1
        ageTopicker.clipsToBounds = true
        self.view.addSubview(ageTopicker)
        
        ageTopicker.reloadAllComponents()
        
        DispatchQueue.main.async
        {
            self.SetAgeToData()
            
        }
        
    }
    
    @IBOutlet weak var fromBtnOutlet: UIButton!
    @IBAction func fromButoonPickerView(_ sender: UIButton)
    {
        //UIPickerView
        
        ageFrompicker = UIPickerView(frame:CGRect(x: 0, y: 500, width: view.frame.width, height: 300))
        ageFrompicker.backgroundColor = UIColor.lightGray
        ageFrompicker.showsSelectionIndicator = true
        ageFrompicker.delegate = self
        ageFrompicker.dataSource = self
        ageFrompicker.layer.borderColor = UIColor.lightGray.cgColor
        ageFrompicker.layer.borderWidth = 1
        ageFrompicker.tag = 2
        ageFrompicker.clipsToBounds = true
        self.view.addSubview(ageFrompicker)
        
        
        ageFrompicker.reloadAllComponents()
        
        DispatchQueue.main.async
            {
                
                self.SetAgeFromData()
            }
      }
    
    //SetAgeToPicker Picker
    
    func SetAgeToData()
    {
        let i = Int()
        
        _ = String(i)
        
        for myString in 14...90
        {
            
            self.data.append(" \(myString)")
        }
        

    }
    
    //SetAgeFromDta Picker
    
    func SetAgeFromData()
    {
        let i = Int()
        
        _ = String(i)
        
        for myString1 in 14...90
        {
            self.data.append(" \(myString1)")
            
        }
        
    }
    
    //UIPickerView Methods
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
         return   data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    
    {
        
        if (pickerView == self.ageTopicker)
        {
            self.ageToText.text = self.data[row]
           
            self.ageToText.becomeFirstResponder()
            
        }
        else if (pickerView == self.ageFrompicker)
        {
            self.ageFromText.text = self.data[row]
          
            self.ageFromText.becomeFirstResponder()
            
        }
        pickerView.isHidden = true

    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool
    {
        ageTopicker.isHidden = false
        ageFrompicker.isHidden = false
    
        return false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
         self.view.endEditing(true)
    }
   
    @IBAction func UpdateButoonOnClick(_ sender: UIButton)
    {
        signUp()
       
    }
    
    @discardableResult func signUp()
    {
        isvalid = true
        
        if ageToText.text == ""
        {
            DispatchQueue.main.async
        {
            self.ageToText.layer.borderColor = UIColor.red.cgColor
            self.ageToText.layer.borderWidth = 1
            self.ageToText.layer.borderColor = UIColor.red.cgColor
            self.ageToText.layer.borderWidth = 1
            self.ageToText.layer.cornerRadius = 5
        }
        isvalid = false
      
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            ageToText.layer.borderWidth = 1
            ageToText!.layer.borderColor = borderColor1?.cgColor
            ageToText.clipsToBounds = true
            ageToText.layer.cornerRadius = 5
        }
        
        if ageFromText.text == ""
        {
            DispatchQueue.main.async
            {
                self.ageFromText.layer.borderColor = UIColor.red.cgColor
                self.ageFromText.layer.borderWidth = 1
                self.ageFromText.layer.borderColor = UIColor.red.cgColor
                self.ageFromText.layer.borderWidth = 1
                self.ageFromText.layer.cornerRadius = 5
            }
            isvalid = false
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            ageFromText.layer.borderWidth = 1
            ageFromText!.layer.borderColor = borderColor1?.cgColor
            ageFromText.clipsToBounds = true
            ageFromText.layer.cornerRadius = 5
        }
        
        if (isvalid)
        
        {
                if currentRechabilitystatus == .rechableViaWiFi
                {
                    print("WiFi connected....")
                    
                    let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/insert_partner_preference.php")
                    
                    var request = URLRequest(url:myUrl!)
                    
                    request.httpMethod = "POST"// Compose a query string
                    
                    let postString = "reg_id=\(RegisterId ?? "nil")&gender=\(gender )&age_from=\(ageFromText.text ?? "nil")&age_to=\(ageToText.text ?? "nil")"
                    
                    print("PostString = \(postString)")
                    
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
                            
                            
                            let success = json["success"] as! Int
                            print("Success Result = \(success)")
                            
                            
                        }
                        catch
                        {
                            print(error)
                        }
                        
                        }.resume()
                    
                }
                else if currentRechabilitystatus == .rechableViaWWAN
                {
                    print("WWAN connected....")
                    
                }
                else
                {
                    
                    let alert = UIAlertView(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", delegate: nil, cancelButtonTitle: "OK")
                    alert.show()
                    
                    if #available(iOS 8.0, *) {
                        let mylogin = self.storyboard?.instantiateViewController(withIdentifier: "YourSportsPartenerPraferance") as? YourSportsPartenerPraferance
                        
                        OperationQueue.main.addOperation
                            {
                                self.present(mylogin!, animated:true, completion:nil)
                            }
                }
            }
        }
    }
}

    

    
    
    
    

