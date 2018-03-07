//
//  ViewController.swift
//  Dados
//
//  Created by Alejandro Villegas on 3/4/18.
//  Copyright © 2018 AlejandroVillegas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollBottonPressend(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomDice1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

