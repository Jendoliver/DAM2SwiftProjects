//
//  ViewController.swift
//  HelloWorld
//
//  Created by Raiksih on 22/9/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var textInput: UITextField!
    
    @IBAction func cambiarTexto(_ sender: Any) {
        // Cambiar el HelloTete
        texto.text = "Kes ke cet brot??";
        
    }
    @IBAction func sayMyName(_ sender: Any) {
        // Cambiar el HelloTete por lo ke pone en nosbre
        if(textInput.text == "") {
            texto.text = "Pon tu nombre, cateto"
        } else {
            texto.text = textInput.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // texto.text = "Kes ke cet brot??"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
