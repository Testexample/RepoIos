//
//  EnterYourDetailPopUpMenu.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 14/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class EnterYourDetailPopUpMenu: UIViewController,UITableViewDataSource,UITableViewDelegate
    
    
{
    
    @IBOutlet var PoPUpOkBtn: UIButton!
    
    @IBOutlet var PoPUpCancelBtn: UIButton!
    
    
    @IBOutlet var SelectInterestTableview: UITableView!
    
    
    @IBAction func PoPUpCancelClick(_ sender: UIButton)
    {
        removeAnimate()
    }
    
    var Jsonarr = NSDictionary()
    
    var SportsNmae = String()
    
    var SportsId = String()
    
    var sportsnameappend = [String]()
    
    var sportidappend = [String]()
    
    var arry : NSMutableArray = NSMutableArray()
    
    var dict : NSMutableDictionary = NSMutableDictionary()
    
    var selectedIndexPathArray = Array<NSIndexPath>()
    
    var selectedServices = [Int: Bool]()
    
    var selectedServicesArray = [String]()
  
    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
        //MARK :- UiTableview Delegate Datasource
        SelectInterestTableview.reloadData()
        SelectInterestTableview.delegate = self
        SelectInterestTableview.dataSource = self
        
        
        
        //MARK :- EnterYour Detail PoPUpOkBtn Butoon Design
        let borderColor1 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PoPUpOkBtn.layer.borderWidth = 1
        PoPUpOkBtn.layer.borderColor = borderColor1.cgColor
        PoPUpOkBtn.clipsToBounds = true
        PoPUpOkBtn.layer.cornerRadius = 5
        
        //MARK :- EnterYour Detail PoPUpCancelBtn Butoon Design
        let borderColor2 : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        PoPUpCancelBtn.layer.borderWidth = 1
        PoPUpCancelBtn.layer.borderColor = borderColor2.cgColor
        PoPUpCancelBtn.clipsToBounds = true
        PoPUpCancelBtn.layer.cornerRadius = 5
        
        // MARK :- Calling JsonResponse
        
        SportsCheckboxJsonData()
        
    }
    
    
    //MARK :-  JsonParsing Function
    
    func SportsCheckboxJsonData()
    {
        
        
        
        let defaults = UserDefaults.standard
        
        defaults.set(SportsNmae, forKey: "sports")
        
        UserDefaults.standard.synchronize()
        
        
        
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
                    self.SelectInterestTableview.reloadData()
                })
            }
            catch
            {
                print(error.localizedDescription)
            }
            
            }.resume()
    }
 
    //MARK :- UITableview Methods
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return  sportsnameappend.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        let mycell = SelectInterestTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EnterYourDetailPopUpCell
        
        mycell.textLabel!.text = sportsnameappend[indexPath.row]
        
        if selectedServicesArray.contains(sportsnameappend[indexPath.row])
        {
            mycell.accessoryType = .checkmark
        }
        else
        {
            mycell.accessoryType = .none
            
        }
        return mycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("You selected cell number: \(indexPath.row)!")
        
        let mycell = SelectInterestTableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EnterYourDetailPopUpCell
        
        mycell.textLabel!.text = sportsnameappend[indexPath.row]
        
               
        if let selectedRow = tableView.cellForRow(at: indexPath)
        {
            var total = 0
            
            if selectedRow.accessoryType == .none
            {
                selectedRow.accessoryType = .checkmark
                selectedServicesArray.append((selectedRow.textLabel?.text ?? "")!)
                UserDefaults.standard.set(selectedServicesArray, forKey: "SportNamedList")
                print("SelectedSportsName = \(selectedServicesArray)")
                total += sportsnameappend.count
                print("Total = \(total)")
                UserDefaults.standard.synchronize()
                
            }
            else
            {
                selectedRow.accessoryType = .none
                
                let Unchecked = selectedServicesArray.index(of: (selectedRow.textLabel?.text ?? "")!)
                selectedServicesArray.remove(at: Unchecked!)
                print("UnSelectedSportsName = \(selectedServicesArray)")
                total -= sportsnameappend.count
                print("TotalRemove = \(total)")
            }
        }
        
        SelectInterestTableview.reloadData()
        
    // SelectInterestTableview.reloadRows(at: [indexPath], with: .automatic)
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    
    func do_table_refresh()
    {
        DispatchQueue.main.async (execute: {
            self.SelectInterestTableview.reloadData()
            return
        })
    }
    
    //Mark : - PoPUpCancel Function
    
    func removeAnimate()
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EnterSomeDetailPage") as! EnterSomeDetailPage
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
    @IBAction func SelectSportPageOkButoon(_ sender: UIButton)
    {
        
        let SportNameListArray = UserDefaults.standard.stringArray(forKey: "SportNamedList") ?? [String]()
        print("Namelist = \(SportNameListArray)")
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "EnterSomeDetailPage") as! EnterSomeDetailPage
        self.present(nextViewController, animated:true, completion:nil)
        
    }
    
}


