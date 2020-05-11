//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

//                                  //
//  This App is for iPhone 11Pro    //
//                                  //

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    var checkNum: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 3の倍数と3がつくかは全く別物なので、３の倍数の時と３がつくときの処理で分ける
    func isAho() -> Bool {
        
        if number % 3 == 0 {    // 3の倍数かどうか調べる

            return true

//        } else if number % 10 == 3 {    // 1の位が3かどうか調べる
//
//            return true
//
//        } else if number / 10 % 10 == 3 {// 10の位が3かどうか調べる
//
//            return true
//
        } else {

        // 3がつくかどうかを調べるためにcheckNumに一度代入する
        // numberのままであると　whileの処理の中で　3の倍数、または3がつく数　以外は0になる
        // 0の次の1になった時、whileの中の処理でplusbutton関数にnumberが渡される時には0になっているので永遠と1から数が上昇しない
        // つまり、plusbuttonを押しても1から数が上昇しない.
            
        checkNum = number
        
        // 問題4: 3がつくかどうか調べる
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

