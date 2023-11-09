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
        right.text = "0"
        left.text = "0"
    }
    
    @IBAction func roll(_ sender: Any) {
        
        newPairDices()
        let leftInt = Int(left?.text ?? "") ?? 0
        let rightInt = Int(right.text!)!
        
        let total = leftInt + rightInt
        
        var resultString = ""
        
        if(total >= 6){
            resultString = "You win"
        }else{
            resultString = "You loose"
        }
        
        // Initialisation
        
        let result = UILabel(frame: CGRect(x: 0, y: self.view.bounds.height - 200, width: self.view.bounds.width, height: 200))
        // Paramétrage
        result.backgroundColor = .white
        result.text = resultString
        result.textAlignment = .center
        
        // Ajout à la vue
        self.view.addSubview(result)
    }
    
    func newPairDices() {
        let aleatoireLeft = Int.random(in: 0...5)
        let aleatoireRight = Int.random(in: 0...5)
        
        left.text = String(aleatoireLeft)
        right.text = String(aleatoireRight)
    }

}

