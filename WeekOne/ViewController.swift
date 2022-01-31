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
    
    var imageNumber = 2949
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sayitButtonPressed(_ sender: UIButton) {
        
        print (imageNumber)
//        let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        imageView.image = UIImage(named: imageName)
        imageNumber = imageNumber + 1
        if imageNumber == 2953 {
            imageNumber = 2949
        }
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!!"
        //        let bombMessage = "You Are DA BOMB!"
        //
        //        if messageLabel.text == awesomeMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "IMG_2951")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = bombMessage
        //            imageView.image = UIImage(named: "IMG_2950")
        //        } else {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "IMG_2949")
        //        }
    }
    
}

