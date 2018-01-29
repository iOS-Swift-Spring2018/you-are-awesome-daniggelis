//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Tiffany Daniggelis on 1/21/18.
//  Copyright © 2018 Daniggelis. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImage: UIImageView!
    
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 3
    let numberOfSounds = 2
    var soundName = ""
    
    // Code below executes when app first loads.
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    func playSound(soundName: String){
        //load sound file into sound
        if let sound = NSDataAsset(name: soundName){
            //check if sound.data is a sound file
            do{
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }
            catch{
                print("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        }
        else {
            //report error if there's something wrong with sound
            print("ERROR: filename \(soundName) didn't load.")
        }
        
    }
    
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex = -1
        repeat{
            newIndex = Int(arc4random_uniform(UInt32(maxValue)))
        } while lastNumber == newIndex
        
        return newIndex
        
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are fantastic!",
                        "You are great!",
                        "When the genius bar need help, they call you!",
                        "You brighten my day!",
                        "You are da bomb!",
                        "I can't wait to use your app!"]
        
        //show messages
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        awesomeImage.isHidden = false
        
        //show images
    
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "img\(imageNumber)")
        
        //get random number for soundchange file
        soundNumber == nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        
        //play sound
        var soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
        
    
    }
    
}

