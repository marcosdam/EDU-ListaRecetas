//
//  IngredienteModel.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit

class IngredienteModel: NSObject {
    //
    var nombre: String
    var cantidad: Int
    
    // constructor
    init(nombre: String, cantidad: Int){
        self.nombre = nombre
        self.cantidad = cantidad
    }
}
