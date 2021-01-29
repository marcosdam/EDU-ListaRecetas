//
//  VerRecetaViewController.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit
// Implemetar métodos para la tabla
class VerRecetaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // Para la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receta!.ingredientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Pintar celdas
        let celda = tablaIngredientes.dequeueReusableCell(withIdentifier: "celda_ingrediente", for: indexPath) as! IngredienteTableViewCell
        // Dar valores
        celda.txtNombreIngrediente.text = receta!.ingredientes[indexPath.row].nombre
        celda.txtCantidadIngrediente.text = String(receta!.ingredientes[indexPath.row].cantidad)
        // Devolverla
        return celda
    }
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblTiempo: UILabel!
    
    @IBOutlet weak var tablaIngredientes: UITableView!
    
    //
    var receta: RecetaModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblNombre.text = receta!.nombre
        lblDescripcion.text = receta!.descripcion
        lblTiempo.text = String(receta!.tiempo)
    }
    
}
