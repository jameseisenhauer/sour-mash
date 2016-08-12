//
//  BlackViewController.swift
//  sour-mash
//
//  Created by James Eisenhauer on 8/12/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import UIKit

class BlackViewController: UIViewController {

    @IBOutlet weak var lbl_black_title: UILabel!
    @IBOutlet weak var lbl_black_sub_title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blackColor()
        
        self.lbl_black_title.backgroundColor = UIColor.blackColor()
        self.lbl_black_title.textColor = UIColor.whiteColor()
        self.lbl_black_title.accessibilityLabel = "lbl_black_title"
        
        self.lbl_black_sub_title.backgroundColor = UIColor.blackColor()
        self.lbl_black_sub_title.textColor = UIColor.whiteColor()
        self.lbl_black_sub_title.accessibilityLabel = "lbl_black_sub_title"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

