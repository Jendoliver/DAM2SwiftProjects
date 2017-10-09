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
    @IBOutlet weak var btnPlayAgain: UIButton!
    
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelLevel: UILabel!
    @IBOutlet weak var labelPoints: UILabel!
    @IBOutlet weak var labelMain: UILabel!
    
    @IBAction func touchBtn(_ sender: UIButton!)
    {
        if(Int(sender.currentTitle!) == numbers[correctButtonIndex]) {
            sender.isHidden = true;
            sender.isEnabled = false;
            correctButtonIndex += 1;
            points += 1;
            labelPoints.text = String(points)
        } else { // Colleja for missing
            time -= 1;
            labelTime.text = String(time);
        }
        if(time <= 0) {
            loseCondition();
        }
        if(correctButtonIndex == numbers.count) {
            timer.invalidate();
            if(level < 9) {
                level += 1;
            }
            generateLevel();
        }
    }
    @IBAction func playAgainBtn(_ sender: UIButton)
    {
        level = 0;
        points = 0;
        labelPoints.text = String(points);
        btnPlayAgain.isHidden = true;
        btnPlayAgain.isEnabled = false;
        labelMain.text = "Sort the numbers fam!";
        generateLevel();
    }
    
    var buttons : [UIButton] = []; // Buttons array
    var numbers : [Int] = []; // Numbers array
    var correctButtonIndex : Int = 0; // The array index of the next correct button
    var timer = Timer();
    var time : Int = 30; // time display value
    var level : Int = 0; // current level
    var points : Int = 0; // player points
    
    override func viewDidLoad() // Init
    {
        buttons = [btn1, btn2, btn3, btn4, btn5, btn6];
        super.viewDidLoad();
        generateLevel();
    }
    
    func generateLevel()
    {
        if( !numbers.isEmpty) {
            numbers.removeAll();
        }
        for i in 0...(buttons.count - 1) {
            numbers.append(Int(arc4random_uniform(201)) - 100);
            buttons[i].setTitle(String(numbers[i]), for: .normal);
            buttons[i].isEnabled = true;
            buttons[i].isHidden = false;
        }
        numbers.sort();
        time = 30 - 3 * level;
        labelTime.text = String(time);
        labelLevel.text = String(level+1);
        correctButtonIndex = 0;
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tick), userInfo: nil, repeats: true);
    }
    
    func loseCondition()
    {
        timer.invalidate();
        for i in 0...(buttons.count - 1) {
            buttons[i].isEnabled = false;
            buttons[i].isHidden = true;
        }
        labelMain.text = "Game Over!";
        btnPlayAgain.isHidden = false;
        btnPlayAgain.isEnabled = true;
    }
    
    func tick()
    {
        time -= 1;
        if(time <= 0) {
            loseCondition();
        }
        labelTime.text = String(time);
    }
}

