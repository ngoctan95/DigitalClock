//
//  ViewController.swift
//  DigitalClock
//
//  Created by Tan on 1/2/18.
//  Copyright © 2018 Ngoc Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let techmaster = (1, "hi")
    let float:Float = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(techmaster.0)
        print(techmaster.1)
        print("\(techmaster.0) and \(techmaster.1)")
        print((Int).self,float)
        
        let techmaster1 = (add : 14, so:"1")
        let (_,_) = techmaster1
        print("\(techmaster1.add)")
        
        var number = "123"
        var converted = Int(number)
        if converted != nil
        {
            print(converted!)
        }
        else
        {
            print("nil roi")
        }
        
        //
        if let temp = Int(number), let temNum = Int("11a"), temp > temNum{
            print(temp)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

