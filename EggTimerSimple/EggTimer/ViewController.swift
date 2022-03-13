//
//  ViewController.swift
//  EggTimer
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    let sofTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    // Dict : [hardness : seconds]
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    var secondsRemaining = 60
    var timer = Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        titleLabel.text = "Begin!"
        let hardness = sender.currentTitle!
//        print(hardness)
//        if(hardness == "Soft"){
//            print(sofTime)
//        }
//        else if(hardness == "Medium"){
//            print(mediumTime)
//        }
//        else{
//            
//            print(hardTime)
//        }
//        switch hardness {
//        case "Soft":
//            print(sofTime)
//        case "Medium":
//            print(mediumTime)
//        default:
//            print(hardTime)
//        }
//        print(eggTimes[hardness]!)
        
        timer.invalidate()
        secondsRemaining = eggTimes[hardness]!
            
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
    
    }
    @objc func countDown() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
           secondsRemaining -= 1
        titleLabel.text = "\(secondsRemaining) seconds."
       
        }
        else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            
        }
    }
  
}
