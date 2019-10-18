//
//  MainMediator.swift
//  MainApp
//
//  Created by zhihao.lv on 2019/10/18.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import Foundation
import AppCore
import ModuleTargets

extension MainMouduleDestinationType: CXDestinationSourceType {
    
    public var viewController: UIViewController? {
        let bundle = Bundle(for: ViewController.self)
        switch self {
        case .mainPage:
            if let mainPage = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as? UINavigationController {
                return mainPage
            }
            return nil
        }
    }
}
