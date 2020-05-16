//
//  ViewController.swift
//  WarCardGame
//
//  Created by BURAK EKMEN on 9.05.2020.
//  Copyright © 2020 Burak Ekmen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardImageView: UIImageView!
    @IBOutlet weak var rightCardImageView: UIImageView!
    @IBOutlet weak var playerSocreLabel: UILabel!
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var leftScore:Int = 0
    var rightScore:Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftCardRandom = Int.random(in: 2...14)
        let rightCardRandom = Int.random(in: 2...14)
        
        leftCardImageView.image = UIImage(named: "card\(leftCardRandom)")
        rightCardImageView.image = UIImage(named: "card\(rightCardRandom)")
        
        
        
        if leftCardRandom > rightCardRandom{
            leftScore += 1
            playerSocreLabel.text = String(leftScore)
        }
        else if leftCardRandom < rightCardRandom{
            rightScore += 1
            cpuScoreLabel.text = String(rightScore)
        }
        else{
            
        }
        
        
        
    }
    
}

