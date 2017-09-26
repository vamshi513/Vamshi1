//
//  LoginViewController.swift
//  Presideo
//
//  Created by Prakash maripalli on 8/23/17.
//  Copyright © 2017 Prakash maripalli. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userIdTxtFld: UITextField!
    @IBOutlet weak var passWordTxtFld: UITextField!
    
   
    let credentialsDict: Dictionary = [String: String]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func LoginSystem()  {
        if userIdTxtFld.text == "Prakash" && passWordTxtFld.text == "1234"{
            let mvc = storyboard?.instantiateViewController(withIdentifier: "membersVc") as? MembersList
            navigationController?.pushViewController(mvc!, animated: true)
        }else{
            print("Invalid Address")
            let alert = UIAlertView(title: "Oops!", message: "check your Pass Word/user ID", delegate: nil, cancelButtonTitle: "Cancel")
            alert.show()
           
        }
        }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signInBtn(_ sender: Any) {
        LoginSystem()
    }

    @IBAction func signUpBtn(_ sender: Any) {
       // let  mvc = storyboard?.instantiateViewController(withIdentifier: "SignUpVc") as! SginUp
        //navigationController?.pushViewController(mvc, animated: true)
     
        //let urlsd = "www.livingatpresidioapts.com"
        //UIApplication.shared.open(urlsd, options: [:], completionHandler: nil)
        
    }
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     */
    
}
