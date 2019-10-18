//
//  MMBPage2ViewController.swift
//  MMBModule
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import UIKit
import AppCore
import ModuleTargets

class MMBPage2ViewController: UIViewController {

    var backToMainCallback: (() -> Void)?
    
    lazy var labelForDisplay: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        label.textColor = .black
        label.text = "This is page 2 on MMB without storyboard"
        return label
    }()
    
    lazy var buttonBackToMain: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.green, for: .normal)
        button.setTitle("back to main", for: .normal)
        button.addTarget(self, action: #selector(backToMain), for: .touchUpInside)
        
        button.frame = CGRect(x: 100, y: 300, width: 200, height: 100)
        return button
    }()
    
    lazy var buttonGoToOLCI: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(.green, for: .normal)
        button.setTitle("go to olci", for: .normal)
        button.addTarget(self, action: #selector(gotToOLCI), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 500, width: 200, height: 100)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "mmb 2"
        view.backgroundColor = .white
        view.addSubview(labelForDisplay)
        view.addSubview(buttonBackToMain)
        view.addSubview(buttonGoToOLCI)
    }
    
    @objc func backToMain() {
        CXRouter.shared.makeRoot(to: MainMouduleDestinationType.mainPage)
    }
    
    @objc func gotToOLCI() {
        CXRouter.shared.push(OLCIMouduleDestinationType.olciPage1(status: .status1))
    }
}
