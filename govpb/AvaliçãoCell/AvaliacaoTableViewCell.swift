//
//  AvaliacaoTableViewCell.swift
//  govpb
//
//  Created by Sthashy Vieira on 18/09/24.
//

import UIKit

class AvaliacaoTableViewCell: UITableViewCell {
    
    static var avali : String = String(describing: AvaliacaoTableViewCell.avali)
    
    static func Nib()-> UINib {
        
        return UINib(nibName: avali, bundle: nil)
        
    }
    
    @IBOutlet weak var viewImage: UIImageView!
    
    
    @IBOutlet weak var nameLabelPriv: UILabel!
    @IBAction func apppendButtonAva(_ sender: UIButton) {
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configSetAva(aval: Avali){
        
        viewImage.image = aval.image
        nameLabelPriv.text = aval.nameAva
    }
    
    
    
    
}
