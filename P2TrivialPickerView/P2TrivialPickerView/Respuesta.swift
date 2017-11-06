//
//  Respuesta.swift
//  P2TrivialPickerView
//
//  Created by Jandol on 6/11/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class Respuesta: NSObject
{
    var texto = "";
    var esCorrecta: Bool;
    
    init(texto: String, esCorrecta: Bool) {
        self.texto = texto;
        self.esCorrecta = esCorrecta;
    }
}
