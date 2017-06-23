//
//  ViewController.swift
//  FunFacts
//
//  Created by user on 6/23/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit


var funFactArray = ["Fact1", "Fact2", "Fact3", "Fact4", "Fact5"]


class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    var labelValue: String?
    var buttonPresses: Int = 0
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = "Another Interesting Fact"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        //Label text will equal the funFactArray position using the incremented variable value
        funFactLabel.text = funFactArray[buttonPresses]
        buttonPresses += 1
        //The following line insures no out of bounds
        if (buttonPresses == funFactArray.count) {
            buttonPresses = 0
        }

        //added a switch statement to increment through background colors on button presses
        switch buttonPresses {
        case 1:
           self.view.backgroundColor = UIColor.gray;
        case 2:
           self.view.backgroundColor = UIColor.blue
        case 3:
            self.view.backgroundColor = UIColor.green
        case 4:
            self.view.backgroundColor = UIColor.yellow
        default:
            self.view.backgroundColor = UIColor.white
        }
        
    }
}











