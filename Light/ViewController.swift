//
//  ViewController.swift
//  Light
//
//  Created by Tyler Ilunga on 7/2/17.
//  Copyright © 2017 Tyler Ilunga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    
    @IBOutlet weak var lightButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var instruction: UILabel!
    
    @IBAction func lightButtonPressed(_ sender: Any) {
        lightOn = !lightOn
        update()
    }
    
    
    func update(){
        if lightOn {
            view.backgroundColor = .white
            greetingLabel.textColor = .black
            instruction.textColor = .black
            greetingLabel.text = "Good Morning!"
        } else {
            view.backgroundColor = .black
            greetingLabel.textColor = .white
            instruction.textColor = .white
            greetingLabel.text = "Good Evening!"
        }
    }
    
    func configureTaps() {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        update()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

