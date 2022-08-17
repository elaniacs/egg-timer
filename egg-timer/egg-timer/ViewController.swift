//
//  ViewController.swift
//  egg-timer
//
//  Created by Cáren Sousa on 15/08/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    
    @IBOutlet weak var barProgress: UIProgressView!
    @IBOutlet weak var askTime: UILabel!

    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        barProgress.progress = 0.0
        secondsPassed = 0
        askTime.text = hardness

        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

    @objc func updateCounter() {
        if secondsPassed < totalTime {
            
            secondsPassed += 1
            barProgress.progress = Float(secondsPassed) / Float(totalTime)

        } else {
            timer.invalidate()
            askTime.text = "Completed"
        }

    }
}


