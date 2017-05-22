//
//  FindSportTeamResultPage.swift
//  SportsPartener_Project
//
//  Created by Equos Infotech PVt. Ltd. on 03/04/17.
//  Copyright © 2017 Equos Infotech PVt. Ltd. All rights reserved.
//

import UIKit

class FindSportTeamResultPage: UIViewController,UITableViewDelegate,UITableViewDataSource

{

    
    @IBOutlet var Tableview: UITableView!
    
    var ProfileImage = ["default_img","default_img","default_img","default_img","default_img"]
    var Teamtype = ["Team type:Male","Team type:Male","Team type:Male","Team type:Male","Team type:Male"]
    var TeamNmae = ["Royal Strikers","Crick IT","Rising Stars","Century Hitters","Ahmedabad blaster"]
    var NewTeam = ["new team","new","new","new","sasasas"]
    var sport = ["Sport:","Sport:","Sport:","Sport:","Sport:"]
    var SportTeam = ["Cricket","Cricket","Cricket","Cricket","Cricket"]
    var Locationname = ["Location:","Location:","Location:","Location:","Location:"]
    var Location = ["CTM BRTS Stand, Hatkeshwar, Ahmedabad, Gujarat, India ","Satellite, Ahmedabad, Gujarat, India ","Kankaria Lake, Kankaria, Ahmedabad, Gujarat, India ","CTM BRTS Stand, Hatkeshwar, Ahmedabad, Gujarat, India","Ahmedabad, Gujarat, India"]
    var MatchDaysName = ["Match Days:","Match Days:","Match Days:","Match Days:","Match Days:"]
    var MatchDays = ["All days","All days","All days","All days","All days"]
   
    
    
     var dic: NSMutableDictionary = NSMutableDictionary()
    
    
   
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        Tableview.reloadData()
        
        Tableview.delegate = self
        
        Tableview.dataSource = self
        
        Tableview.allowsMultipleSelection = true
        
        dic.setObject(ProfileImage, forKey: "ProfileImage" as NSCopying)
        dic.setObject(Teamtype,forKey: "Teamtype" as NSCopying)
        dic.setObject(TeamNmae,forKey: "TeamNmae" as NSCopying)
        dic.setObject(NewTeam,forKey: "NewTeam" as NSCopying)
        dic.setObject(SportTeam, forKey: "SportTeam" as NSCopying)
        dic.setObject(Location,forKey: "Location" as NSCopying)
        dic.setObject(MatchDays, forKey: "MatchDays" as NSCopying)
        print(dic)
    }
    
    
    //Tableview Delegate Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        return ProfileImage.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        let mycell = Tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FindSportTeamResultViewCell
        
        mycell.TeamTypeLabel.text = Teamtype[indexPath.row]
        mycell.TeamNamelabel.text = TeamNmae[indexPath.row]
        mycell.NewTeamlabel.text = NewTeam[indexPath.row]
        mycell.CriketLabel.text = SportTeam[indexPath.row]
        mycell.SportLabel.text = sport[indexPath.row]
        mycell.LocationLabel.text = Locationname[indexPath.row]
        mycell.LocationInformation.text = Location[indexPath.row]
        mycell.AllDaysLabel.text = MatchDays[indexPath.row]
        mycell.MatchDaysLabel.text = MatchDaysName[indexPath.row]
        
        mycell.FindTeamProfile.image = UIImage (named: ProfileImage[indexPath.row])
        mycell.selectionStyle = UITableViewCellSelectionStyle.default
        mycell.FindTeamProfile!.layer.cornerRadius = mycell.FindTeamProfile.frame.size.width/2.0
        mycell.FindTeamProfile!.layer.cornerRadius = mycell.FindTeamProfile.frame.size.height/2.0
        mycell.FindTeamProfile!.clipsToBounds = true
        
        let borderColor1 : UIColor = UIColor(red: 215, green: 215, blue: 215, alpha: 1.0)
        mycell.FindTeamProfile.layer.borderWidth = 1
        mycell.FindTeamProfile!.layer.borderColor = UIColor.lightGray.cgColor
       // mycell.FindTeamProfile!.layer.borderWidth = 3
        
        
        
        mycell.JoinButoon.clipsToBounds = true
        mycell.JoinButoon.layer.cornerRadius = 5
        mycell.JoinButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        mycell.ViewButoon.clipsToBounds = true
        mycell.ViewButoon.layer.cornerRadius = 5
        mycell.ViewButoon.titleLabel!.font = UIFont.systemFont(ofSize: 25.0, weight: UIFontWeightMedium)
        
        
      
        
        switch indexPath.row
    
        {
        case 0:
           
            mycell.JoinButoon.tag = indexPath.row
           mycell.JoinButoon.addTarget(self, action: #selector(logAction), for: .touchUpInside)
            
        case 1:
          
            mycell.JoinButoon.tag = indexPath.row
            mycell.JoinButoon.addTarget(self, action: #selector(logAction), for: .touchUpInside)
            
        case 2:
            
            mycell.JoinButoon.tag = indexPath.row
            mycell.JoinButoon.addTarget(self, action: #selector(logAction), for: .touchUpInside)
  
        case 3:
            
            mycell.JoinButoon.tag = indexPath.row
            mycell.JoinButoon.addTarget(self, action: #selector(logAction), for: .touchUpInside)
            
        case 4:
            
            mycell.JoinButoon.tag = indexPath.row
            mycell.JoinButoon.addTarget(self, action: #selector(logAction), for: .touchUpInside)

        default:
            break
        }

        
        
    
     // mycell.JoinButoon.addTarget(self, action: Selector("logAction"), for: .touchUpInside)
        
        return mycell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("You tapped cell number \(indexPath.row).")
    }
    
  @IBAction func logAction(sender: UIButton)
    
  {
       
    let mycell = Tableview.dequeueReusableCell(withIdentifier: "cell") as! FindSportTeamResultViewCell

    switch sender.tag {
    case 0:
        print("button 1 pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FindSportTeamRequest") as! FindSportTeamRequest
                    self.present(nextViewController, animated:true, completion:nil)
        
        
    case 1:
        print("button 2 pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
                    let nextViewController1 = storyBoard.instantiateViewController(withIdentifier: "FinadSportTeamCricketRequest") as! FinadSportTeamCricketRequest
                    self.present(nextViewController1, animated:true, completion:nil)
    case 2:
        
        print("button 3 pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController1 = storyBoard.instantiateViewController(withIdentifier: "FindSportTeamRisingStarsRequest") as! FindSportTeamRisingStarsRequest
        self.present(nextViewController1, animated:true, completion:nil)
 
    case 3:
        
        print("button 4 pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController1 = storyBoard.instantiateViewController(withIdentifier: "FindSportTeamCenturyHittersRequest") as! FindSportTeamCenturyHittersRequest
        self.present(nextViewController1, animated:true, completion:nil)
      
    case 4:
        
        print("button 5 pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController1 = storyBoard.instantiateViewController(withIdentifier: "FindSportAhmedabadblasterRequest") as! FindSportAhmedabadblasterRequest
        self.present(nextViewController1, animated:true, completion:nil)
      
        
    default:
        break;
    }
    
    
        
     

        

//        
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//        
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "FindaSportTeamPage") as! FindaSportTeamPage
//        self.present(nextViewController, animated:true, completion:nil)
        
        
    }


    

}
    
    

   

