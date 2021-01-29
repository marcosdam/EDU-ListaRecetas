//
//  RecetaModel.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit

class RecetaModel: NSObject {
    //
    var nombre: String
    var descripcion: String
    var tiempo: Int
    // Cada vez que se cree una receta se instancia el array de ingredientes
    var ingredientes: [IngredienteModel] = []
    
    // constructor
    init(nombre: String, descripcion: String, tiempo: Int){
        self.nombre = nombre
        self.descripcion = descripcion
        self.tiempo = tiempo
        //self.ingredientes = []
    }
}
