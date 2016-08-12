//
//  WhiteViewController.swift
//  sour-mash
//
//  Created by James Eisenhauer on 8/12/16.
//  Copyright © 2016 James Eisenhauer. All rights reserved.
//

import UIKit

class WhiteViewController: UIViewController {

    @IBOutlet weak var lbl_white_title: UILabel!
    @IBOutlet weak var lbl_white_sub_title: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         self.lbl_white_title.accessibilityLabel = "lbl_white_title"
         self.lbl_white_sub_title.accessibilityLabel = "lbl_white_sub_title"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

