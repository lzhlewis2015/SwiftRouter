//
//  ViewController.swift
//  MainApp
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore
import ModuleTargets

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func goToMMB(_ sender: Any) {
        CXRouter.shared.push(MMBMouduleDestinationType.mmbPage1(title: "mmb 1"))
    }
    
    @IBAction func goToMMBPage2(_ sender: Any) {
        CXRouter.shared.push(MMBMouduleDestinationType.mmbPage2(title: "mmb 2",
                                                                status: .multiBooking))

    }
}

