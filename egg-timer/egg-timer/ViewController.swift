//
//  ViewController.swift
//  egg-timer
//
//  Created by Cáren Sousa on 15/08/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsRemaing = 60
    
    var timer = Timer()
    
    
    @IBOutlet weak var askTime: UILabel!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        secondsRemaing = eggTimes[hardness]!

        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

    
    
    @objc func updateCounter() {
        //example functionality
        if secondsRemaing > 0 {
            print("\(secondsRemaing) seconds to the end of the world")
            secondsRemaing -= 1
        } else {
            askTime.text = "Completed"
        }

    }
}


