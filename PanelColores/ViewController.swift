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
    @IBOutlet weak var sliderRojo: UISlider!
    @IBOutlet weak var sliderVerde: UISlider!
    @IBOutlet weak var sliderAzul: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        actualizarColor()
        
    }

    // IBActions

    @IBAction func botonCambioColor(_ sender: UISwitch) {
        actualizarColor()
    }
    
    @IBAction func cambioSlider(_ sender: UISlider) {
        actualizarColor()
    }
    
    @IBAction func resetearColores(_ sender: UIButton) {
        sliderRojo.value = 1
        sliderVerde.value = 1
        sliderAzul.value = 1
        
        actualizarColor()
    }
    
    // Funciones
    func actualizarColor() {
        var rojo:CGFloat = 0
        var verde:CGFloat = 0
        var azul:CGFloat = 0
        if botonRojo.isOn{
            rojo = CGFloat(sliderRojo.value)
        }
        if botonVerde.isOn {
            verde = CGFloat(sliderVerde.value)
        }
        if botonAzul.isOn {
            azul = CGFloat(sliderAzul.value)
        }
        let color = UIColor(red: rojo, green: verde, blue: azul, alpha: 1.0)
        vistaColor.backgroundColor = color
    }
    
}

