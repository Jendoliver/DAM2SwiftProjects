//
//  ViewController.swift
//  Practica1-RandomNums
//
//  Created by Jandol on 2/10/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    
    @IBAction func touchBtn(_ sender: Any)
    {
        
    }
    
    
    override func viewDidLoad() // Init
    {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rand(x : Int, y : Int) -> Int
    {
        if(y > x) {
            return Int(arc4random_uniform(UInt32(y)+1)) - x
        }
        return Int(arc4random_uniform(UInt32(x)+1)) - y
    }
}

