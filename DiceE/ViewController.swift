//
//  ViewController.swift
//  DiceE
//
//  Created by Saikrishnam Nadimpalli on 7/29/18.
//  Copyright © 2018 Saikrishnam Nadimpalli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"];
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       updateDiceImages()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Randomize the diceIndex
        updateDiceImages()
    }

    func updateDiceImages(){
        
        //Randomize the diceIndex
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

