//
//  ViewController.swift
//  DoublePickerView
//
//  Created by Jandol on 3/11/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var labelResult: UILabel!
    
    var names = ["Pepe", "Sol", "Coche", "Porro", "Tete"];
    var adjectives = ["Gordo", "Bestia", "Feo", "Impresionante", "Fuerte", "Discapacitado"];
    
    var selectedName : String = "Pepe";
    var selectedAdjective : String = "Gordo";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self;
        picker.delegate = self;
        labelResult.text = "El " + selectedName + " es " + selectedAdjective;
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { // CAMBIO EN TIEMPO REAL
        if component == 0 {
            selectedName = names[row];
        } else {
            selectedAdjective = adjectives[row];
        }
        labelResult.text = "El " + selectedName + " es " + selectedAdjective;
    }
    
    // Metodos override de picker //
    // String que se va a mostrar, para cada componente, en cada row (inicializacion)
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return names[row];
        } else {
            return adjectives[row];
        }
    }
    
    // Numero de componentes del pickerView (podria estar formado por mas de un scroller)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2;
    }
    
    // Numero de items que se van a mostrar en cada rueda del pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return names.count;
        } else {
            return adjectives.count;
        }
    }
}

