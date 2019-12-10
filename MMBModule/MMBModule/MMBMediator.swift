//
//  MMBMediator.swift
//  MMBModule
//
//  Created by zhihao.lv on 2019/10/15.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import Foundation
import AppCore
import Router

extension MMBMouduleDestinationType: CXDestinationImplProtocol {

    public var viewController: UIViewController? {
        let bundle = Bundle(for: ViewController.self)
        switch self {
        case .mmbPage1(let title):
            if let page1VC = UIStoryboard(name: "Main", bundle: bundle).instantiateInitialViewController() as? ViewController {
                page1VC.labelText = title
                return page1VC
            }
            return nil

        }
    }
}





