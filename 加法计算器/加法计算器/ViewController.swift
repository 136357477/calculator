//
//  ViewController.swift
//  加法计算器
//
//  Created by guohui on 16/5/29.
//  Copyright © 2016年 guohui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var resultLab: UILabel!
    
    @IBAction func becomeZero(sender: AnyObject) {
        self.resultLab.text = ""
        self.text1.text = ""
        self.text2.text = ""
        
    }
    
    @IBAction func calcuture() {
        var num1 = Int(self.text1.text!)
        var num2 = Int(self.text2.text!)
        if self.text1.text!.isEmpty {
            num1 = 0
        }
        if !self.text2.hasText() {
            num2 = 0
        }
        
        let resultNum = num1! + num2!
        let resultStr = String(resultNum)
        let resultStr2 = "\(resultNum)"
        print(resultStr2)
        resultLab.text = resultStr
        
        self.text1.endEditing(true)
        self.text2.endEditing(true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

