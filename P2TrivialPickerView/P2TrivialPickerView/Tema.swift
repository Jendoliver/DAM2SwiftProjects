//
//  Tema.swift
//  P2TrivialPickerView
//
//  Created by Jandol on 6/11/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class Tema: NSObject
{
    var nombre = "";
    var preguntas = [Pregunta]();

    init(nombre: String) {
        self.nombre = nombre;
    }
    
    init(nombre: String, preguntas: [Pregunta]) {
        self.nombre = nombre;
        self.preguntas = preguntas;
    }
    
    func addPregunta(pregunta: Pregunta) {
        preguntas.append(pregunta);
    }
}
