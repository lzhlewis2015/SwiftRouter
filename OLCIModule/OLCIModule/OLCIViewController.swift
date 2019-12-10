//
//  OLCIViewController.swift
//  OLCIModule
//
//  Created by zhihao.lv on 2019/10/16.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore
import Router

class OLCIViewController: UIViewController {

    var status: Int = 0
    
    lazy var olciLabel: UILabel = {
        let label = UILabel()
        label.text = "olciLabelStatus"
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        return label
    }()
    
    lazy var backToMainButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("backToMain", for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 200)
        button.addTarget(self, action: #selector(backToMain), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "OLCI"
        view.backgroundColor = UIColor(displayP3Red: 1, green: CGFloat(245.0/255.0), blue: CGFloat(199.0/255.0), alpha: 1)
        olciLabel.text = "Status:" + (status == 0 ? "Status1" : "Status2")
        view.addSubview(olciLabel)
        view.addSubview(backToMainButton)
    }
    
    @objc func backToMain() {
        CXRouter.shared.makeRoot(to: MainMouduleDestinationType.mainPage)
    }

}
