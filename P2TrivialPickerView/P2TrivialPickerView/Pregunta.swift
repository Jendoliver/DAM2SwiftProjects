//
//  Pregunta.swift
//  P2TrivialPickerView
//
//  Created by Jandol on 6/11/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class Pregunta: NSObject
{
    var enunciado = "";
    var respuestas = [Respuesta]();
    var esResuelta: Bool = false;
    
    init(enunciado: String) {
        self.enunciado = enunciado;
    }
    
    init(enunciado: String, respuestas: [Respuesta]) {
        self.enunciado = enunciado;
        self.respuestas = respuestas;
    }
    
    func addRespuesta(respuesta: Respuesta) {
        respuestas.append(respuesta);
    }
}
