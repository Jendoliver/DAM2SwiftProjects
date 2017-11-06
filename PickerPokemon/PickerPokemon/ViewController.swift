//
//  ViewController.swift
//  PickerPokemon
//
//  Created by Jandol on 30/10/17.
//  Copyright © 2017 apporelbotna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var imgPokemon: UIImageView!
    
    var pokemonCollection = [Pokemon]();
    var selectedPokemon = Pokemon();

    @IBAction func btnShow(_ sender: UIButton) {
        imgPokemon.image = pokemonCollection[picker.selectedRow(inComponent: 0)].img
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self;
        picker.delegate = self;
        initialisePokemon();
    }
    
    func initialisePokemon() {
        var pokemon = Pokemon(name: "Tyranitar", imgName: "tyranitar.png")
        pokemonCollection.append(pokemon)
        pokemon = Pokemon(name: "Alakazam", imgName: "alakazam.png")
        pokemonCollection.append(pokemon)
        pokemon = Pokemon(name: "Chorizord", imgName: "charizard.jpg")
        pokemonCollection.append(pokemon)
        pokemon = Pokemon(name: "Bulbasaur", imgName: "bulbasaur.gif")
        pokemonCollection.append(pokemon)
        pokemon = Pokemon(name: "Pikachu", imgName: "pikachu.png")
        pokemonCollection.append(pokemon)
        
    }
    
    // Metodos override de picker
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) { // CAMBIO EN TIEMPO REAL
        selectedPokemon = pokemonCollection[row]
        imgPokemon.image = selectedPokemon.img;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pokemonCollection[row].name;
    }
    
    // Numero de componentes del pickerView (podria estar formado por mas de un scroller)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    // Numero de items que se van a mostrar en cada rueda del pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pokemonCollection.count;
    }


}

