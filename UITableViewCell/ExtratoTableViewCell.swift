//
//  ExtratoTableViewCell.swift
//  ItauDesafio
//
//  Created by Luiz Felipe Clemente Claro on 01/02/23.
//

import UIKit

class ExtratoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lancamentoLabel: UILabel!
    
    static let identifier:String = "ExtratoTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
    
 
    }

    func setupCell(title:String){
        lancamentoLabel.text = title
    }
    

}
