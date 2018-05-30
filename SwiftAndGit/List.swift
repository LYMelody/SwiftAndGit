//
//  List.swift
//  SwiftAndGit
//
//  Created by 周辉平 on 2018/5/28.
//  Copyright © 2018年 fightOrganization. All rights reserved.
//

import Foundation

enum List<Element> {
    case end
    indirect case node(Element,next:List<Element>)
}

extension List {
    func cons(_ x: Element) -> List {
        return .node(x,next:self)
    }
}
