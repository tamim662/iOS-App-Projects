//
//  ViewController.swift
//  EggTimer
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    let sofTime = 5
    let mediumTime = 7
    let hardTime = 12
    
    // Dict : [hardness : seconds]
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        titleLabel.text = hardness
        progressBar.progress = 0.0
        secondsPassed = 0
        
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
        totalTime = eggTimes[hardness]!
            
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
    
    }
    @objc func countDown() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
        
       
        }
        else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            playSound()
            
        }
    }
    
    var player: AVAudioPlayer?

    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
  
}
