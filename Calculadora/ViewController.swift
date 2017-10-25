//
//  ViewController.swift
//  Calculadora
//
//  Created by DAM on 25/10/17.
//  Copyright © 2017 DAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lastTotal = 0;
    var lasFirst = 0;
    var lastSecond = 0;
    var lastSign = "";
    
    var total = 0.0;
    var first = 0.0;
    var second = 0.0;
    var sign = "";
    var show = "";
    
    var who = false;

    @IBAction func clear(_ sender: Any) {
        lastTotal = 0;
        lasFirst = 0;
        lastSecond = 0;
        lastSign = "";
        
        total = 0.0;
        first = 0.0;
        second = 0.0;
        sign = "";
        show = "";
        
        
    }
    
    @IBAction func total(_ sender: Any) {
        
    }
    
    @IBAction func whatDoes(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 0:
            
        case 1:
            
        case 2:
            
        case 3:
            
        default:
            
        }
    }
    @IBAction func numClick(_ sender: Any) {
        if !who {
            
            first = findNumber(sender: sender as AnyObject)
            
            show.append(String(first));
            
        }else{
            second = findNumber(sender: sender as AnyObject)
            
            show.append(String(second));
        }
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
    
    func findNumber(sender:AnyObject) -> Double{
        
        switch sender.tag {
        case 0:
            return 0.0;
        case 1:
            return 1.0;
        case 2:
            return 2.0;
        case 3:
            return 3.0;
        case 4:
            return 4.0;
        case 5:
            return 5.0;
        case 6:
            return 6.0;
        case 7:
            return 7.0;
        case 8:
            return 8.0;
        case 9:
            return 9.0;
        default:
            return 0.0
        }
    }
    
    func setText(){
        
    }
}

