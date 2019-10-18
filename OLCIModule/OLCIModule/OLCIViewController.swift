//
//  OLCIViewController.swift
//  OLCIModule
//
//  Created by zhihao.lv on 2019/10/16.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore
import ModuleTargets

class OLCIViewController: UIViewController {

    var status: OLCIStatus = .status2
    
    var olciLabel: UILabel = {
        let label = UILabel()
        label.text = "olciLabelStatus"
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "olci"
        view.backgroundColor = .white
        olciLabel.text = "Status:" + (status == .status1 ? "Status1" : "Status2")
    
        view.addSubview(olciLabel)
    }

}
