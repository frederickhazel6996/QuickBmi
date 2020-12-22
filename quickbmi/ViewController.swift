//
//  ViewController.swift
//  quickbmi
//
//  Created by frederick hazel on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func changeAge(_ sender: UIButton) {
        let sign=sender.currentTitle
        var age=Int(ageLabel.text!)
    
        if sign=="-"{
            
            if(age!==0){
                print(0)
                ageLabel.text=String(0)
            }
            else{
                
                var newage=age!-1
                print(newage)
                ageLabel.text=String(newage)
            }
            
            
            
            
            
        }
        if sign=="+"{
            var newage=age!+1
            print(newage)
            ageLabel.text=String(newage)
        }
    }
}

