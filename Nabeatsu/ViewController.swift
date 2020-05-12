//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    var checkNum: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        
        if number % 3 == 0 {

            return true

        } else {

        checkNum = number
        
            while checkNum != 0 {

                if  checkNum % 10 == 3 {

                    return true

                } else {

                    checkNum = checkNum / 10

                }
            }
        }
        
        return false
        
    }
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho() == true {
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clear() {
        number = 0
        faceLabel.text = "(゜o゜)"
        countLabel.text = String(number)
    }
}

