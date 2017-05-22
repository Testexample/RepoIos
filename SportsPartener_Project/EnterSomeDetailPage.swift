//
//  EnterSomeDetailPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 19/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces



class EnterSomeDetailPage: UIViewController,UITextViewDelegate,GMSMapViewDelegate,UISearchBarDelegate
    
    
    
{
    @IBOutlet weak var ChooseSportYoureLikebtn: UIButton!
    
    @IBOutlet weak var LocationtextviewSignupThree: UITextView!
    @IBOutlet weak var SelectLocationLabel: UILabel!
    @IBOutlet weak var SelectSprtanyTextview: UITextView!
    @IBOutlet weak var EnterYoureDetailSubmiteclickbtn: UIButton!
    
    var placeholderLabel : UILabel!
    var isvalid = Bool()
    var SportGame : [String] = []
    var values = String()
     var DaysId = Int()
    
    
    
    @IBOutlet weak var SundayOutlet: UIButton!
    @IBOutlet weak var MondayOutlet: UIButton!
    @IBOutlet weak var TuesdayOutlet: UIButton!
    @IBOutlet weak var WednesdayOutlet: UIButton!
    @IBOutlet weak var ThursdayOutlet: UIButton!
    @IBOutlet weak var FridayOutlet: UIButton!
    @IBOutlet weak var SaturdayOutlet: UIButton!
    
    
    var isSundayClicked: Bool = true
    var isMondayClicked: Bool = false
    var isTuesdaylicked: Bool = false
    var isWednesdayClicked: Bool = false
    var isThursdayClicked : Bool = false
    var isFridayClicked : Bool = false
    var isSaturdayClicked: Bool = false
    
    var dictionary =  NSMutableDictionary()
    
    var dictionaryAppendString = String()

    var appendDictionary = [String:String]()
   
    
    //DayOfweek Arrar
    
    
    var daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    let weekdaysstored = UserDefaults.standard
    
    
    
    
    
    //SearchResult Get
    
    let AddressGooglemap : String =  UserDefaults.standard.string(forKey: "Gioaddress")!
    
    let SportNameListArray = UserDefaults.standard.stringArray(forKey: "SportNamedList") ?? [String]()
    
    let RegisterId =  UserDefaults.standard.string(forKey: "reg_id" )
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        
        
        isSundayClicked = weekdaysstored.bool(forKey: "sundaychecked")
        isMondayClicked = weekdaysstored.bool(forKey: "mondauchecked")
        isTuesdaylicked = weekdaysstored.bool(forKey: "tuesdaychecked")
        isWednesdayClicked = weekdaysstored.bool(forKey: "wednesdaychecked")
        isThursdayClicked = weekdaysstored.bool(forKey: "thursdaychecked")
        isFridayClicked = weekdaysstored.bool(forKey: "fridaychecked")
        isSaturdayClicked = weekdaysstored.bool(forKey: "saturdaychecked")
        
        
        //ChooseSport Team Butoon Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        ChooseSportYoureLikebtn.layer.borderWidth = 1
        ChooseSportYoureLikebtn!.layer.borderColor = borderColor1.cgColor
        ChooseSportYoureLikebtn.clipsToBounds = true
        ChooseSportYoureLikebtn.layer.cornerRadius = 5
        
        //EnterLocationOnmapIconTextview Team Butoon Design
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        LocationtextviewSignupThree!.layer.borderWidth = 1
        LocationtextviewSignupThree!.layer.borderColor = borderColor2.cgColor
        LocationtextviewSignupThree!.clipsToBounds = true
        LocationtextviewSignupThree!.layer.cornerRadius = 5
        LocationtextviewSignupThree!.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        LocationtextviewSignupThree!.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        LocationtextviewSignupThree!.delegate = self
        
        
        // Text View Placeholder
        
        placeholderLabel = UILabel()
        placeholderLabel.text = "Click On Map Icon"
        placeholderLabel.font = UIFont.systemFont(ofSize: 19.0, weight: UIFontWeightMedium)
        placeholderLabel.sizeToFit()
        placeholderLabel.frame.origin = CGPoint(x: 5, y: 30)
        placeholderLabel.textColor = UIColor.gray
        // placeholderLabel.isHidden = ClickOnMapIconTextview.text.isEmpty
        LocationtextviewSignupThree.addSubview(placeholderLabel)
        // ClickOnMapIconTextview.resignFirstResponder()
        
        
        //EnterDetailSubmitteButoon Team Butoon Design
        
        EnterYoureDetailSubmiteclickbtn.clipsToBounds = true
        EnterYoureDetailSubmiteclickbtn.layer.cornerRadius = 5
        EnterYoureDetailSubmiteclickbtn.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        
        //Hide NavigationTitlebar
        
        self.navigationController?.isNavigationBarHidden = true
        
        //Mark :- Get The Result For Checkbox & Select CheckBox To Set Text On Uitextview & Click On Submite Button To checked Validation
        
        if SportNameListArray.isEmpty
        {
            SelectSprtanyTextview.text = "You Must selsect One Sport"
            
        }
        else
        {
            
            var text = ""
            _  = SportNameListArray.count
            for i in 0 ..< SportNameListArray.count
            {
                print(SportNameListArray[i])
                text += "\(SportNameListArray[i])\n"
            }
            SelectSprtanyTextview.text = text
            SelectSprtanyTextview.textColor = UIColor.gray
            
            
            var frame = CGRect()
            frame = SelectSprtanyTextview.frame
            frame.size.height = 500 // <-- Specify the height you want here.
            SelectSprtanyTextview.frame = frame
            
            
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            SelectSprtanyTextview.layer.borderWidth = 1
            SelectSprtanyTextview!.layer.borderColor = borderColor1?.cgColor
            SelectSprtanyTextview.clipsToBounds = true
            SelectSprtanyTextview.layer.cornerRadius = 5
            
        }
        
        //Mark : - Make New Line UiTextView
        
        LocationtextviewSignupThree!.text = AddressGooglemap + "\n" + AddressGooglemap + "\n" + AddressGooglemap
        
        if (AddressGooglemap.isEmpty)
        {
            SelectLocationLabel.text = "You Must selsect Location"
        }
        else
        {
            
        }
        
        //Mark :- Get The Address For Serchbar Result
        
        if AddressGooglemap != ""
        {
            placeholderLabel.isHidden = true
            LocationtextviewSignupThree.text = AddressGooglemap
        }
        else
        {
            placeholderLabel.isHidden = false
            
        }
        
        // SerchBarResult Detect On UItextview
        
        var Locationtextview = String()
        Locationtextview = UserDefaults.standard.string(forKey: "Gioaddress")!
        LocationtextviewSignupThree.text = Locationtextview
        
        
    }
    
    
    
    @IBAction func EnterYoureSubmiteBtnAction(_ sender: UIButton)
    {
        SubmittToServer()
        
        // print("AddressGooglemap = \(AddressGooglemap ?? "nil")")
        
        // print("Namelist = \(SportNameListArray)")
    }
    
    
    func textViewDidChange(_ textView: UITextView)
    {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
    
    
    
    //Mark :- Click On Submite Button To checked Validation
    
    @discardableResult func SubmittToServer()
        
    {
        
        //Mark :- Click On SportButoon Validation
        if (SportNameListArray == nil || SportNameListArray.count == 0)
        {
            
            ChooseSportYoureLikebtn.layer.borderColor = UIColor.red.cgColor
            ChooseSportYoureLikebtn.layer.borderWidth = 1
            SelectSprtanyTextview.text = "You Must selsect One Sport"
            SelectSprtanyTextview.layer.borderColor = UIColor.red.cgColor
            SelectSprtanyTextview.layer.borderWidth = 1
            SelectSprtanyTextview.layer.cornerRadius = 5
            isvalid = false
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            ChooseSportYoureLikebtn.layer.borderWidth = 1
            ChooseSportYoureLikebtn!.layer.borderColor = borderColor1?.cgColor
            ChooseSportYoureLikebtn.clipsToBounds = true
            ChooseSportYoureLikebtn.layer.cornerRadius = 5
        }
        
        //Mark :- Click On MapIcon Validation
        if  (AddressGooglemap.isEmpty)
        {
            LocationtextviewSignupThree.layer.borderColor = UIColor.red.cgColor
            LocationtextviewSignupThree.layer.borderWidth = 1
            LocationtextviewSignupThree.layer.cornerRadius = 5
            SelectLocationLabel.text = "You Must selsect Location"
            SelectLocationLabel.layer.borderColor = UIColor.red.cgColor
            SelectLocationLabel.layer.borderWidth = 1
            SelectLocationLabel.layer.cornerRadius = 5
            isvalid = false
        }
        else
        {
            SelectLocationLabel.text = ""
            print("done")
            
        }
        
        if SelectSprtanyTextview.text.contains("You Must selsect One Sport") || LocationtextviewSignupThree.text == ""
        {
            
        }
        else
        {
            isvalid = true
        }
        
        
        if(isvalid)
        {

                var copy = Array(dictionary.allKeys as! [String])
                copy.sort(by: <)
                
                for key in copy
                {
                    // Get value for this key.
                    if let value = dictionary[key]
                    {
                        print("Key = \(key), Value = \(value)")
                        dictionaryAppendString += "\(value)"+","
                        
                    }
                }
          
            
            
            //Mark :- SportGame list between Added %20 For Whitespace Add Seperator or Remove Newline
            
            let  SportGame = SportNameListArray.joined(separator: "\n")
            //  print("SportGame = \(SportGame)")
            
            let aString = SportGame
            let SportString = aString.replacingOccurrences(of: "\n", with: ",", options: .literal, range: nil).replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
            //  print("SportString = \(SportString)")
            
            //Mark :- SportUrlLocation list between Added %20 For Whitespace Add Seperator or Remove Newline
            
            let location = AddressGooglemap
            
            let aStringlocation = location
            let LocationString = aStringlocation.replacingOccurrences(of: " ", with: "%20", options: .literal, range: nil)
            // print("LocationString = \(LocationString)")
            
            
            if currentRechabilitystatus == .rechableViaWiFi
            {
                print("WiFi connected....")
                
                let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/insert_user_details.php")
                
                var request = URLRequest(url:myUrl!)
                
                request.httpMethod = "POST"// Compose a query string
                
                let postString = "reg_id=\(RegisterId ?? "nil")&sports=\(SportString)&where=\(LocationString)&days=\(dictionaryAppendString)"
                
                print("PostString = \(postString)")
                
                request.httpBody = postString.data(using: String.Encoding.utf8);
                
                
                
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
                    // print("responseString = \(responseString ?? "User instance is nil")")
                    
                    //Get data using Json
                    
                    var json: NSDictionary!
                    
                    do
                        
                    {
                        json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers) as! NSDictionary
                        //print(json)
                        
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
                    let mylogin = self.storyboard?.instantiateViewController(withIdentifier: "EnterSomeDetailPage") as? EnterSomeDetailPage
                    
                    OperationQueue.main.addOperation
                        {
                            self.present(mylogin!, animated:true, completion:nil)
                    }
                }
            }
        }
    }
    
    
    
    // Mark : - Checkbox Examples
    
    @IBAction func SundayCheckboxAction(_ sender: UIButton)
    {
        
//        
//        print("IBAction = \(sender)")
//        
//        let TitleText = sender.tag
//        
//        print("Title = \(TitleText)")
//        
        var mystring  = String()
        
      //  mystring =  String(TitleText)
        
        
        if sender.tag == 0
        {
            
            print("sunday")
            if isSundayClicked
            {
                self.Uncheckbox(sender: 0)
                dictionary.removeObject(forKey: "A")
              dictionaryAppendString = ""
               

            }
            else if !(isSundayClicked)
            {
                self.checkbox(sender: 0)
                
                dictionary.setValue("sunday", forKey: "A")
       }
        }
        if sender.tag == 1
        {
            print("monday")
            if isMondayClicked
            {
                self.Uncheckbox(sender: 1)
                 dictionary.removeObject(forKey: "B")
                dictionaryAppendString = ""
            }
            else if !(isMondayClicked)
            {
                self.checkbox(sender: 1)
                dictionary.setValue("monday", forKey: "B")
           
            }
            
        }
        if sender.tag == 2
        {
            print("tuesday")
            if isTuesdaylicked
            {
                self.Uncheckbox(sender: 2)
                dictionary.removeObject(forKey: "C")
               dictionaryAppendString = ""

            }
            else if !(isTuesdaylicked)
            {
                self.checkbox(sender: 2)
                dictionary.setValue("tuesday", forKey: "C")
                values += "tuesday"+","
                
            }
        }
        if sender.tag == 3
        {
            print("wednesday")
            if isWednesdayClicked
            {
                self.Uncheckbox(sender: 3)
                dictionary.removeObject(forKey: "D")
                dictionaryAppendString = ""

            }
            else if !(isWednesdayClicked)
            {
                self.checkbox(sender: 3)
                dictionary.setValue("wednesday", forKey: "D")
                values += "wednesday"+","
                print("WeekdayValue = \(values)")
            }
        }
        if sender.tag == 4
        {
            print("thursday")
            if isThursdayClicked
            {
                self.Uncheckbox(sender: 4)
                dictionary.removeObject(forKey: "F")
               dictionaryAppendString = ""

            }
            else if !(isThursdayClicked)
            {
                self.checkbox(sender: 4)
                dictionary.setValue("thursday", forKey: "F")
                values += "thursday"+","
                print("WeekdayValue = \(values)")
            }
        }
        if sender.tag == 5
        {
            print("friday")
            if isFridayClicked
            {
                self.Uncheckbox(sender: 5)
                dictionary.removeObject(forKey: "G")
              dictionaryAppendString = ""

            }
            else if !(isFridayClicked)
            {
                self.checkbox(sender: 5)
                dictionary.setValue("friday", forKey: "G")
                values += "friday"+","
                print("WeekdayValue = \(values)")
            }
        }
        if sender.tag == 6
        {
            print("saturday")
            if isSaturdayClicked
            {
                self.Uncheckbox(sender: 6)
                dictionary.removeObject(forKey: "H")
               dictionaryAppendString = ""

            }
            else if !(isSaturdayClicked)
            {
                self.checkbox(sender: 6)
                dictionary.setValue("saturday", forKey: "H")
                values += "saturday"+","
                print("WeekdayValue = \(values)")
               
            }
        }
        
}
    
    
    func checkbox (sender : Int)
    {
        if sender == 0
        {
            SundayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "sundaychecked")
            print("Sunday Checked...")
            isSundayClicked = true
            
        }
        if sender == 1
        {
            MondayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "mondauchecked")
            print("Monday Checked...")
            isMondayClicked = true
        }
        if sender == 2
        {
            TuesdayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "tuesdaychecked")
            print("Tuesday Checked...")
            isTuesdaylicked = true
        }
        if sender == 3
        {
            WednesdayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "wednesdaychecked")
            print("Wednesday Checked...")
            isWednesdayClicked = true
        }
        if sender == 4
        {
            ThursdayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "thursdaychecked")
            print("Thursday Checked...")
            isThursdayClicked = true
        }
        if sender == 5
        {
            FridayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "fridaychecked")
            print("Friday Checked...")
            isFridayClicked = true
        }
        if sender == 6
        {
            SaturdayOutlet.setImage(UIImage(named:"checkbox"), for: .normal)
            weekdaysstored.bool(forKey: "saturdaychecked")
            print("Saturday Checked...")
            isSaturdayClicked = true
        }
        
        weekdaysstored.synchronize()
    }
    func Uncheckbox (sender : Int)
    {
        if sender == 0
        {
            SundayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "SundayChecked")
            print("Sunday UnChecked...")
            isSundayClicked = false
            

            
        }
        if sender == 1
        {
            MondayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "mondauchecked")
            print("Monday UnChecked...")
            isMondayClicked = false
        }
        if sender == 2
        {
            TuesdayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "tuesdaychecked")
            print("Tuesday UnChecked...")
            isTuesdaylicked = false
        }
        if sender == 3
        {
            WednesdayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "wednesdaychecked")
            print("Wednesday UnChecked...")
            isWednesdayClicked = false
        }
        if sender == 4
        {
            ThursdayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "thursdaychecked")
            print("Thursday UnChecked...")
            isThursdayClicked = false
        }
        if sender == 5
        {
            FridayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "fridaychecked")
            print("Friday UnChecked...")
            isFridayClicked = false
        }
        if sender == 6
        {
            SaturdayOutlet.setImage(UIImage(named:"uncheckbox"), for: .normal)
            weekdaysstored.bool(forKey: "saturdaychecked")
            print("Saturday UnChecked...")
            isSaturdayClicked = false
        }
        
        weekdaysstored.synchronize()
    }
    
    
}




    

    








