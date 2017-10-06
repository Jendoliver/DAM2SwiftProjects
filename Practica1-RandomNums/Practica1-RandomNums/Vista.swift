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
    
    @IBOutlet weak var labelTime: UILabel!
    
    @IBAction func touchBtn(_ sender: UIButton!)
    {
        if(Int(sender.currentTitle!) == numbers[correctButtonIndex]) {
            sender.isHidden = true;
            correctButtonIndex += 1;
        }
        if(correctButtonIndex == 5) {
            
        }
    }
    
    var buttons : [UIButton] = [];
    var numbers : [Int] = [];
    var correctButtonIndex : Int = 0;
    
    override func viewDidLoad() // Init
    {
        buttons = [btn1, btn2, btn3, btn4, btn5, btn6];
        super.viewDidLoad()
        generateNumbers()
        numbers.sort();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateNumbers() {
        if( !numbers.isEmpty) {
            numbers.removeAll();
        }
        for i in 0...5 {
            numbers.append(Int(arc4random_uniform(201)) - 100);
            buttons[i].setTitle(String(numbers[i]), for: .normal);
        }
    }
}

