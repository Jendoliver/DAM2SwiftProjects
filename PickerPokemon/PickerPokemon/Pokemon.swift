//
//  Pokemon.swift
//  PickerPokemon
//
//  Created by Jandol on 30/10/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class Pokemon: NSObject
{
    var name: String;
    var img: UIImage;
    
    override init() {
        self.name = "";
        img = UIImage();
    }
    
    init(name: String, imgName: String) {
        self.name = name;
        img = UIImage(named: imgName)!;
    }
}
