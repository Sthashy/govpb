//
//  AvaliçãoTableViewCell.swift
//  govpb
//
//  Created by Sthashy Vieira on 18/09/24.
//

import UIKit

class Avalic_a_oTableViewCell: UITableViewCell {

    
    static var avalia : String = String(describing: Avalic_a_oTableViewCell.self)
    static func Nib()->UINib{
        return UINib(nibName: avalia, bundle: nil)
    }
    
    @IBOutlet weak var imageAvaliacao: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var appendButtonAvalia: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

   
    
    func configSetAvalia(ava:Avaliacao){
        
        imageAvaliacao.image = ava.image
        nameLabel.text = ava.name
        
    }
    
}
