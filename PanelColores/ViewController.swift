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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        vistaColor.backgroundColor = .black
        
    }

    // IBActions
        // cambio de boton
    @IBAction func cambioBoton(_ sender: UISwitch) {
        vistaColor.backgroundColor = UIColor.red
    }
    
    

}

