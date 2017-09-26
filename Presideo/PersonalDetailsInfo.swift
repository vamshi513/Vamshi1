//
//  PersonalDetailsInfo.swift
//  Presideo
//
//  Created by Prakash maripalli on 8/5/17.
//  Copyright © 2017 Prakash maripalli. All rights reserved.
//

import UIKit



class PersonalDetailsInfo: UITableViewCell {

    @IBOutlet weak var contentViww: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
          print("any new commits")
      
    }
   
    @IBOutlet weak var cellNumberField: UITextField?
    @IBOutlet weak var nameLbl: UILabel?
    
   

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
      
        
    }
    
}
