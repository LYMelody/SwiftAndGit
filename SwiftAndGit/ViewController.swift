//
//  ViewController.swift
//  SwiftAndGit
//
//  Created by 周辉平 on 2017/12/15.
//  Copyright © 2017年 fightOrganization. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let mainViewController = UIViewController();
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //打印视图的size大小
        print(mainViewController.view.frame.size);
        
        print("hello world! ------- MACMini")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

