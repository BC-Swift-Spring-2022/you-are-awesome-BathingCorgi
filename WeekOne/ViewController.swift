//
//  ViewController.swift
//  WeekOne
//
//  Created by  Daniel Hong on 1/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("😎 viewDidLoad has executed!")
    }

    @IBAction func sayitButtonPressed(_ sender: UIButton) {
        print("Say It Button was pressed!")
        messageLabel.text = "You Are Awesome!!"
    }
    
}

