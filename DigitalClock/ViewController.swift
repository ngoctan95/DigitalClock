//
//  ViewController.swift
//  DigitalClock
//
//  Created by Tan on 1/2/18.
//  Copyright © 2018 Ngoc Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getCurrentDateTime()
        Timer.scheduledTimer(timeInterval: 10, target: self, selector: #selector(ViewController.getCurrentDateTime), userInfo: nil, repeats: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   @objc func getCurrentDateTime() {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        lblTime.text = "\(hour):\(minute)"
        lblStatus.text = hour > 12 ?"PM":"AM"
        print(lblTime.text!)
    }

}

