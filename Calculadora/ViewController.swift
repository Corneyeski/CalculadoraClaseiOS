//
//  ViewController.swift
//  Calculadora
//
//  Created by DAM on 25/10/17.
//  Copyright © 2017 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textShowOne: UITextField!
    @IBOutlet weak var textShowTwo: UITextField!
    
    var lastTotal = 0;
    var lasFirst = 0;
    var lastSecond = 0;
    var lastSign = "";
    
    var total = 0.0;
    var first = "";
    var second = "";
    var sign = "";
    var show = "";
    
    var who = false;

    @IBAction func clear(_ sender: Any) {
        lastTotal = 0;
        lasFirst = 0;
        lastSecond = 0;
        lastSign = "";
        
        total = 0.0;
        first = "";
        second = "";
        sign = "";
        show = "";
        
        who = false;
        
        setText()
        textShowTwo.text = ""
    }
    
    @IBAction func total(_ sender: Any) {
        checkValues()
    }
    
    @IBAction func whatDoes(_ sender: Any) {
        
        if who && second != "" || !who {
        switch (sender as AnyObject).tag {
        case 0:
            //div
            if !who {
               sign = "/"
            } else {
                checkValues()
                sign = "/"
            }
            break
        case 1:
            //mult
            if !who {
                sign = "*"
            } else {
                checkValues()
                sign = "*"
            }
            break
        case 2:
            //rest
            if !who {
                sign = "-"
            } else {
                checkValues()
                sign = "-"
            }
            break
        case 3:
            //sum
            if !who {
                sign = "+"
            } else {
                checkValues()
                sign = "+"
            }
            break
        default:
            break
        }
        if !who {
            who = true
        }else {
            who = false
        }
        print("\(sign)")
        show.append(sign)
        setText()
        }
    }
    @IBAction func numClick(_ sender: Any) {
        if !who {
            
            first.append(String(findNumber(sender: sender as AnyObject)))
            
            show = String(first);
            
        }else{
            second += String(findNumber(sender: sender as AnyObject))
            
            show = String(first) + sign + String(second);
        }
        setText()
    }
    
    override func viewDidLoad() {super.viewDidLoad()}

    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}


    func suma(first:Double, second:Double){
        first+second
    }
    func resta(first:Double, second:Double){
        first-second
    }
    func mult(first:Double, second:Double){
        first*second
    }
    func div(first:Double, second:Double){
        first/second
    }
    
    func findNumber(sender:AnyObject) -> Int{
        
        switch sender.tag {
        case 0:
            return 0;
        case 1:
            return 1;
        case 2:
            return 2;
        case 3:
            return 3;
        case 4:
            return 4;
        case 5:
            return 5;
        case 6:
            return 6;
        case 7:
            return 7;
        case 8:
            return 8;
        case 9:
            return 9;
        default:
            return 0
        }
    }
    
    func setText(){
        textShowOne.text = show
    }
    
    func checkValues(){
        if sign == "/" {
            total = Double(first)! / Double(second)!
        }
        if sign == "*" {
            total = Double(first)! * Double(second)!
        }
        if sign == "-" {
            total = Double(first)! - Double(second)!
        }
        if sign == "+" {
            total = Double(first)! + Double(second)!
        }
        show = String(Double(total))
        textShowTwo.text = first + sign + second + " = " + String(total)
        setText()
        
        first = String(Double(total))
        second = ""
        sign = ""
        who = false;
    }
}

