//
//  ViewController.swift
//  RollGame
//
//  Created by EDOUARD CHEVENSLOVE on 09/11/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var right: UILabel!
    @IBOutlet weak var left: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        right.text = "4"
        left.text = "1"
    }
    
    @IBAction func roll(_ sender: Any) {
        
        newPairDices()
        let leftInt = Int(left?.text ?? "") ?? 0
        let rightInt = Int(right.text!)!
        
        let total = leftInt + rightInt
        
        if(total >= 6){
            print("You win")
        }else{
            print("You loose")
        }
    }
    
    func newPairDices() {
        let aleatoireLeft = Int.random(in: 0...5)
        let aleatoireRight = Int.random(in: 0...5)
        
        left.text = String(aleatoireLeft)
        right.text = String(aleatoireRight)
    }

}

