//
//  ViewController.swift
//  egg-timer
//
//  Created by Cáren Sousa on 15/08/22.
//

import UIKit

class ViewController: UIViewController {

    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        
        print(result)
        
    }
    
    
    
    


}

