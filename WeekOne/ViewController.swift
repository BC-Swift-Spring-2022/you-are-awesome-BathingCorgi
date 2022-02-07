//
//  ViewController.swift
//  WeekOne
//
//  Created by  Daniel Hong on 1/29/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 12
    let totalNumberOfSounds = 5
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(name:String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("ERROR: Could not read data from fild sound0")
            
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int) -> Int {
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func sayitButtonPressed(_ sender: UIButton) {
        let messages = ["You Are Awesome!",
                        "You are Great",
                        "You are super",
                        "You are Da Bomb",
                        "Can I be you?",
                        "Wow! you are cool"]
        
    
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNumberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        if playSoundSwitch.isOn { //if playSoundSwitch  is on
            playSound(name: "sound\(soundNumber)") //then play the sound

        }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        // do not try to stop audioPlayer if audioPlayer is still nil
        if !sender.isOn && audioPlayer != nil { //if .isOn is not true
                audioPlayer.stop()    //stop playing
                
        }
    }
}

