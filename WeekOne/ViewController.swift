//
//  ViewController.swift
//  WeekOne
//
//  Created by  Daniel Hong on 1/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sayitButtonPressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!!"
        imageView.image = UIImage(named: "IMG_2951")
    }
    
}

