//
//  ViewController.swift
//  MainApp
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore
import Router

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Welcome Home"
    }

    @IBAction func goToMMB(_ sender: Any) {
        CXRouter.shared.push(MMBMouduleDestinationType.mmbPage1(title: "mmb 1"))
    }
    
    @IBAction func goToOLCI(_ sender: Any) {
        CXRouter.shared.push(OLCIMouduleDestinationType.olciPage1(status: 1))
    }
}

