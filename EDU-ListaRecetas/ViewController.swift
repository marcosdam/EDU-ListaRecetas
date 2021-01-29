//
//  ViewController.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit
// Inyectar Protocolo DevolverRecetaProtocol, y métodos para la tabla
class ViewController: UIViewController, DevolverRecetaProtocol, UITableViewDataSource, UITableViewDelegate {
    // Implementaciones de protocolos
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Devolver tamaño recetas[]
        return recetas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Pintar las celdas (celda_receta)
        let celda = tablaRecetas.dequeueReusableCell(withIdentifier: "celda_receta", for: indexPath) as! RecetaTableViewCell
        // Dar valores de los labels a la celda
        celda.lblNombreReceta.text = recetas[indexPath.row].nombre
        celda.lblCantidadIngredientes.text = String(recetas[indexPath.row].ingredientes.count)
        // Devolver celda
        return celda
    }
    
    
    func devolverReceta(receta: RecetaModel) {
        recetas.append(receta)
        tablaRecetas.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    // Outlets
    @IBOutlet weak var tablaRecetas: UITableView!
    // Datos
    var recetas: [RecetaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // Saber donde voy (destino)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "add_receta" {
            let destino = segue.destination as! AddRecetaViewController
            destino.delegado = self
        }
        
        if segue.identifier == "ver_receta" {
            let destino = segue.destination as! VerRecetaViewController
            destino.receta = recetas[tablaRecetas.indexPathForSelectedRow!.row]
        }
    }
}

