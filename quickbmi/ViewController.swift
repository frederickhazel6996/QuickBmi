//
//  ViewController.swift
//  quickbmi
//
//  Created by frederick hazel on 21/12/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightSlider.value=165
        ageView.layer.cornerRadius=10;
        ageView.layer.shadowColor = UIColor.gray.cgColor
        ageView.layer.shadowOffset = CGSize(width: 3, height: 3)
        ageView.layer.shadowOpacity = 0.7
        ageView.layer.shadowRadius = 4.0
        print(heightSlider.value)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeWeight(_ sender: UIButton) {
        let sign=sender.currentTitle!
        let weight=Int(weightLabel.text!)
    
        if sign=="-"{
            
            if(weight==0){
                print(0)
                weightLabel.text=String(0)
            }
            else{
                
                let newweight=weight!-1
                print(newweight)
                weightLabel.text=String(newweight)
            }
            
        }
        if sign=="+"{
            let newweight=weight!+1
            print(newweight)
            weightLabel.text=String(newweight)
        }

    }
    
    @IBAction func changeAge(_ sender: UIButton) {
        let sign=sender.currentTitle!
        let age=Int(ageLabel.text!)
    
        if sign=="-"{
            
            if(age==0){
                print(0)
                ageLabel.text=String(0)
            }
            else{
                
                let newage=age!-1
                print(newage)
                ageLabel.text=String(newage)
            }
            
        }
        if sign=="+"{
            let newage=age!+1
            print(newage)
            ageLabel.text=String(newage)
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let currentValue=Int(sender.value)
        heightLabel.text=String(currentValue)
    }
    @IBAction func calculateBMI(_ sender: UIButton) {
        
        let height=(Float(heightSlider.value)/100)*(Float(heightSlider.value)/100)
        let weight=Float(weightLabel.text!)!
        let BMI=weight/height
       bmi.text=String(format: "%.1f", BMI)
    }
}

