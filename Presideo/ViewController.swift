//
//  ViewController.swift
//  Presideo
//
//  Created by Prakash maripalli on 8/4/17.
//  Copyright © 2017 Prakash maripalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Presideo Poragandlu"
       self.navigationController?.navigationBar.tintColor = UIColor.orange
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.blue]  
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

