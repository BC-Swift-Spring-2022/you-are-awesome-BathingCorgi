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
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!!"
        let bombMessage = "You Are DA BOMB!"

        if messageLabel.text == awesomeMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "IMG_2951")
        } else if messageLabel.text == greatMessage {
            messageLabel.text = bombMessage
            imageView.image = UIImage(named: "IMG_2950")
        } else {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "IMG_2949")
        }
    }
    
}

