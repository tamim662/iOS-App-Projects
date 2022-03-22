//
//  ViewController.swift
//  Dicee-iOS13
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageVeiw2: UIImageView!
    
    var leftDiceNumber = 1
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//
//        //Who.what = Value
//        // Image literal in xcode latest is #imageLiteral(
////        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//
////        diceImageView1.alpha = 0.5
//
//
//    }
    
    var diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]


    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Buton got pressed!")
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageVeiw2.image = diceArray[Int.random(in: 0...5)]
        
//        leftDiceNumber = leftDiceNumber + 1
//
//        if(leftDiceNumber == 6){
//            leftDiceNumber = 0
//        }
    }
}

