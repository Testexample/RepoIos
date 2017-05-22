//
//  ChooseModeOption.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 10/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class ChooseModeOption: UIViewController
    
{
    
    @IBOutlet var ChooseModeLabel: UILabel!
    
    var isTeamModeSubmitted : Bool = false
    
    var regi_id_choose_mode = String()
    
    var mode_choose_mode = String()
    
    var RegisterIdstring = String()
    
    var succcessinteger = Int()
    
    var response = ["responseString"]
    
    typealias SoloModeTeamModeJsonObject = [String:Any]
    
    let RegisterId =  UserDefaults.standard.string(forKey: "reg_id" )
    
    
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        print(RegisterId ?? "RegisterId  is nil")
        
        ChooseModeLabel.text = "Please choose the sport mode"
        
    }
    
    @IBAction func ChooseSoloMode(_ sender: UIButton)
    {
        if(checkSoloModeTeamModeInsertedOrNot(FinalStringTeamSoloMode : "solo"))
        {
            self.ChooseModeLabel.isHidden = true
            
        }
        else
        {
            self.ChooseModeLabel.isHidden = true
            
        }
        
    }
    
    @IBAction func ChooseTeamMode(_ sender: UIButton)
    {
        
        if(checkSoloModeTeamModeInsertedOrNot(FinalStringTeamSoloMode : "team"))
        {
            self.ChooseModeLabel.isHidden = true
            
        }
        else
        {
            self.ChooseModeLabel.isHidden = true
        }
    }
    
    func checkSoloModeTeamModeInsertedOrNot(FinalStringTeamSoloMode : String) -> Bool
    {
        let myUrl = URL(string: "http://sportercise.in/temp/test/andapp/reg_mode.php")
        
        var request = URLRequest(url:myUrl!)
        
        request.httpMethod = "POST"// Compose a query string
        
        let postString = "reg_id=\(RegisterId ?? "nil")&mode=\(FinalStringTeamSoloMode)"
        
        print(postString)
        
        request.httpBody = postString.data(using: String.Encoding.utf8);
        
        
        //request.httpBody = postParameters.data(using: String.Encoding.utf8) as! String
        
        
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
            
            _ = [String]()
            
            do {
                if let data = data,
                    let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
                    let blogs = json["regresponse"] as? [[String: Any]] {
                    
                    for blog in blogs {
                        
                        
                        if let reg_id = blog["reg_id"] as? String
                        {
                            self.regi_id_choose_mode=reg_id
                            print(self.regi_id_choose_mode)
                            
                        }
                        if let mode = blog["mode"] as? String
                        {
                            
                            self.mode_choose_mode = mode
                            print(self.mode_choose_mode)
                            
                            
                        }
                        if let success = blog["success"] as? Int
                        {
                            self.succcessinteger = success
                            print(self.succcessinteger)
                            
                        }
                        
                        if self.regi_id_choose_mode == ""
                        {
                            
                        }
                        else
                        {
                            if  self.regi_id_choose_mode == self.RegisterId! && self.mode_choose_mode.contains("team")
                            {
                                self.ChooseModeLabel.isHidden = true
                                self.isTeamModeSubmitted = true
                            }
                            else if self.regi_id_choose_mode == self.RegisterId && self.mode_choose_mode.contains("solo")
                            {
                                self.ChooseModeLabel.isHidden = true
                                self.isTeamModeSubmitted = true
                                let empty = ""
                                UserDefaults.standard.setValue(empty , forKey: "Gioaddress");
                                var empty1 = [""]
                                empty1.removeAll()
                                
                                UserDefaults.standard.setValue(empty1 , forKey: "SportNamedList");
                                
                                DispatchQueue.main.async
                                    {
                                        
                                        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                                        
                                        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EnterSomeDetailPage") as! EnterSomeDetailPage
                                        
                                        self.present(nextViewController, animated:true, completion:nil)
                                        self.ChooseModeLabel.isHidden = true
                                        self.isTeamModeSubmitted = true
                                }
                            }
                            else
                            {
                                self.ChooseModeLabel.isHidden = false
                                self.isTeamModeSubmitted = false
                            }
                            
                        }
                    
                    }
                }
            } catch {
                print("Error deserializing JSON: \(error)")
            }
            catch
            {
                print(error)
            }
            
            }.resume()
        
        return isTeamModeSubmitted
        
        
    }
    
}
