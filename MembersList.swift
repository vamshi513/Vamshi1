//
//  MembersList.swift
//  Presideo
//
//  Created by Prakash maripalli on 8/4/17.
//  Copyright © 2017 Prakash maripalli. All rights reserved.
//

import UIKit

class MembersList: UITableViewController {
    var membersArray : Array = [String]()
    var proArray : Array = [String]()
    let cellRefer = PersonalDetailsInfo()
    
    
     @IBOutlet var tableVew: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Members List"
        membersArray = ["Vijay","Shiva","Dileep","Harish","Nipun","Prakash","Bannu"]
        proArray = ["Sec","Hadoop", "Sec", "Sec","Rooby","ios","Bussiness"]
        tableView.tableFooterView = UIView ()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return membersArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = membersArray[indexPath.row]
        cell.detailTextLabel?.text = proArray[indexPath.row]
        // Configure the cell...
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
       
        let mvc = storyboard?.instantiateViewController(withIdentifier: "infoID") as! Information
        mvc.nameValue = membersArray[indexPath.row]
        
        navigationController?.pushViewController(mvc, animated: true)
        
        }
       
        
        
    

//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "segueID", sender: indexPath) //Pass indexPath as sender instead of self
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "segueID" {
//            
//            var playerVC = segue.destination as! UITabBarController
//            let indexPath = sender as! IndexPath
//            
//        }
//    }

   
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
