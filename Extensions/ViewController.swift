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
        
        let fullName = "Lloyd W. Sykes 🦄🦄🦄🦄🦄🦄🦄"
        let phoneNumber = 8675309
        print("This is my full name in Pig Latin: \(fullName.pigLatin)\nMy name has this many points: \(fullName.points)\nMaybe we should be quiet: \(fullName.whisper())\nOk let's get loud: \(fullName.shout())\nMy phone number squared: \(phoneNumber.squared)\nMy phone number halved: \(phoneNumber.halved)\nMy phone number is divisible by 5309: \(phoneNumber.isDivisibleBy(5309))")
        
        self.unicornLevelLabel.text = fullName.unicornLevel
    }
}


