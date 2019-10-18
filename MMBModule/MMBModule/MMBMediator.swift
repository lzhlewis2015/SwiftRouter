//
//  MMBMediator.swift
//  MMBModule
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import Foundation
import AppCore
import ModuleTargets

extension MMBMouduleDestinationType: CXDestinationSourceType {

    public var viewController: UIViewController? {
        let bundle = Bundle(for: ViewController.self)
        switch self {
        case .mmbPage1(let title):
            if let page1VC = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as? ViewController {
                page1VC.labelText = title
                return page1VC
            }
            return nil
        case .mmbPage2(let title, _):
            let vc = MMBPage2ViewController()
            vc.labelForDisplay.text = title
            return vc
        }
    }
}


