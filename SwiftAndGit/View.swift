
//
//  View.swift
//  SwiftAndGit
//
//  Created by 周辉平 on 2018/6/27.
//  Copyright © 2018年 fightOrganization. All rights reserved.
//

import Foundation

class View {
    
    var window: Window
    
    init(window: Window) {
        self.window = window
    }
    
    deinit {
        print("Deinit View")
    }
}
