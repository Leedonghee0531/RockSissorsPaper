//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by 동희 on 2022/11/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var fistButton: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let computerHand = Int.random(in: 0...2)
    }
    
    
    @IBAction func resultaction(_ sender: UIButton) {
        
        let myresulit = sender.tag
        let computerhand = Int.random(in: 0...2)
        //        var 무승부 = "무승부 입니다"
        
        switch computerhand {
        case 0:
            resultImage.image = UIImage(named: "fist")
        case 1:
            resultImage.image = UIImage(named: "scissor")
        case 2:
            resultImage.image = UIImage(named: "palm-of-hand")
        default:
            break
        }
        if computerhand == 0{
            if myresulit == 0 {
                result.text = "무승부"
            } else if myresulit == 1 {
                 result.text = "졌습니다"
            } else {
                result.text = "이겼습니다"
            }
        }else if computerhand == 1{
            if myresulit == 0 {
                result.text = "이겼습니다"
            } else if myresulit == 1 {
                 result.text = "무승부"
            } else {
                result.text = "졌습니다"
            }
        }else{
            if myresulit == 0 {
                result.text = "졌습니다"
            } else if myresulit == 1 {
                 result.text = "이겼습니다"
            } else {
                result.text = "무승부"
            }
            
        }
       
    }
}
