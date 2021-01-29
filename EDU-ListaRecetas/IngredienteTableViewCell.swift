//
//  IngredienteTableViewCell.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit

class IngredienteTableViewCell: UITableViewCell {
    // Referencias
    @IBOutlet weak var txtNombreIngrediente: UILabel!
    @IBOutlet weak var txtCantidadIngrediente: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
