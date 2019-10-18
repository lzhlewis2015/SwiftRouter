//
//  OLCIMeditor.swift
//  OLCIModule
//
//  Created by zhihao.lv on 2019/10/16.
//  Copyright © 2019 zhihao.lv. All rights reserved.
//

import Foundation
import AppCore
import ModuleTargets


extension OLCIMouduleDestinationType: CXDestinationSourceType {
    

    public var viewController: UIViewController? {
        
        switch self {
        case .olciPage1(let status):
            let vc = OLCIViewController()
            vc.status = status
            return vc
        }
        return nil
    }
    
}
