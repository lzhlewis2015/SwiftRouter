//
//  ViewController.swift
//  MMBModule
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    
    var labelText = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = labelText
    }
    
    @IBAction func backToMain(_ sender: Any) {
//        CXRouter.shared.makeRoot(to: MainMouduleDestinationType.mainPage)
    }
    
}

