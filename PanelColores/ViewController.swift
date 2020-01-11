//
//  ViewController.swift
//  PanelColores
//
//  Created by Carlos Peiro Embid on 10/01/2020.
//  Copyright © 2020 Carlos Peiro Embid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // IBOulets
    @IBOutlet weak var vistaColor: UIView!
    @IBOutlet weak var botonRojo: UISwitch!
    @IBOutlet weak var botonVerde: UISwitch!
    @IBOutlet weak var botonAzul: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        actualizarColor()
        
    }

    // IBActions

    @IBAction func botonCambioColor(_ sender: UISwitch) {
        actualizarColor()
    }
    
    // Fuciones
    func actualizarColor() {
        var rojo:CGFloat = 0
        var verde:CGFloat = 0
        var azul:CGFloat = 0
        if botonRojo.isOn{
            rojo = 1
        }
        if botonVerde.isOn {
            verde = 1
        }
        if botonAzul.isOn {
            azul = 1
        }
        let color = UIColor(red: rojo, green: verde, blue: azul, alpha: 1.0)
        vistaColor.backgroundColor = color
    }
}

