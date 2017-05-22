//
//  FindaSportPartener.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 30/03/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindaSportPartener: UIViewController,UIPickerViewDelegate,UITextFieldDelegate, UITableViewDataSource, UITableViewDelegate
{
    
    @IBOutlet var TodayRadioButoonOutlet: UIButton!
    @IBOutlet var TomorrowRadioButoonOutlet: UIButton!
    @IBOutlet var SelectDateRadioButoonOutlet: UIButton!
    @IBOutlet var TenMilesRadioOutlet: UIButton!
    @IBOutlet var TwentyMilesOutlet: UIButton!
    @IBOutlet var ThirtyMilesOutlet: UIButton!
    @IBOutlet var MaleOutlet: UIButton!
    @IBOutlet var FemaleOutlet: UIButton!
    @IBOutlet var AnyOutlet: UIButton!
    @IBOutlet weak var enterSportNameLabelValidation: UILabel!
    @IBOutlet weak var whenEntersportnameBetweenSpaceHide: NSLayoutConstraint!
    @IBOutlet weak var selectDistanceLocationBetweenSpaceHide: NSLayoutConstraint!
    @IBOutlet weak var enterLocationLabelValidation: UILabel!
    @IBOutlet weak var taableViewSportNameSpceHide: NSLayoutConstraint!
    @IBOutlet weak var hightConstrainTableview: NSLayoutConstraint!
    @IBOutlet weak var sportPartenerTableView: UITableView!
    @IBOutlet weak var selectDistanceLabel: UILabel!
    
    var btnTag    :  Int = 0
    var btnTag1   : Int = 0
    var btnTag2   : Int = 0
    var isvalid = Bool()
    let Agefromarray = Array(14...90)
    var Jsonarr = NSDictionary()
    var datePicker : UIDatePicker!
    var ageTopicker   = UIPickerView()
    var ageFrompicker = UIPickerView()
    var datasource = [""]
    let cellReuseIdentifier = "cell"
    var sportsnameappend = [String]()
    var SportsNmae = String()
    var autoComplete = [String]()
    var enterSportNamechecked : Bool = false
    var radioButoonChecked : Bool = false
    var radiobtnGenderChecked : Bool = false
    var radiobtnTenMilesChecked : Bool = false
    var ageFrom : Bool = false
    var ageTo : Bool = false
    var genderString = String()
    var distanceString = String()
    var whenString = String()
    var when = String()
    typealias JSONObject = [String:Any]
   // var showCounter_Success = Int()
  //  var showCounter_counter = Int()
    
    @IBOutlet var Enternameofsporttextfield: NoCopyPasteUITextField!
    @IBOutlet var Selectdatetextfield: UITextField!
    @IBOutlet var Enteralocationtextfield: UITextField!
    @IBOutlet var Agefromtextfield: UITextField!
    @IBOutlet var Agetotextfield: UITextField!
    @IBOutlet var SearchpartnerButoon: UIButton!
    
    let RegisterId =  UserDefaults.standard.string(forKey: "reg_id" )
    
    let AddressGooglemap : String =  UserDefaults.standard.string(forKey: "Gioaddress")!
    
    @IBOutlet weak var selectWhenLAbelVAlidationLAbel: UILabel!
    @IBAction func textfieldDidChange(_ sender: Any)
    {
        sportPartenerTableView.isHidden = true
        Enternameofsporttextfield.resignFirstResponder()
        taableViewSportNameSpceHide.constant = 0
    }
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
       
        self.sportPartenerTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        sportPartenerTableView.delegate = self
        sportPartenerTableView.dataSource = self
        Enternameofsporttextfield.delegate = self
        sportPartenerTableView.isHidden = false
        sportPartenerTableView.isScrollEnabled = true
        Enternameofsporttextfield.resignFirstResponder()
        
        // Manage tableView visibility via TouchDown in textField
        Enternameofsporttextfield.addTarget(self, action: #selector(textFieldActive), for: UIControlEvents.touchDown)
        
        //UiPickerView Call Function
        
        self.AgePicker(self.Agefromtextfield)
        self.AgeToPicker(self.Agetotextfield)
        
        taableViewSportNameSpceHide.constant = 0
        sportPartenerTableView.isHidden = true
        whenEntersportnameBetweenSpaceHide.constant = 20
        enterSportNameLabelValidation.isHidden = false
        
        selectDistanceLocationBetweenSpaceHide.constant = 20
        enterLocationLabelValidation.isHidden = false
        
        btnTag = TodayRadioButoonOutlet.tag
        btnTag1 = TenMilesRadioOutlet.tag
        btnTag2 = MaleOutlet.tag
        
        //Hide NavigationTitlebar
        
        self.navigationController?.isNavigationBarHidden = true
        
        //EnterNameTextField Design
        
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Enternameofsporttextfield.layer.borderWidth = 1
        Enternameofsporttextfield.layer.borderColor = borderColor1.cgColor
        Enternameofsporttextfield.clipsToBounds = true
        Enternameofsporttextfield.layer.cornerRadius = 5
        Enternameofsporttextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Enternameofsporttextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //Selectdatetextfield Design
        
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Selectdatetextfield.layer.borderWidth = 1
        Selectdatetextfield.layer.borderColor = borderColor2.cgColor
        Selectdatetextfield.clipsToBounds = true
        Selectdatetextfield.layer.cornerRadius = 5
        Selectdatetextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Selectdatetextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        //Enteralocationtextfield Design
        
        let borderColor3 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Enteralocationtextfield.layer.borderWidth = 1
        Enteralocationtextfield.layer.borderColor = borderColor3.cgColor
        Enteralocationtextfield.clipsToBounds = true
        Enteralocationtextfield.layer.cornerRadius = 5
        Enteralocationtextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Enteralocationtextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //Agefromtextfield Design
        
        let borderColor4 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Agefromtextfield.layer.borderWidth = 1
        Agefromtextfield.layer.borderColor = borderColor4.cgColor
        Agefromtextfield.clipsToBounds = true
        Agefromtextfield.layer.cornerRadius = 5
        Agefromtextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Agefromtextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        
        //Agetotextfield Design
        let borderColor5 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Agetotextfield.layer.borderWidth = 1
        Agetotextfield.layer.borderColor = borderColor5.cgColor
        Agetotextfield.clipsToBounds = true
        Agetotextfield.layer.cornerRadius = 5
        Agetotextfield.font = UIFont.init(name: "Raleway', sans-serif", size: 15.0)
        Agetotextfield.font = UIFont.systemFont(ofSize: 18.0, weight: UIFontWeightMedium)
        
        //SearchpartnerButoon Design
        SearchpartnerButoon.clipsToBounds = true
        SearchpartnerButoon.layer.cornerRadius = 5
        SearchpartnerButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        
        //Mark :- Get The Address For Serchbar Result
        
        if AddressGooglemap != ""
        {
            
            Enteralocationtextfield.text = AddressGooglemap
        }
        else
        {
            
        }
        
        // SerchBarResult Detect On UItextview
        
        var Locationtextview = String()
        Locationtextview = UserDefaults.standard.string(forKey: "Gioaddress")!
        Enteralocationtextfield.text = Locationtextview
    
    }
    
    override func viewDidLayoutSubviews()
    {
        hightConstrainTableview.constant = 60
    }
    
    
    //Mark :-  When Radio Butoons
    
    @IBAction func TodayRadioAction(_ sender: Any)
        
    {
        btnTag = 1
        
        if btnTag == 1
        {
            
            TodayRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Selected_Radio.jpg"), for : .normal)
            TomorrowRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Tomorrow_radio_unchecked.jpg"), for : .normal)
            SelectDateRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Today_radio_unchecked-1.jpg"), for : .normal)
            btnTag = 0
            print("Today")
            radioButoonChecked = true
            selectWhenLAbelVAlidationLAbel.isHidden = true
            whenString = "when"
            when = "Today"
            
        }
        
    }
    
    @IBAction func TomorrowRadioAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            
            TomorrowRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Selected_Radio.jpg"), for : .normal)
            TodayRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Tomorrow_radio_unchecked.jpg"), for : .normal)
            SelectDateRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Today_radio_unchecked-1.jpg"), for : .normal)
            btnTag = 0
            print("Tomorrow")
            radioButoonChecked = true
            selectWhenLAbelVAlidationLAbel.isHidden = true
            whenString = "when"
            when = "Tomorrow"
        }
    }
    
    @IBAction func SelectDateRadioAction(_ sender: UIButton)
    {
        btnTag = 1
        
        if btnTag == 1
        {
            SelectDateRadioButoonOutlet .setImage(UIImage(named: "FindSportPartener_Selected_Radio.jpg"), for : .normal)
            TomorrowRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Tomorrow_radio_unchecked.jpg"), for : .normal)
            TodayRadioButoonOutlet.setImage(UIImage(named: "FindSportPartener_Today_radio_unchecked-1.jpg"), for : .normal)
            btnTag = 0
            print("SelectDate")
            radioButoonChecked = true
            selectWhenLAbelVAlidationLAbel.isHidden = true
            
            let dateFormatter2 = DateFormatter()
            dateFormatter2.dateStyle = .short
            dateFormatter2.dateFormat = "yyyy/MM/dd hh:mm:ss"
            when =  dateFormatter2.string(from: datePicker.date)
            whenString = "date"
        }
    }
    
     //Mark :-  Distance Radio Butoons
    
    @IBAction func TenMilesAction(_ sender: UIButton)
        
    {
        
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            TenMilesRadioOutlet.setImage(UIImage(named: "30miles_radio_checked.jpg"), for : .normal)
            TwentyMilesOutlet.setImage(UIImage(named: "10miles_radio_unchecked.jpg"), for : .normal)
            ThirtyMilesOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            btnTag1 = 0
            print("TenMiles")
            radiobtnTenMilesChecked = true
            distanceString = "10"
            selectDistanceLabel.isHidden = true
        }
    }
    
    @IBAction func TwentyMilesAction(_ sender: UIButton)
        
    {
        
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            TwentyMilesOutlet.setImage(UIImage(named: "30miles_radio_checked.jpg"), for : .normal)
            TenMilesRadioOutlet.setImage(UIImage(named: "10miles_radio_unchecked.jpg"), for : .normal)
            ThirtyMilesOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            btnTag1 = 0
            print("TwentyMiles")
            radiobtnTenMilesChecked = true
            distanceString = "20"
            selectDistanceLabel.isHidden = true
        }
        
    }
    
    
    @IBAction func ThirtyMilesAction(_ sender: UIButton)
        
    {
        
        btnTag1 = 1
        
        if btnTag1 == 1
        {
            ThirtyMilesOutlet.setImage(UIImage(named: "30miles_radio_checked.jpg"), for : .normal)
            TwentyMilesOutlet.setImage(UIImage(named: "20miles_radio_unchacked.jpg"), for : .normal)
            TenMilesRadioOutlet.setImage(UIImage(named: "10miles_radio_unchecked.jpg"), for : .normal)
            btnTag1 = 0
            print("ThirtyMiles")
            radiobtnTenMilesChecked = true
            distanceString = "30"
            selectDistanceLabel.isHidden = true
        }
    }
    
     //Mark :-  Gender Radio Butoons
    
    @IBAction func MaleAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            MaleOutlet.setImage(UIImage(named: "Any_chacked.jpg"), for : .normal)
            FemaleOutlet.setImage(UIImage(named: "Female_Unchacked.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            btnTag2 = 0
            print("Male")
            radiobtnGenderChecked = true
            genderString = "male"
        }
        
    }
    
    @IBAction func FemaleAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            FemaleOutlet .setImage(UIImage(named: "Any_chacked.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "Female_Unchacked.jpg"), for : .normal)
            AnyOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            btnTag2 = 0
            print("Female")
            radiobtnGenderChecked = true
            genderString = "female"
            
        }
    }
    
    @IBAction func AnyAction(_ sender: UIButton)
    {
        btnTag2 = 1
        
        if btnTag2 == 1
        {
            AnyOutlet .setImage(UIImage(named: "Any_chacked.jpg"), for : .normal)
            FemaleOutlet.setImage(UIImage(named: "Female_Unchacked.jpg"), for : .normal)
            MaleOutlet.setImage(UIImage(named: "Male_unchacked.jpg"), for : .normal)
            btnTag2 = 0
            print("Any")
            radiobtnGenderChecked = true
            genderString = "mix"
            
        }
    }
    
    
    //Mark :- 1) UIDtaepickerView
    
    func pickUpDate(_ textField : UITextField)
    {
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePickerMode.date
        Selectdatetextfield.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(FindaSportPartener.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(FindaSportPartener.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        Selectdatetextfield.inputAccessoryView = toolBar
    }
    func doneClick()
    {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .short
        dateFormatter1.dateFormat = "yyyy-MM-dd"
        Selectdatetextfield.text =  dateFormatter1.dateFormat
        Selectdatetextfield.text = dateFormatter1.string(from: datePicker.date)
        Selectdatetextfield.resignFirstResponder()
    }
    func cancelClick()
    {
        Selectdatetextfield.resignFirstResponder()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        self.pickUpDate(self.Selectdatetextfield)
    }
    
    //Mark :- 2) UIAgeFromPickerView
    
    func AgePicker(_ textField : UITextField)
    {       // UIAgeFromPickerView
        
        ageFrompicker = UIPickerView(frame:CGRect(x: 0, y:0, width: self.view.frame.size.width, height: 216))
        ageFrompicker.backgroundColor = UIColor.white
        ageFrompicker.delegate = self
        ageFrompicker.tag = 1
        Agefromtextfield.inputView = self.ageFrompicker
        ageFrompicker.reloadAllComponents()
        
        
    }
    
    //Mark :- 3) UIAgeToPickerView
    
    func AgeToPicker(_ textField : UITextField)
    {
        // UIAgeToickerView
        
        ageTopicker = UIPickerView(frame:CGRect(x: 0, y:0, width: self.view.frame.size.width, height: 216))
        ageTopicker.backgroundColor = UIColor.white
        ageTopicker.delegate = self
        ageTopicker.tag = 2
        Agetotextfield.inputView = self.ageTopicker
        ageTopicker.reloadAllComponents()
        
        
    }
    
    //UIPickerView Methods
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        return Agefromarray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        
        return String(Agefromarray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        if (pickerView == ageFrompicker)
        {
            Agefromtextfield.text! = String(Agefromarray[row])
            Agefromtextfield.resignFirstResponder()
            ageFrom = true
        }
        else if (pickerView == ageTopicker)
        {
            Agetotextfield.text! = String(Agefromarray[row])
            Agetotextfield.resignFirstResponder()
            ageTo = true
        }
    }
    
    @IBOutlet weak var agetoPickerOutlet: UIButton!
    
    @IBOutlet weak var agePickerBtnOutlet: UIButton!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(false)
        
       // agePickerBtnOutlet.isEnabled = false
        
     //   agetoPickerOutlet.isEnabled = false
        
        
        guard let touch:UITouch = touches.first else
        {
            return;
        }
        if touch.view != sportPartenerTableView
        {
            Enternameofsporttextfield.endEditing(true)
            sportPartenerTableView.isHidden = true
        }
    }
    
    
    //Mark :- SearchPartener ButoonClick
    
    @IBAction func searchPartenerClickEvent(_ sender: UIButton)
    {
        
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "StoreResultResponsePartener")
        defaults.synchronize()
        

        whenEntersportnameBetweenSpaceHide.constant = 20
        selectDistanceLocationBetweenSpaceHide.constant = 30
        enterSportNameLabelValidation.isHidden = false
        enterLocationLabelValidation.isHidden = false
        SearchPartener()
        
        
        let empty = ""
        UserDefaults.standard.setValue(empty , forKey: "Gioaddress")
    }
    
    //Mark :- SearchPartener Function Validationas ,SerchPartener Json
    
    func SearchPartener()
    {
       isvalid = true
        
        //Mark :- EnterSportPArtener TextField
        
        if Enternameofsporttextfield.text == ""
        {
            DispatchQueue.main.async
                {
                    self.Enternameofsporttextfield.layer.borderColor = UIColor.red.cgColor
                    self.Enternameofsporttextfield.layer.borderWidth = 1
                    self.Enternameofsporttextfield.layer.cornerRadius = 5
                    self.enterSportNameLabelValidation.text = "Enter sport name"
            }
            isvalid = false
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Enternameofsporttextfield.layer.borderWidth = 1
            Enternameofsporttextfield!.layer.borderColor = borderColor1?.cgColor
            Enternameofsporttextfield.clipsToBounds = true
            Enternameofsporttextfield.layer.cornerRadius = 5
            self.enterSportNameLabelValidation.text = ""
        }
        
        //Mark :- SelectDateTextfield Cheked
        
        if Selectdatetextfield.text == ""
        {
            DispatchQueue.main.async
                {
                    self.Selectdatetextfield.layer.borderColor = UIColor.red.cgColor
                    self.Selectdatetextfield.layer.borderWidth = 1
                    self.Selectdatetextfield.layer.borderColor = UIColor.red.cgColor
                    self.Selectdatetextfield.layer.borderWidth = 1
                    self.Selectdatetextfield.layer.cornerRadius = 5
                    
            }
            isvalid = false
            
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Selectdatetextfield.layer.borderWidth = 1
            Selectdatetextfield!.layer.borderColor = borderColor1?.cgColor
            Selectdatetextfield.clipsToBounds = true
            Selectdatetextfield.layer.cornerRadius = 5
        }
        
        //Mark :- ReadioButoon Checed
        
        if radioButoonChecked
        {
            selectWhenLAbelVAlidationLAbel.isHidden = true
        }
        else
        {
            selectWhenLAbelVAlidationLAbel.text = "Select When"
        }
        print("when = \(when)")
        print("WhenString = \(whenString)")
        
        
        //Mark :- RadioButoonGender Checked
        
        if !radiobtnGenderChecked
        {
            genderString = "mix"
            print("genderString = \(genderString)")
        }
        if  radiobtnGenderChecked
        {
            print("genderString = \(genderString)")
        }
        
        //MArk :- RadioButooDistance Checked
        
        if radiobtnTenMilesChecked
        {
            selectDistanceLabel.isHidden = true
            print("tenString = \(distanceString)")
            
        }
        else
        {
            selectDistanceLabel.text = "Select distance"
            
        }
        
        //Mark :- LocationTextfield Checked
        
        if Enteralocationtextfield.text == ""
        {
            DispatchQueue.main.async
                {
                    self.Enteralocationtextfield.layer.borderColor = UIColor.red.cgColor
                    self.Enteralocationtextfield.layer.borderWidth = 1
                    self.Enteralocationtextfield.layer.cornerRadius = 5
                    self.enterLocationLabelValidation.text = "Enter location"
            }
            isvalid = false
            
        }
        else
        {
            let borderColor1: UIColor?
            
            borderColor1  = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
            Enteralocationtextfield.layer.borderWidth = 1
            Enteralocationtextfield!.layer.borderColor = borderColor1?.cgColor
            Enteralocationtextfield.clipsToBounds = true
            Enteralocationtextfield.layer.cornerRadius = 5
            self.enterLocationLabelValidation.text = ""
        }
        //Mark :- Click On MapIcon Validation
        
        if  (AddressGooglemap.isEmpty)
        {
            Enteralocationtextfield.layer.borderColor = UIColor.red.cgColor
            Enteralocationtextfield.layer.borderWidth = 1
            Enteralocationtextfield.layer.cornerRadius = 5
            isvalid = false
        }
        else
        {
            enterLocationLabelValidation.text = ""
            
        }
        //Mark :- AgeFrom PickerView Checked
        
        if ageFrom
        {
            print(" Agefromtextfield = \( Agefromtextfield.text ?? "nil")")
            
        }
        else
        {
            Agefromtextfield.text = ""
            
            print(" Agefromtextfield = \( Agefromtextfield.text ?? "nil")")
        }
        
        //Mark :- AgeTo PickerView Checked
        
        if ageTo
        {
            print(" Agetotextfield =\( Agetotextfield.text ?? "nil")")
        }
        else
        {
            Agetotextfield.text = ""
            print(" Agetotextfield =\( Agetotextfield.text ?? "nil")")
        }
        
        //Calling Json Function
        
      if isvalid
      {
        FindSportPartnerUsingFormSoloActivity()

        }
        
        
        
    }

    
    //MARK :-  JsonParsing Function
    
    func SportsListViewJsonData()
    {
        
        
        let urlString = "http://sportercise.in/temp/test/andapp/sports_name.php"
        
        var request = URLRequest(url: URL(string: urlString)!)
        
        let session = URLSession.shared
        
        request.httpMethod = "GET"
        session.dataTask(with: request) {data, response, error in
            if error != nil
            {
                print(error!.localizedDescription)
                return
            }
            
            do
            {
                self.Jsonarr = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers)as! [String : AnyObject] as NSDictionary
                print("JsonResponse = \(self.Jsonarr)")
                
                if let gamedata = self.Jsonarr["game"] as? [[String: AnyObject]]
                    
                {
                    
                    for SportsData in gamedata {
                        
                        if let sports = SportsData["sports"] as? String
                        {
                            
                            print("SportsName = \(sports)")
                            self.sportsnameappend.append(sports)
                            
                            self.SportsNmae = sports
                            print(self.SportsNmae)
                        }
                    }
                }
                OperationQueue.main.addOperation ({
                    self.sportPartenerTableView.reloadData()
                })
                
                self.sportPartenerTableView.reloadData()
            }
            catch
            {
                print(error.localizedDescription)
            }
            
            }.resume()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    // Toggle the tableView visibility when click on textField
    func textFieldActive()
    {
        
        DispatchQueue.main.async
            {
                self.SportsListViewJsonData()
                
                self.Enternameofsporttextfield.resignFirstResponder()
                
                self.taableViewSportNameSpceHide.constant = 0
                
                self.sportPartenerTableView.isHidden = !self.sportPartenerTableView.isHidden
                
        }
    }
    
    // MARK: UITextFieldDelegate
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        // TODO: Your app can do something when textField finishes editing
        print("The textField ended editing. Do something based on app requirements.")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        Enternameofsporttextfield.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        sportPartenerTableView.isHidden = false
        
        var substring : NSString = self.Enternameofsporttextfield.text! as NSString;()
        
        substring = substring.replacingCharacters(in: range, with: string) as NSString
        
        self.searchAutoCompleteEnteriseWithSunstring(substring: substring as String)
        
        return true
    }
    
    func searchAutoCompleteEnteriseWithSunstring(substring : String)
    {
        autoComplete.removeAll(keepingCapacity: false)
        
        
        for curString in sportsnameappend
        {
            let myString : NSString! = curString as NSString
            
            let substringRange :NSRange! = myString.range(of: substring)
            
            if (substringRange.location == 0)
            {
                autoComplete.append(curString)
            }
        }
        sportPartenerTableView.reloadData()
    }
    
    //MARK :- UITableview Methods
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let mycell:UITableViewCell = sportPartenerTableView.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        
        // Set text from the data model
        let data = self.autoComplete[indexPath.row]
        mycell.textLabel?.text = data as String
        return mycell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return  autoComplete.count
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedcell : UITableViewCell = sportPartenerTableView.cellForRow(at: indexPath)!
        
        Enternameofsporttextfield.text =  selectedcell.textLabel?.text!
        Enternameofsporttextfield.text = autoComplete[indexPath.row]
        sportPartenerTableView.isHidden = true
        enterSportNamechecked = true
        Enternameofsporttextfield.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 0.0
    }
    
    //Mark :- Json Parsing Using Google Map
    
    func  FindSportPartnerUsingFormSoloActivity()
    {
      
        
        let location = AddressGooglemap
        
        let aStringlocation = location
        
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/solo/sports_partner/partners_result_json.php");
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "reg_id=\(69)&activity=\(Enternameofsporttextfield.text!)&\(whenString)=\(when)&gender=\(genderString)&distance=\(distanceString)&age_from=\(Agefromtextfield.text!)&age_to=\(Agetotextfield.text!)&where=\(aStringlocation)"
        
        print("PostString = \(postString)")
        
        request.httpBody = postString.data(using: String.Encoding.utf8)
        
        //Using Session
        
        _ = URLSession.shared.dataTask(with: request as URLRequest)
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
            
            let jsonObject : AnyObject! = nil
            
            do
            {
                json = try JSONSerialization.jsonObject(with: data!, options:JSONSerialization.ReadingOptions.mutableContainers)  as! Dictionary<String, AnyObject> as NSDictionary!
                
                
             
                
                
                if let storeDataArray = json["zero_counter"]  as? [JSONObject]
                {
                    for store in storeDataArray
                        
                    {
                        let successZeroCounter = store["success"] as! Int
                        let counterZeroCounter = store["counter"] as! Int
                        let messageZeroCounter = store["message"] as! String
                        
                        print("successZeroCounter = \(successZeroCounter)" )
                        print("counterZeroCounter = \(counterZeroCounter)" )
                        print("messageZeroCounter = \(messageZeroCounter)" )
                        
                        if (successZeroCounter == 0 && counterZeroCounter == 0)
                        {
                            print("Result Not Found")
                        }
                    }
                }
                if let storeDataArray1 = json["show_counter"]  as? [JSONObject]
                {
                    for store in storeDataArray1
                        
                    {
                        let showCounter_Success = store["success"] as! Int
                        let showCounter_counter = store["counter"] as! Int
                        
                        print("showCounter_Success = \(showCounter_Success)" )
                        print("showCounter_counter = \(showCounter_counter)" )
                        
                        if (showCounter_Success == 1 && showCounter_counter != 0)
                        {
                            if let storeDataArray2 = json["results"]  as? [JSONObject]
                            {
                                
                                
                                let defaults = UserDefaults.standard
                                defaults.set(storeDataArray2, forKey: "StoreResultResponsePartener")
                                print(defaults.object(forKey: "StoreResultResponsePartener") ?? "nil")
                                defaults.synchronize()

                                
                              

                               
                                for store in storeDataArray2
                                    
                                {
//                                                                     
//                                    let results_reg_id = store["reg_id"] as! String
//                                    let results_reg_firstname = store["reg_firstname"] as! String
//                                    let results_reg_lastname = store["reg_lastname"] as! String
//                                    let results_user_profile_pic = store["user_profile_pic"] as! String
//                                    let results_rating = store["rating"] as! String
//                                    let results_fsp_partner_location = store["fsp_partner_location"] as! String
//                                    let results_fsp_latitude = store["fsp_latitude"] as! String
//                                    let results_fsp_longitude = store["fsp_longitude"] as! String
//                                    let results_reg_year = store["reg_year"] as! String
                                    
//                                    print("results_reg_id = \(results_reg_id)")
//                                    print("results_reg_firstname = \(results_reg_firstname)" )
//                                    print("results_reg_lastname = \(results_reg_lastname)" )
//                                    print("results_user_profile_pic  = \(results_user_profile_pic )" )
//                                    print("results_rating = \(results_rating)" )
//                                    print("results_fsp_partner_location = \(results_fsp_partner_location)" )
//                                    print("results_fsp_latitude = \(results_fsp_latitude)" )
//                                    print("results_fsp_longitude = \(results_fsp_longitude)" )
//                                    print("results_reg_year = \(results_reg_year)")
                                    
                                    
                                    //Mark :- Stored Result Data
                                    
                                    var dic_categorys : NSDictionary! // original Dictionary
                                    
//                                    if let storeDataArray2 = json["results"]  as? [JSONObject]                                    {
//                                        if let array : NSArray = storeDataArray2 as NSArray?
//                                        {
//                                            
//                                            let array_list : NSMutableArray! =  NSMutableArray(array:array)
//                                            
//                                            for item in 0..<array_list.count
//                                            {
//                                                
//                                                let dic_item : NSDictionary! = array_list[item] as! NSDictionary
//                                                
//                                                if let dic = dic_item
//                                                {
//                                                    array_list.add(dic.object(forKey: "reg_id") as! String)
//                                                    print("reg_id = \(array_list)")
//                                                   
//                                                    array_list.add(dic.object(forKey: "reg_year")! as! String)
//                                                    print("reg_year = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "reg_lastname") as! String)
//                                                    print("reg_lastname = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "reg_firstname") as! String)
//                                                    print("reg_firstname = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "user_profile_pic") as! String)
//                                                    print("user_profile_pic = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "rating") as! String)
//                                                    print("rating = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "fsp_partner_location") as! String)
//                                                    print("fsp_partner_location = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "fsp_latitude") as! String)
//                                                    print("fsp_latitude = \(array_list)")
//                                                    
//                                                    array_list.add(dic.object(forKey: "fsp_longitude") as! String)
//                                                    print("fsp_longitude = \(array_list)")
//                                                   
//                                                }
//                                            }
//                                            
//                                        }
//
//                                    }
                                    
                                    
                                    
//                                   if let defaultArray = Dict.object(forKey: "results")  as?  [[String: Any]]
//                                   {
//
//                                    for i in 0 ..< defaultArray.count
//                                    {
//                                        let reg_id: Int = (defaultArray[i]["reg_id"] as! NSString).integerValue
//                                        let reg_year: Int = (defaultArray[i]["reg_year"] as! NSString).integerValue
//                                        
//                                        print("Array_reg_id\(reg_id)")
//                                        print("Array_reg_year\(reg_year)")
//                                    }
//                                }
//
//                                    for item in (defaultArray as? [[String: Any]])!
//                                    {
//                                        print("reg_id = \(item["reg_id"]  as! String)");
//                                        print("reg_year = \(item["reg_year"] as! String)")
//                                        print("reg_firstname = \(item["reg_firstname"] as! String)")
//                                        print("reg_lastname = \(item["reg_lastname"]   as! String)")
//                                        print("user_profile_pic = \(item["user_profile_pic"] as! String)")
//                                        print("rating = \(item["rating"]   as! String)")
//                                        print("fsp_partner_location = \(item["fsp_partner_location"] as! String)")
//                                        print("fsp_latitude = \(item["fsp_latitude"]   as! String)")
//                                        print("fsp_longitude = \(item["fsp_longitude"]   as! String)")
//                                    }
//                                    }
                                    
//                                    if let defaultArray  = UserDefaults.standard.set(store, forKey: "results") as? String
//                                        
//                                    {
//                                        
//                                    }
                                    UserDefaults.standard.synchronize()
                                    
                                    DispatchQueue.main.async
                                        {
                                            
                                            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                                            
                                            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "TotalResultFoundOnMapView") as! TotalResultFoundOnMapView
                                            self.present(nextViewController, animated:true, completion:nil)
                                            
                                        }
                                    }
                                }
                            }
                        }
              
                    }
                }
            catch
            {
                print(error)
            }
        }.resume()
    }
}





//                            //Mark :- Saving an array:
//                            let defaults = UserDefaults.standard
//                            let array = store
//                            defaults.set(array, forKey: "results")

//                            let array =  UserDefaults.standard.object(forKey: "results")
//                            print(array ?? "nil")



