//
//  AddRecetaViewController.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit
// Protocolo para devolver receta a otros controllers
protocol DevolverRecetaProtocol {
    func devolverReceta(receta: RecetaModel)
}

class AddRecetaViewController: UIViewController, DevolverIngredienteProtocol, UITableViewDelegate, UITableViewDataSource {
    
    // Implementación de protocolos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Devuelve tamaño array para después rellenar celdas
        return ingredientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Pintar elementos en base a la celda
        let celda = tablaIngredientes.dequeueReusableCell(withIdentifier: "celda_ingrediente", for: indexPath) as! IngredienteTableViewCell
        //
        celda.txtNombreIngrediente.text = ingredientes[indexPath.row].nombre
        celda.txtCantidadIngrediente.text = "\(ingredientes[indexPath.row].cantidad)"
        // Devolver la celda
        return celda
    }
    
    func devolverIngrediente(ingrediente: IngredienteModel) {
        // Coger el ingrediente que recibo e insertalo en el array
        ingredientes.append(ingrediente)
        // Refrescar tabla
        tablaIngredientes.reloadData()
        // Cerrar controller que está visible y volver a sí mismo
        navigationController?.popViewController(animated: true)
    }
    
    // TextFields
    @IBOutlet weak var txtNombreReceta: UITextField!
    @IBOutlet weak var txtDescripcionReceta: UITextField!
    @IBOutlet weak var txtTiempoReceta: UITextField!
    // Tabla
    @IBOutlet weak var tablaIngredientes: UITableView!
    
    // Datos a gestionar
    var ingredientes: [IngredienteModel] = []
    var delegado: DevolverRecetaProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Saber a qué controller voy (destino)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "add_ingrediente" {
            let destino = segue.destination as! AddIngredienteVViewController
            destino.delegate = self
        }
    }
    
    // btnGuardarReceta
    @IBAction func btnGuardarRecetaClick(_ sender: Any) {
        let receta = RecetaModel(nombre: txtNombreReceta.text!, descripcion: txtDescripcionReceta.text!, tiempo: Int(txtTiempoReceta.text!)!)
        // Añadir ingredientes[] a la receta
        receta.ingredientes.append(contentsOf: ingredientes)
        // Devolver receta mediante protocolo
        delegado?.devolverReceta(receta: receta)
        
    }
}
