//
//  ViewController.swift
//  You are Awesome!
//
//  Created by Tiffany Daniggelis on 1/21/18.
//  Copyright © 2018 Daniggelis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var index = 0
    
    
    // Code below executes when app first loads.
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are fantastic!",
                        "You are great!",
                        "When the genius bar need help, they call you!",
                        "You brighten my day!"]
   
        messageLabel.text = messages[index]
        index+=1
        
        if index == messages.count{
            index = 0
        }
        
//        let message1 = "You are da Bomb!"
//        let message2 = "You are great!"
//        let message3 = "You are amazing!"
//        if messageLabel.text == message1{
//            messageLabel.text = message2
//        }
//        else if messageLabel.text == message2{
//            messageLabel.text = message3
//        }
//        else{
//            messageLabel.text = message1
//        }
        
    }
    
}

