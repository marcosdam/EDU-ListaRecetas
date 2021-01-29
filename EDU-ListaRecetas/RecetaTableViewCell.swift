//
//  RecetaTableViewCell.swift
//  EDU-ListaRecetas
//
//  Created by Marcos Ledesma on 29/01/2021.
//  Copyright © 2021 Marcos Ledesma. All rights reserved.
//

import UIKit

class RecetaTableViewCell: UITableViewCell {
    // Referencias a la vista
    @IBOutlet weak var lblNombreReceta: UILabel!
    @IBOutlet weak var lblCantidadIngredientes: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
