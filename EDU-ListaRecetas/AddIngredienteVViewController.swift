//
//  AddIngredienteVViewController.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit

// Protocolo para devolver ingrediente a otras vistas
protocol DevolverIngredienteProtocol {
    func devolverIngrediente(ingrediente: IngredienteModel)
}

class AddIngredienteVViewController: UIViewController {
    @IBOutlet weak var txtNombreIngrediente: UITextField!
    @IBOutlet weak var txtCantidadIngrediente: UITextField!
    
    // Referencia (quien va a recibir la info)  Opcional porque no sé quien la recogerá
    var delegate: DevolverIngredienteProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // btnGuardar
    @IBAction func btnGuardarIngredienteClick(_ sender: Any) {
        // Crear ingrediente con los valores de la vista(TextFields)
        let ingrediente = IngredienteModel(nombre: txtNombreIngrediente.text!, cantidad: Int(txtCantidadIngrediente.text!)!)
        // Devolver ingrediente a AddReceta
        delegate?.devolverIngrediente(ingrediente: ingrediente)
    }
}
