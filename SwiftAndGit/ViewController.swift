//
//  ViewController.swift
//  SwiftAndGit
//
//  Created by 周辉平 on 2017/12/15.
//  Copyright © 2017年 fightOrganization. All rights reserved.
//

import UIKit
import Foundation

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
    
        print("branchTest")
        
        view.addSubview(phoneButton)
        phoneButton.center = view.center
        
        /// Array
        let a = NSMutableArray(array: [1,2,3])
        let b: NSArray = a
        let d = a.copy() as! NSArray
        a.insert(4, at: 3)
        print("##########\(b)")
        print("$$$$$$$$$$\(d)")
        
        for x in a {
            print("\(x)\n")
        }
        
        for x in a.dropFirst() {
            print("\(x)\n")
        }
        
        for (num,element) in d.enumerated() {
            print("\(num),\(element)\n")
        }
        
        for element in [1,2,3] {
            print(element)
        }
        
        [1,2,3].forEach { element in
            print("forEarch: \(element)")
        }
        
        let arr: Array = [2,4,5,7,8]
        
        print("index: \(arr.Index(of: 5) ?? 0)")                  // 2
        print("index_foreach: \(arr.Index_forEach(of: 7) ?? 0)")  // 0
        
        (1..<10).forEach{ number in
            print(number)
            if number > 2 { return }
        }
        
        let fibs = [1,2,3,4,5,6,7,8]
        let slice = fibs[1...]
        print(slice)
        let newArray = Array(slice)
        print(newArray)
        
        /// Dictionary
        let frequencies = "hello".frequencies
        print(frequencies)
        
        /// Range
        let lowercaseLetters = Character("a")...Character("z")
        print(lowercaseLetters)
        let fromZero = 0...
        print(fromZero)
        print(lowercaseLetters.contains("f"))
        
        print(lowercaseLetters.overlaps("c"..<"f"))
        
        
        
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


extension Array where Element: Equatable {
    func Index(of element: Element) -> Int? {
        for idx in self.indices where self[idx] == element {
            return idx
        }
        return nil
    }
}

extension Array where Element: Equatable {
    func Index_forEach(of element: Element) -> Int? {
        self.indices.filter{ idx in
            self[idx] == element
        }.forEach { idx in
            return idx
        }
        return nil
    }
}

extension Sequence where Element: Hashable {
    var frequencies: [Element: Int] {
        let frequencyPairs = self.map{($0,1)}
        print(frequencyPairs)
        return Dictionary(frequencyPairs,uniquingKeysWith: +)
    }
}
