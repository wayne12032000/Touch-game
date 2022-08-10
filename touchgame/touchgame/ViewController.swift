//
//  ViewController.swift
//  touchgame
//
//  Created by 張世維 on 2022/1/26.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var upbtn: UIButton!
    
    @IBOutlet weak var dwbtn: UIButton!
    @IBOutlet weak var uplbl: UILabel!
    @IBOutlet weak var dwlbl: UILabel!
    @IBOutlet weak var enduplbl: UILabel!
    @IBOutlet weak var enddwlbl: UILabel!
    @IBOutlet weak var finalbtn: UIButton!
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        score = 0
        uplbl.text = "\(score)"
        dwlbl.text = "\(score)"
        uplbl.transform = CGAffineTransform(rotationAngle: 3.14)
        
        finalbtn.isHidden = true
        enddwlbl.isHidden = true
        enduplbl.isHidden = true
    }
    func  test(){
        if score >= 10{
            finalbtn.isHidden = false
            enddwlbl.isHidden = false
            enduplbl.isHidden = false
            enduplbl.text = "winner"
            enddwlbl.text = "loser"
            score = 0
        }else if score <= -10{
            finalbtn.isHidden = false
            enddwlbl.isHidden = false
            enduplbl.isHidden = false
            enduplbl.text = "loser"
            enddwlbl.text = "winner"
            score = 0
        }
    }
    @IBAction func upact(_ sender: Any) {
        score+=1
        uplbl.text = "\(score)"
        dwlbl.text = "\(score)"
        test()
    }
    
    @IBAction func dwact(_ sender: Any) {
        score-=1
        uplbl.text = "\(score)"
        dwlbl.text = "\(score)"
        test()
    }
    @IBAction func finalact(_ sender: Any) {
        finalbtn.isHidden = true
        enddwlbl.isHidden = true
        enduplbl.isHidden = true
    }
}

