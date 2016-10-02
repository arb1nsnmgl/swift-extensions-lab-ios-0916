//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullName = "Arvin San Miguel"
        let phoneNumber = 8675309
        
        print(fullName.pigLatin)
        print(fullName.points)
        
        print(phoneNumber.halved)
        print(phoneNumber.squared)
        
        print(fullName.whisper())
        print(fullName.shout())
        
        print(phoneNumber.half())
        print(phoneNumber.isDivisible(by: 3))
        
        
        unicornLevelLabel.text = fullName.unicornLevel
        
    }
}


