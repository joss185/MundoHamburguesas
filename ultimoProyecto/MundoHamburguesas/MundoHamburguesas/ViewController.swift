//
//  ViewController.swift
//  MundoHamburguesas
//
//  Created by Joselyn Rodriguez on 28/1/16.
//  Copyright © 2016 Joselyn Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hamburguesaL: UILabel!
    @IBOutlet weak var paisL: UILabel!
    @IBOutlet weak var precioL: UILabel!
    let cHamburguesas = ColeccionDeHamburguesa()
    let cPaises = ColeccionDePaises()
    let cPrecios = PrecioHamburguesa()
    let colores = Colores()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func seleccionarHarburguesa() {
        hamburguesaL.text = cHamburguesas.obtenHamburguesa()
        paisL.text =  "País: " + cPaises.obtenPais()
        precioL.text = "Precio: " + String(cPrecios.obtenPrecio())
        let colorAleatorio = colores.regresaColor()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }


}

