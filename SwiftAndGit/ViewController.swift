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
    
    var phoneButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        button.setTitle("打电话", for: .normal)
        button.backgroundColor = UIColor.orange
        button.addTarget(self, action: #selector(TEl), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //打印视图的size大小
        print(mainViewController.view.frame.size);
        
        print("hello world! ------- MACMini")
        

        print("ProGit")
        
        print("'git diff' and 'git diff --staged'")
        
        print("git commit -a -m")
        
        print("commit")
        
        print("git commit -amend")
        
        print("merge")

        print("remote branch")
    
        view.addSubview(phoneButton)
        phoneButton.center = view.center
        
    }

    @objc func TEl() {
        UIApplication.shared.open(NSURL(string: "tel://18868825142")! as URL, options: [:]) { (success) in
            if success == true {
                print("open:\(success)")
            } else {
                print("open:\(success)")
            }
        }
        
        let flag =  UIApplication.shared.canOpenURL(NSURL(string: "tel://18868825142")! as URL)
        
        print(flag)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

